"""
resume_service.py — Section-Aware Resume Parser
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Strategy
--------
* No AI / NLP / external APIs.
* Dynamic section detection via synonym map + flexible header regex.
* Fallback heuristics when no header is found.
* Regex word-boundary skill matching (pre-compiled at module load).
* Experience parsing: "N years" pattern + date-range year difference.
* Questions from tech categories only, capped at MAX_QUESTIONS.
"""

from __future__ import annotations

import io
import re
from typing import Optional

import pdfplumber
from werkzeug.exceptions import BadRequest, RequestEntityTooLarge, UnprocessableEntity

# ---------------------------------------------------------------------------
from app.core.logger import get_logger
from app.services import analytics_service
from app.services import llm_service

logger = get_logger(__name__)

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
MAX_FILE_SIZE_BYTES = 5 * 1024 * 1024  # 5 MB
MAX_QUESTIONS       = 10

# ---------------------------------------------------------------------------
# Section Synonym Map
# ---------------------------------------------------------------------------
SECTION_SYNONYMS: dict[str, list[str]] = {
    "skills": [
        "skills",
        "skills & strengths",
        "skills and strengths",
        "core competencies",
        "technical skills",
        "technical expertise",
        "professional skills",
        "technical summary",
        "key skills",
        "areas of expertise",
        "competencies",
    ],
    "experience": [
        "experience",
        "work experience",
        "professional experience",
        "employment history",
        "career history",
        "work history",
    ],
    "projects": [
        "projects",
        "academic projects",
        "personal projects",
        "key projects",
        "project experience",
    ],
    "education": [
        "education",
        "academic background",
        "qualifications",
        "academic qualifications",
    ],
}

# Pre-build a reverse lookup:  normalised_synonym -> canonical_section_name
_SYNONYM_TO_SECTION: dict[str, str] = {}
for _section, _synonyms in SECTION_SYNONYMS.items():
    for _syn in _synonyms:
        _SYNONYM_TO_SECTION[_syn.lower().strip()] = _section

# ---------------------------------------------------------------------------
# Categorised Technical Skills Knowledge Base
# ---------------------------------------------------------------------------
TECH_SKILLS_DB: dict[str, list[str]] = {
    "languages": [
        "Python", "Java", "Kotlin", "C++", "C#", "C",
        "Go", "Rust", "Swift", "PHP", "Ruby",
        "JavaScript", "TypeScript",
    ],
    "web": [
        "HTML", "CSS", "Tailwind", "Bootstrap",
    ],
    "backend": [
        "Django", "Flask", "FastAPI", "Spring Boot",
        "Express", "Node.js", "Laravel", "ASP.NET",
    ],
    "frontend": [
        "React", "Angular", "Vue", "Next.js",
    ],
    "mobile": [
        "Android", "Jetpack Compose", "Retrofit",
        "Flutter", "React Native",
    ],
    "database": [
        "MySQL", "PostgreSQL", "MongoDB", "SQLite",
        "Firebase", "Redis",
    ],
    "devops": [
        "AWS", "Azure", "GCP", "Docker", "Kubernetes",
        "CI/CD", "GitHub Actions",
    ],
    "ai": [
        "Machine Learning", "Deep Learning",
        "TensorFlow", "PyTorch",
        "Pandas", "NumPy", "Scikit-learn",
    ],
    "architecture": [
        "System Design", "Microservices",
        "REST API", "GraphQL",
    ],
    "testing": [
        "JUnit", "Mockito", "Selenium", "Cypress",
    ],
    "misc": []
}

SOFT_SKILLS_DB: list[str] = [
    "Communication", "Leadership", "Teamwork",
    "Problem Solving", "Critical Thinking", "Adaptability",
    "Time Management", "Creativity", "Collaboration",
    "Attention to Detail",
]

QUESTION_ELIGIBLE_CATEGORIES = {
    "languages", "backend", "frontend", "database", "architecture",
}

