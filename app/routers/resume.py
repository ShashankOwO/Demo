from flask import Blueprint, request, jsonify

from app.schemas.resume import ResumeAnalysisOutSchema, GenerateQuestionsRequestSchema, GenerateQuestionsResponseSchema
from app.services import resume_service
from app.core.security import get_current_user

bp = Blueprint('resume', __name__)
resume_analysis_schema = ResumeAnalysisOutSchema()
gen_questions_req_schema = GenerateQuestionsRequestSchema()
gen_questions_res_schema = GenerateQuestionsResponseSchema()

@bp.route("/upload", methods=["POST"])
def upload_resume():
    """
    Upload a PDF resume. The service will:
    - Validate file type and size (max 5 MB)
    - Extract text with pdfplumber
    - Match skills against a categorised keyword database (regex, no AI)
    - Generate up to 10 interview questions from technical skills only
    
    Returns a structured ResumeAnalysisOut response.
    """
    if 'file' not in request.files:
        return jsonify({"detail": "No file part"}), 400
    
    file = request.files['file']
    if file.filename == '':
        return jsonify({"detail": "No selected file"}), 400
        
    current_user = get_current_user()
    result = resume_service.process_resume(file, current_user.id)
    
    # ── Canonical 3-key normalization ──────────────────────────────────────────
    # Android's loadSavedSkills() specifically reads:
    #   'soft_skills'      → Soft Skills chip group
    #   'tools_frameworks' → Tools & Frameworks chip group
    #   anything else      → Technical Skills chip group  ← THE BUG SOURCE
    #
    # We must consolidate ALL backend sub-keys into exactly 3 buckets:
    #   TECH  ('languages')       : languages, database, ai, architecture
    #   TOOLS ('tools_frameworks'): web, backend, frontend, mobile, devops, testing
    #   SOFT  ('soft_skills')     : extracted soft skills

    TECH_CATS  = {"languages", "database", "ai", "architecture"}
    TOOLS_CATS = {"web", "backend", "frontend", "mobile", "devops", "testing"}

    tech_raw = result.get("technical_skills", {})
    tech_merged: list = []
    tools_merged: list = []
    seen: set = set()

    for cat, skills in tech_raw.items():
        if not isinstance(skills, list):
            continue
        if cat in TECH_CATS:
            for s in skills:
                if s.lower() not in seen:
                    seen.add(s.lower())
                    tech_merged.append(s)
        elif cat in TOOLS_CATS:
            for s in skills:
                if s.lower() not in seen:
                    seen.add(s.lower())
                    tools_merged.append(s)

    # Also merge the pre-computed tools_frameworks list (avoids duplicates via seen set)
    for s in result.get("tools_frameworks", []):
        if s.lower() not in seen:
            seen.add(s.lower())
            tools_merged.append(s)

    soft_merged = []
    soft_seen = set()
    for s in result.get("soft_skills", []):
        if s.lower() not in soft_seen:
            soft_seen.add(s.lower())
            soft_merged.append(s)

    # ── MERGE AI FALLBACK SKILLS ──────────────────────────────────────────────
    ai_fallback = result.get("ai_classified_skills") or {}
    for s in ai_fallback.get("technical_skills", []):
        if s.lower() not in seen:
            seen.add(s.lower())
            tech_merged.append(s)
    for s in ai_fallback.get("tools_frameworks", []):
        if s.lower() not in seen:
            seen.add(s.lower())
            tools_merged.append(s)
    for s in ai_fallback.get("soft_skills", []):
        if s.lower() not in soft_seen:
            soft_seen.add(s.lower())
            soft_merged.append(s)

    normalized_skills: dict = {}
    if tech_merged:
        normalized_skills["languages"] = tech_merged
    if tools_merged:
        normalized_skills["tools_frameworks"] = tools_merged
    if soft_merged:
        normalized_skills["soft_skills"] = soft_merged

    # Save to profile with canonical 3-key structure
    from app.services import user_profile_service
    user_profile_service.update_user_profile(
        user_id=current_user.id,
        skills=normalized_skills,
        target_role=result.get("inferred_target_role"),
        experience_years=result.get("detected_experience_years"),
        experience_level=result.get("experience_level")
    )
    
    return jsonify(resume_analysis_schema.dump(result))

