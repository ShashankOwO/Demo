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
    
    # Save the extracted skills and roles to the user's profile
    from app.services import user_profile_service
    user_profile_service.update_user_profile(
        user_id=current_user.id,
        skills=result.get("technical_skills", {}),
        previous_role=result.get("previous_role"),
        target_role=result.get("inferred_target_role")
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
    
    # Bucket the flat list of skills to save into the UserProfile as categorised data
    categorised_skills = resume_service.bucket_skills(req_data["skills"])
    from app.services import user_profile_service
    user_profile_service.update_user_profile(
        user_id=current_user.id,
        skills=categorised_skills,
        previous_role=None, # Keep previous role intact or let standard upload handle it
        target_role=req_data.get("target_role")
    )
    
    questions = resume_service.generate_questions_from_preferences(
        skills=req_data["skills"],
        role=req_data.get("target_role"),
        experience=req_data.get("experience_years", 0),
        user_id=current_user.id
    )
    
    return jsonify(gen_questions_res_schema.dump({"generated_questions": questions}))