# ---------------------------------------------------------------------------
# Question Bank
# ---------------------------------------------------------------------------
QUESTION_BANK: dict[str, list[str]] = {
    "Python":      ["Explain your experience with Python and describe the projects you built with it.",
                    "Which Python frameworks or libraries have you used, and what were your reasons for choosing them?"],
    "Java":        ["Describe a Java project you worked on and the design patterns you applied.",
                    "How do you manage memory and performance in a Java application?"],
    "Kotlin":      ["What advantages does Kotlin offer over Java for Android development?",
                    "Describe how you use Kotlin coroutines for asynchronous programming."],
    "C++":         ["Explain memory management in C++ and how you avoid common pitfalls.",
                    "How do you handle multi-threading safely in C++?"],
    "C#":          ["Describe your experience with the .NET ecosystem using C#.",
                    "How do you apply SOLID principles in a C# project?"],
    "C":           ["Explain pointer arithmetic and how it differs from higher-level languages.",
                    "How do you manage dynamic memory allocation in C?"],
    "Go":          ["What makes Go well-suited for concurrent systems?",
                    "Describe a service you built using Go and the challenges you faced."],
    "Rust":        ["Explain Rust's ownership model and how it prevents memory errors.",
                    "When would you choose Rust over C++ for a systems project?"],
    "Swift":       ["How does Swift's optional system improve safety compared to Objective-C?",
                    "Describe your experience building an iOS application with Swift."],
    "PHP":         ["How do you structure a scalable PHP application?",
                    "Explain how you secure a PHP application against SQL injection and XSS."],
    "Ruby":        ["What makes Ruby on Rails productive for web development?",
                    "How do you test a Ruby application effectively?"],
    "JavaScript":  ["Explain the event loop and how asynchronous JavaScript works.",
                    "How do you manage state in a large JavaScript application?"],
    "TypeScript":  ["How does TypeScript's type system improve large codebase maintainability?",
                    "Describe a scenario where strict TypeScript types caught a runtime bug early."],
    "Django":      ["How would you design a REST API using Django REST Framework?",
                    "How does Django's ORM differ from raw SQL queries?"],
    "Flask":       ["Describe the architecture of a Flask application you built.",
                    "How do you handle authentication and authorisation in Flask?"],
    "FastAPI":     ["How does FastAPI's dependency injection system work?",
                    "Why would you choose FastAPI over Flask for a new project?"],
    "Spring Boot": ["Explain how Spring Boot auto-configuration works.",
                    "How do you secure a Spring Boot REST API?"],
    "Express":     ["How do you structure middleware in an Express application?",
                    "Describe how you handle errors globally in Express."],
    "Node.js":     ["How does Node.js handle concurrency without multiple threads?",
                    "When should you use Node.js over a multi-threaded server?"],
    "Laravel":     ["Describe the request lifecycle in a Laravel application.",
                    "How do you use Eloquent ORM to handle complex relationships?"],
    "ASP.NET":     ["How does ASP.NET Core's middleware pipeline work?",
                    "Explain how dependency injection is configured in ASP.NET Core."],
    "React":       ["Explain the virtual DOM and how React's reconciliation works.",
                    "How do you manage global state in a React application?"],
    "Angular":     ["Describe Angular's component lifecycle hooks and when you use them.",
                    "How does Angular's dependency injection differ from other frameworks?"],
    "Vue":         ["How does Vue's reactivity system work?",
                    "Describe how you would structure a large-scale Vue application."],
    "Next.js":     ["Explain the difference between SSR and SSG in Next.js.",
                    "How does Next.js improve SEO for a React application?"],
    "MySQL":       ["Can you walk me through optimising a slow MySQL query?",
                    "Explain the difference between INNER JOIN, LEFT JOIN, and RIGHT JOIN."],
    "PostgreSQL":  ["What PostgreSQL-specific features have you used and why?",
                    "How do you handle database migrations in a production PostgreSQL system?"],
    "MongoDB":     ["When would you choose MongoDB over a relational database?",
                    "How do you model relationships in MongoDB?"],
    "SQLite":      ["What are the limitations of SQLite for production systems?",
                    "How did you use SQLite in a mobile or embedded project?"],
    "Firebase":    ["Describe how you have used Firestore for real-time data synchronisation.",
                    "How do you handle Firebase security rules effectively?"],
    "Redis":       ["What use cases make Redis the right choice over a relational DB?",
                    "How would you use Redis for session management or caching?"],
    "System Design":  ["How would you design a scalable REST API to serve millions of users?",
                       "Describe the trade-offs between SQL and NoSQL databases at scale."],
    "Microservices":  ["How do microservices communicate with each other reliably?",
                       "What challenges have you faced managing distributed data in microservices?"],
    "REST API":       ["What principles make a REST API truly RESTful?",
                       "How do you version and document a public REST API?"],
    "GraphQL":        ["What problems does GraphQL solve that REST cannot?",
                       "How do you prevent over-fetching and under-fetching in a GraphQL schema?"],
}