@bp.route("/generate-questions", methods=["POST"])
def generate_questions():
    """
    Generate interview questions based ONLY on user-selected preferences.
    """
    json_data = request.get_json()
    if not json_data:
        return jsonify({"detail": "No input data provided"}), 400
        
    errors = gen_questions_req_schema.validate(json_data)
    if errors:
        return jsonify(errors), 422
        
    current_user = get_current_user()
    req_data = gen_questions_req_schema.load(json_data)
    
    # ── Canonical 3-key normalization (same as upload endpoint) ──────────────────
    # bucket_skills() returns 12+ sub-category keys + 'misc' for unknowns.
    # Android's loadSavedSkills() treats every key that is NOT 'soft_skills'
    # or 'tools_frameworks' as Technical Skills — so 'misc' or any extra category
    # that contains soft-skill strings ends up in the wrong bucket.
    # We MUST collapse everything into exactly 3 keys before persisting.
    TECH_CATS  = {"languages", "database", "ai", "architecture"}
    TOOLS_CATS = {"web", "backend", "frontend", "mobile", "devops", "testing"}

    tech_skills_only = [s for s in req_data["skills"] if s not in req_data.get("soft_skills", [])]
    categorised_skills = resume_service.bucket_skills(tech_skills_only)

    seen_norm: set = set()
    tech_merged: list = []
    tools_merged: list = []

    for cat, skills in categorised_skills.items():
        if not isinstance(skills, list):
            continue
        if cat in TECH_CATS:
            for s in skills:
                if s.lower() not in seen_norm:
                    seen_norm.add(s.lower())
                    tech_merged.append(s)
        elif cat in TOOLS_CATS:
            for s in skills:
                if s.lower() not in seen_norm:
                    seen_norm.add(s.lower())
                    tools_merged.append(s)
        elif cat == "misc":
            # misc = unrecognised terms that could be niche tech; put in tech bucket
            for s in skills:
                if s.lower() not in seen_norm:
                    seen_norm.add(s.lower())
                    tech_merged.append(s)
        # (ignore empty sub-categories)

    # Explicit tools_frameworks from payload overrides bucketing
    for s in req_data.get("tools_frameworks", []):
        if s.lower() not in seen_norm:
            seen_norm.add(s.lower())
            tools_merged.append(s)

    normalized_profile_skills: dict = {}
    if tech_merged:
        normalized_profile_skills["languages"]       = tech_merged
    if tools_merged:
        normalized_profile_skills["tools_frameworks"] = tools_merged
    soft_from_payload = req_data.get("soft_skills", [])
    if soft_from_payload:
        normalized_profile_skills["soft_skills"]     = soft_from_payload

    exp_years = req_data.get("experience_years")
    if exp_years is not None:
        exp_level = "Beginner" if exp_years < 2 else ("Intermediate" if exp_years < 5 else "Expert")
    else:
        exp_level = None

    difficulty = req_data.get("difficulty", "beginner")  # default beginner for sync
    from app.services import user_profile_service
    user_profile_service.update_user_profile(
        user_id=current_user.id,
        skills=normalized_profile_skills,
        target_role=req_data.get("target_role"),
        experience_years=exp_years,
        experience_level=exp_level,
        preferred_difficulty=difficulty
    )
    
    questions = resume_service.generate_questions_from_preferences(
        skills=req_data["skills"],
        role=req_data.get("target_role"),
        experience=req_data.get("experience_years", 0),
        difficulty=req_data.get("difficulty", "intermediate"),
        user_id=current_user.id
    )
    
    return jsonify(gen_questions_res_schema.dump({"generated_questions": questions}))

@bp.route("/generate-single-question", methods=["POST"])
def generate_single_question():
    """
    Generate a single replacement interview question.
    """
    json_data = request.get_json()
    if not json_data:
        return jsonify({"detail": "No input data provided"}), 400
        
    current_q = json_data.get("current_question")
    skills = json_data.get("skills", [])
    
    if not current_q or not skills:
        return jsonify({"detail": "current_question and skills are required"}), 400
        
    current_user = get_current_user()
    
    q = resume_service.generate_single_question_replacement(
        current_question=current_q,
        skills=skills,
        role=json_data.get("target_role", "Software Engineer"),
        experience=json_data.get("experience_years", 0),
        difficulty=json_data.get("difficulty", "intermediate")
    )
    
    return jsonify(q), 200