# ---------------------------------------------------------------------------
# Pre-compiled skill patterns (module-level — compiled once)
# ---------------------------------------------------------------------------

def _compile_pattern(keyword: str) -> re.Pattern:
    """
    Whole-word, case-insensitive match using lookarounds instead of \\b
    so multi-token and symbol-containing skills (Node.js, CI/CD, C++) work.
    """
    escaped = re.escape(keyword.lower())
    pattern = r"(?<![a-z0-9_])" + escaped + r"(?![a-z0-9_])"
    return re.compile(pattern, re.IGNORECASE)


_TECH_PATTERNS: dict[str, dict[str, re.Pattern]] = {
    category: {skill: _compile_pattern(skill) for skill in skills}
    for category, skills in TECH_SKILLS_DB.items()
}

_SOFT_PATTERNS: dict[str, re.Pattern] = {
    skill: _compile_pattern(skill) for skill in SOFT_SKILLS_DB
}

# Pre-compile header detection pattern:
# Matches a line that is only a section title (with optional trailing colon/whitespace).
# Groups: (1) = the header text stripped of trailing colon.
_HEADER_RE = re.compile(r"^\s*([\w][\w\s&,/*-]{0,60}?)\s*:?\s*$")

# ---------------------------------------------------------------------------
# Role Inference Constants
# ---------------------------------------------------------------------------
ROLE_KEYWORDS = {
    "Backend Engineer": ["backend", "api", "django", "spring", "fastapi"],
    "Frontend Engineer": ["react", "angular", "vue", "frontend"],
    "Full Stack Developer": ["frontend", "backend"],
    "Data Scientist": ["machine learning", "data analysis", "pandas", "deep learning"],
    "Mobile Developer": ["android", "kotlin", "swift", "flutter", "react native"],
    "DevOps Engineer": ["aws", "azure", "docker", "kubernetes", "ci/cd", "devops"]
}

ROLE_PRIORITIES = {
    "Backend Engineer": ["backend", "database", "languages", "architecture", "frontend"],
    "Frontend Engineer": ["frontend", "languages", "backend", "architecture"],
    "Full Stack Developer": ["backend", "frontend", "languages", "database", "architecture"],
    "Data Scientist": ["ai", "languages", "database", "architecture"],
    "Mobile Developer": ["mobile", "languages", "architecture", "backend"],
    "DevOps Engineer": ["devops", "architecture", "languages", "database"]
}

# ---------------------------------------------------------------------------
# ❶  Dynamic Section Detection
# ---------------------------------------------------------------------------

def detect_sections_dynamic(text: str) -> dict[str, str]:
    """
    Split *text* into labelled sections using flexible, synonym-aware header
    detection.

    Returns
    -------
    dict  with keys from SECTION_SYNONYMS (e.g. "skills", "experience")
          mapping to the raw text of that section.
          Unrecognised body text is stored under key "_body".
    """
    lines   = text.splitlines()
    n_lines = len(lines)

    # Pass 1 — find (line_index, canonical_section) pairs
    header_positions: list[tuple[int, str]] = []

    for idx, raw_line in enumerate(lines):
        stripped = raw_line.strip()

        # A header line is short, not empty, and matches a synonym exactly
        # after removing trailing colon and collapsing internal whitespace.
        if not stripped or len(stripped) > 80:
            continue

        normalised = re.sub(r"\s+", " ", stripped.rstrip(":").strip()).lower()
        section = _SYNONYM_TO_SECTION.get(normalised)
        if section:
            header_positions.append((idx, section))

    # Pass 2 — slice text between consecutive headers
    sections: dict[str, list[str]] = {}

    if not header_positions:
        # No headers found — return entire text as "_body"
        sections["_body"] = lines
        return {"_body": "\n".join(lines)}

    # Prepend a virtual "_body" section covering everything before the first header
    all_bounds: list[tuple[int, str]] = [(-1, "_body")] + header_positions + [(n_lines, "_end")]

    result: dict[str, str] = {}
    for i in range(len(all_bounds) - 1):
        start_idx, label  = all_bounds[i]
        end_idx,   _      = all_bounds[i + 1]
        section_lines     = lines[start_idx + 1 : end_idx]
        content           = "\n".join(section_lines).strip()
        if content:
            # Last occurrence wins if same section appears twice
            result[label] = result.get(label, "") + "\n" + content

    return result


# ---------------------------------------------------------------------------
# ❷  Fallback Heuristic — skills section without a recognised header
# ---------------------------------------------------------------------------

_SKILLS_TRIGGER_WORDS = re.compile(
    r"\b(programming|languages?|software|tools?|technologies|frameworks?|libraries?)\b",
    re.IGNORECASE,
)


def _extract_skills_section_fallback(lines: list[str]) -> str:
    """
    Scan lines for trigger words commonly found near inline skill lists
    (e.g. "Programming Languages: Java, Python").
    Collect that line plus the next FALLBACK_WINDOW lines.
    Returns joined text or empty string.
    """
    FALLBACK_WINDOW = 15
    collected: list[str] = []
    seen_indices: set[int] = set()

    for idx, line in enumerate(lines):
        if _SKILLS_TRIGGER_WORDS.search(line):
            for offset in range(FALLBACK_WINDOW):
                target = idx + offset
                if target < len(lines) and target not in seen_indices:
                    seen_indices.add(target)
                    collected.append(lines[target])

    return "\n".join(collected)


# ---------------------------------------------------------------------------
# ❸  Skill Matching
# ---------------------------------------------------------------------------

def _match_skills_in_text(text: str) -> dict[str, list[str]]:
    """Match tech skills against *text*. Returns categorised dict."""
    result: dict[str, list[str]] = {}
    for category, patterns in _TECH_PATTERNS.items():
        matched: list[str] = []
        seen: set[str] = set()
        for skill, pattern in patterns.items():
            key = skill.lower()
            if key not in seen and pattern.search(text):
                seen.add(key)
                matched.append(skill)
        result[category] = matched
    return result


def _match_soft_skills(text: str) -> list[str]:
    found: list[str] = []
    seen: set[str] = set()
    for skill, pattern in _SOFT_PATTERNS.items():
        key = skill.lower()
        if key not in seen and pattern.search(text):
            seen.add(key)
            found.append(skill)
    return found


# ---------------------------------------------------------------------------
# ❹  Experience Detection (N-years pattern + date-range heuristic)
# ---------------------------------------------------------------------------

# "3 years", "5+ years experience"
_YEARS_EXPLICIT_RE = re.compile(r"(\d+)\s*\+?\s*years?", re.IGNORECASE)

# Full date range examples:
#   2019 – 2022      Jan 2020 - Present     May 2008 – Sept 2008
_DATE_RANGE_RE = re.compile(
    r"(?:Jan(?:uary)?|Feb(?:ruary)?|Mar(?:ch)?|Apr(?:il)?|May|Jun(?:e)?|"
    r"Jul(?:y)?|Aug(?:ust)?|Sep(?:t(?:ember)?)?|Oct(?:ober)?|"
    r"Nov(?:ember)?|Dec(?:ember)?)?\s*"
    r"(\d{4})\s*[-–—]\s*"
    r"(?:(?:Jan(?:uary)?|Feb(?:ruary)?|Mar(?:ch)?|Apr(?:il)?|May|Jun(?:e)?|"
    r"Jul(?:y)?|Aug(?:ust)?|Sep(?:t(?:ember)?)?|Oct(?:ober)?|"
    r"Nov(?:ember)?|Dec(?:ember)?)?\s*"
    r"(\d{4})|Present|Current|Now|Till\s*date)",
    re.IGNORECASE,
)


def _detect_experience_years(text: str) -> Optional[int]:
    """
    Returns best-estimate integer years of experience, or None if unknown.

    Priority
    --------
    1. Explicit "N years" / "N+ years" statement → take maximum, cap at 30.
    2. Date-range scan: earliest year → latest year (or current year if
       "Present" is used).  Differences < 0 or > 50 are discarded.
    3. None — caller should treat as unknown / 0.
    """
    import datetime
    current_year = datetime.date.today().year

    # ── Priority 1: explicit statement ───────────────────────────────────────
    explicit_matches = _YEARS_EXPLICIT_RE.findall(text)
    if explicit_matches:
        years = min(max(int(m) for m in explicit_matches), 30)
        return years

    # ── Priority 2: date ranges  ─────────────────────────────────────────────
    years_found: list[int] = []
    for m in _DATE_RANGE_RE.finditer(text):
        start_year_str = m.group(1)
        end_year_str   = m.group(2)  # None if group matched "Present/Current"
        try:
            start_year = int(start_year_str)
            end_year   = int(end_year_str) if end_year_str else current_year
            if 1970 <= start_year <= current_year and 1970 <= end_year <= current_year:
                years_found.extend([start_year, end_year])
        except (TypeError, ValueError):
            continue

    if len(years_found) >= 2:
        span = max(years_found) - min(years_found)
        if 0 < span <= 50:
            return span

    return None


# ---------------------------------------------------------------------------
# ❺  Question Generation
# ---------------------------------------------------------------------------

def _generate_questions(tech_skills: dict[str, list[str]], applied_role: Optional[str] = None, weakest_category: Optional[str] = None, experience: int = 0) -> list[dict]:
    # ── Try Gemini AI first ──
    flat_skills = [s for cat, cat_skills in tech_skills.items() if cat != "misc" for s in cat_skills]
    if flat_skills:
        ai_questions = llm_service.generate_questions(
            skills=flat_skills,
            role=applied_role or "Software Engineer",
            experience=experience,
            count=MAX_QUESTIONS,
            weakest_category=weakest_category
        )
        if ai_questions and len(ai_questions) > 0:
            return ai_questions

    # ── Fallback to Static Question Bank ──
    questions: list[dict] = []
    
    # Adaptive Weighting: Pre-allocate extra questions for weakest category
    adaptive_quota = 0
    if weakest_category and weakest_category.lower() in [k.lower() for k in QUESTION_ELIGIBLE_CATEGORIES]:
        # +30% weight out of MAX_QUESTIONS -> 3 extra questions allocated to weakest cat
        adaptive_quota = int(MAX_QUESTIONS * 0.3) 
    
    # Find exact casing of weakest category
    weakest_cat_exact = None
    if adaptive_quota > 0:
        for cat in tech_skills.keys():
            if cat.lower() == weakest_category.lower() and tech_skills[cat]:
                weakest_cat_exact = cat
                break

    # Prioritise based on role if known, else fallback to standard eligible
    base_categories = list(QUESTION_ELIGIBLE_CATEGORIES)
    if applied_role and applied_role in ROLE_PRIORITIES:
        priority_orders = ROLE_PRIORITIES[applied_role]
        ordered_cats = []
        for p in priority_orders:
            if p in base_categories:
                ordered_cats.append(p)
                base_categories.remove(p)
        categories_to_query = ordered_cats + base_categories
    else:
        categories_to_query = base_categories
        
    # Build a lowercase mapping for the QUESTION_BANK for fallback lookups
    lowercase_q_bank = {k.lower(): v for k, v in QUESTION_BANK.items()}
    
    # Phase 1: Allocate adaptive weakest category questions first
    if weakest_cat_exact:
        for skill in tech_skills.get(weakest_cat_exact, []):
            skill_lower = skill.lower()
            q_list = lowercase_q_bank.get(skill_lower, [])
            # Fallback to general generic if not found
            if not q_list:
                q_list = [
                    f"Describe your experience with {skill} in a production environment.",
                    f"What are the most challenging aspects of working with {skill}?"
                ]
            for q_text in q_list:
                if adaptive_quota == 0:
                    break
                # Only add if we haven't maxed out overall
                if len(questions) >= MAX_QUESTIONS:
                    return questions
                questions.append({"question": q_text, "category": skill})
                adaptive_quota -= 1

    # Phase 2: Distribute remaining questions across all categories
    for category in categories_to_query:
        for skill in tech_skills.get(category, []):
            skill_lower = skill.lower()
            q_list = lowercase_q_bank.get(skill_lower, [])
            # Dynamic generic generation if missing from static bank
            if not q_list:
                q_list = [
                    f"Can you walk me through a complex problem you solved using {skill}?",
                    f"How do you stay updated with the latest developments in {skill}?"
                ]
            for q_text in q_list:
                # We skip adding duplicates if the adaptive logic already grabbed this exact question
                if any(q["question"] == q_text for q in questions):
                    continue
                    
                if len(questions) >= MAX_QUESTIONS:
                    return questions
                questions.append({"question": q_text, "category": skill})
                
    # Phase 3: If we still don't have enough questions and we have custom/unknown skills
    # because they didn't match the eligible categories, iterate over ALL skills
    if len(questions) < MAX_QUESTIONS:
        all_skills = [s for cat, cat_skills in tech_skills.items() if cat != "misc" for s in cat_skills]
        # Just grab random questions for them
        for skill in all_skills:
            if len(questions) >= MAX_QUESTIONS:
                break
            # Skip if we already have 2+ questions for this skill
            existing_count = sum(1 for q in questions if q["category"] == skill)
            if existing_count >= 2:
                continue
                
            skill_lower = skill.lower()
            q_list = lowercase_q_bank.get(skill_lower, [
                f"How would you explain the core concepts of {skill} to a junior engineer?",
                f"Describe a time you had to optimize performance related to {skill}."
            ])
            
            for q_text in q_list:
                if len(questions) >= MAX_QUESTIONS:
                    break
                if not any(q["question"] == q_text for q in questions):
                    questions.append({"question": q_text, "category": skill})
                    
    return questions

# ---------------------------------------------------------------------------
# ❻  Role Extraction
# ---------------------------------------------------------------------------

def _extract_roles(full_text: str, technical_skills: dict[str, list[str]]) -> tuple[Optional[str], Optional[str]]:
    """
    Scans the top 30% for explicit target titles, and the whole resume for inference.
    Returns (previous_role, inferred_target_role).
    """
    lines = full_text.splitlines()
    search_cutoff = max(int(len(lines) * 0.3), 10)
    top_text = "\n".join(lines[:search_cutoff]).lower()
    
    previous_role = None
    inferred_target_role = None
    
    # Direct keyword sweep for explicit mapping
    for role, _ in ROLE_KEYWORDS.items():
        if role.lower() in top_text:
            previous_role = role
            break
            
    # Inference by skill density matching
    if not previous_role:
        best_score = 0
        all_skill_strings = [s.lower() for cats in technical_skills.values() for s in cats]
        for role, keywords in ROLE_KEYWORDS.items():
            score = sum(1 for kw in keywords if kw.lower() in all_skill_strings or kw.lower() in full_text.lower())
            if score > best_score:
                best_score = score
                inferred_target_role = role
                
    return previous_role, inferred_target_role

# ---------------------------------------------------------------------------
# ❼  File Validation & PDF Extraction
# ---------------------------------------------------------------------------

def _validate_file(file, raw: bytes) -> None:
    if not file.filename or not file.filename.lower().endswith(".pdf"):
        raise BadRequest(
            description="Only PDF files are accepted."
        )
    if len(raw) > MAX_FILE_SIZE_BYTES:
        raise RequestEntityTooLarge(
            description="File exceeds the 5 MB size limit."
        )


def _extract_text(raw: bytes) -> str:
    try:
        with pdfplumber.open(io.BytesIO(raw)) as pdf:
            pages = [page.extract_text() or "" for page in pdf.pages]
        return "\n".join(pages)
    except Exception as exc:
        raise UnprocessableEntity(
            description=f"Could not parse PDF: {exc}"
        )


# ---------------------------------------------------------------------------
# ❽  Public Service Function
# ---------------------------------------------------------------------------

def process_resume(file, user_id: int) -> dict:
    """
    Full pipeline:
      validate → extract text → detect sections → match skills → generate questions.
    Returns a dict matching ResumeAnalysisOut (schemas/resume.py).
    """
    raw: bytes = file.read()
    _validate_file(file, raw)

    full_text = _extract_text(raw)
    lines     = full_text.splitlines()

    # ── Step 1: Dynamic section detection ────────────────────────────────────
    sections = detect_sections_dynamic(full_text)
    logger.info(f"[ResumeParser] Detected sections: {list(sections.keys())}")

    # ── Step 2: Resolve the best text corpus for skill matching ──────────────
    #
    # Priority:
    #   a) Dedicated skills section found          → use it exclusively
    #   b) No skills section + experience/projects → fallback trigger-word scan
    #   c) Nothing found at all                    → scan entire resume

    skills_section_text: str = sections.get("skills", "")
    logger.info(f"[ResumeParser] Skills section length: {len(skills_section_text)} chars")

    if not skills_section_text.strip():
        # Fallback heuristic — look for inline skill indicators
        skills_section_text = _extract_skills_section_fallback(lines)
        if skills_section_text.strip():
            logger.info("[ResumeParser] Skills section obtained via fallback heuristic.")
        else:
            # Last resort — scan entire document
            skills_section_text = full_text
            logger.info("[ResumeParser] No skills section detected — scanning entire document.")

    # ── Step 3: Experience section corpus for experience heuristic ───────────
    experience_section_text = sections.get("experience", full_text)
    logger.info(f"[ResumeParser] Experience section length: {len(experience_section_text)} chars")

    # ── Step 4: Match skills ─────────────────────────────────────────────────
    tech_skills = _match_skills_in_text(skills_section_text)
    soft_skills = _match_soft_skills(skills_section_text)

    # Also pick up soft skills mentioned outside the skills section
    soft_skills_body = _match_soft_skills(full_text)
    all_soft: list[str] = list(dict.fromkeys(soft_skills + soft_skills_body))

    # ── Step 5: Experience detection ─────────────────────────────────────────
    # Try experience section first; fall back to full text if needed.
    experience = _detect_experience_years(experience_section_text)
    if experience is None:
        experience = _detect_experience_years(full_text)
    experience = experience or 0   # coerce None → 0

    # ── Step 6: Question generation + Role Extraction ────────────────────────
    
    # Build structured technical_skills dict first
    technical_skills = {
        "languages":    tech_skills.get("languages",    []),
        "backend":      tech_skills.get("backend",      []),
        "frontend":     tech_skills.get("frontend",     []),
        "mobile":       tech_skills.get("mobile",       []),
        "database":     tech_skills.get("database",     []),
        "devops":       tech_skills.get("devops",       []),
        "ai":           tech_skills.get("ai",           []),
        "architecture": tech_skills.get("architecture", []),
        "testing":      tech_skills.get("testing",      []),
    }
    
    previous_role, inferred_target_role = _extract_roles(full_text, technical_skills)
    fallback_role = previous_role or inferred_target_role
    
    analytics_data = analytics_service.get_category_performance_data(user_id)
    weakest_category = analytics_data.get("weakest_category")
    
    questions = _generate_questions(tech_skills, applied_role=fallback_role, weakest_category=weakest_category, experience=experience)

    # ── Step 7: tools_frameworks (web + devops + testing, flat, deduped) ─────
    tools_set: list[str] = []
    seen_tools: set[str] = set()
    for cat in ("web", "devops", "testing"):
        for skill in tech_skills.get(cat, []):
            if skill.lower() not in seen_tools:
                seen_tools.add(skill.lower())
                tools_set.append(skill)

    logger.info(f"[ResumeParser] Tech skills found: "
          f"{ {k: len(v) for k, v in technical_skills.items() if v} }")
    logger.info(f"[ResumeParser] Soft skills found: {all_soft}")
    logger.info(f"[ResumeParser] Experience years : {experience}")
    logger.info(f"[ResumeParser] Questions generated: {len(questions)}")

    return {
        "technical_skills":          technical_skills,
        "tools_frameworks":          tools_set,
        "soft_skills":               all_soft,
        "detected_experience_years": experience,
        "previous_role":             previous_role,
        "inferred_target_role":      inferred_target_role,
        "generated_questions":       questions,
    }


def bucket_skills(skills: list[str]) -> dict[str, list[str]]:
    """
    Buckets a flat list of skills into technical categories matching the DB format.
    """
    technical_skills: dict[str, list[str]] = {cat: [] for cat in TECH_SKILLS_DB.keys()}
    
    for skill in skills:
        found_cat = None
        for cat, kw_list in TECH_SKILLS_DB.items():
            if any(s.lower() == skill.lower() for s in kw_list):
                found_cat = cat
                break
        
        # If it's a known technical skill, put it in the right category
        if found_cat:
            technical_skills[found_cat].append(skill)
        else:
            # If completely unknown, stick it in "misc" loosely 
            technical_skills["misc"].append(skill)
            
    return technical_skills

def generate_questions_from_preferences(
    skills: list[str],
    role: Optional[str] = None,
    experience: int = 0,
    user_id: Optional[int] = None
) -> list[dict]:
    """
    Generates interview questions based ONLY on the explicit skills list provided by the user.
    Bypasses standard section extraction.
    """
    if not skills:
        return []

    # Map the flat list of skills into the category format expected by the DB logic
    technical_skills = bucket_skills(skills)
            
    # Try getting the analytics weakest category for adaptive generation
    weakest_category = None
    if user_id is not None:
        try:
            analytics_data = analytics_service.get_category_performance_data(user_id)
            weakest_category = analytics_data.get("weakest_category")
        except Exception as e:
            logger.warning(f"[generate_questions_from_preferences] failed to get analytics: {e}")

    # Pass the synthesised skills dict into the standard question generator
    # We guarantee these are the ONLY skills passed in.
    return _generate_questions(
        tech_skills=technical_skills,
        applied_role=role,
        weakest_category=weakest_category,
        experience=experience
    )
