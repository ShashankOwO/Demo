import io
from typing import Iterator

import pdfplumber
from fastapi import HTTPException, UploadFile, status

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
MAX_FILE_SIZE_BYTES = 5 * 1024 * 1024  # 5 MB

SKILL_KEYWORDS: list[str] = [
    "Python",
    "Java",
    "SQL",
    "System Design",
    "Machine Learning",
    "Communication",
    "Problem Solving",
]

# 1-2 questions per skill — order matters: first two are used when the cap allows
QUESTION_BANK: dict[str, list[dict]] = {
    "Python": [
        {"question": "Explain your experience with Python and the projects you have built using it.", "category": "Python"},
        {"question": "What Python libraries or frameworks have you worked with, and why did you choose them?", "category": "Python"},
    ],
    "Java": [
        {"question": "Describe a Java project you worked on and the design patterns you applied.", "category": "Java"},
        {"question": "How do you manage memory and performance in a Java application?", "category": "Java"},
    ],
    "SQL": [
        {"question": "Can you walk me through how you would optimise a slow SQL query?", "category": "SQL"},
        {"question": "Explain the difference between INNER JOIN, LEFT JOIN, and RIGHT JOIN with examples.", "category": "SQL"},
    ],
    "System Design": [
        {"question": "How would you design a scalable REST API to serve millions of users?", "category": "System Design"},
        {"question": "Describe the trade-offs between SQL and NoSQL databases in a large-scale system.", "category": "System Design"},
    ],
    "Machine Learning": [
        {"question": "Walk me through how you would approach building and validating an ML model.", "category": "Machine Learning"},
        {"question": "How do you handle imbalanced datasets in a classification problem?", "category": "Machine Learning"},
    ],
    "Communication": [
        {"question": "Describe a time you had to explain a complex technical concept to a non-technical stakeholder.", "category": "Communication"},
        {"question": "How do you ensure all team members stay aligned during a project?", "category": "Communication"},
    ],
    "Problem Solving": [
        {"question": "Tell me about a difficult problem you solved and the approach you took.", "category": "Problem Solving"},
        {"question": "How do you prioritise tasks when multiple critical issues arise at the same time?", "category": "Problem Solving"},
    ],
}

MAX_QUESTIONS = 10


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _validate_file(file: UploadFile, raw: bytes) -> None:
    if not file.filename or not file.filename.lower().endswith(".pdf"):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Only PDF files are accepted.",
        )
    if len(raw) > MAX_FILE_SIZE_BYTES:
        raise HTTPException(
            status_code=status.HTTP_413_REQUEST_ENTITY_TOO_LARGE,
            detail="File exceeds the 5 MB size limit.",
        )


def _extract_text(raw: bytes) -> str:
    try:
        with pdfplumber.open(io.BytesIO(raw)) as pdf:
            pages = [page.extract_text() or "" for page in pdf.pages]
        return "\n".join(pages)
    except Exception as exc:
        raise HTTPException(
            status_code=status.HTTP_422_UNPROCESSABLE_ENTITY,
            detail=f"Could not parse PDF: {exc}",
        )


def _extract_skills(text: str) -> list[str]:
    lower_text = text.lower()
    seen: set[str] = set()
    skills: list[str] = []
    for skill in SKILL_KEYWORDS:
        if skill.lower() in lower_text and skill not in seen:
            seen.add(skill)
            skills.append(skill)
    return skills


def _generate_questions(skills: list[str]) -> list[dict]:
    questions: list[dict] = []
    for skill in skills:
        for q in QUESTION_BANK.get(skill, []):
            if len(questions) >= MAX_QUESTIONS:
                return questions
            questions.append(q)
    return questions


# ---------------------------------------------------------------------------
# Public service function
# ---------------------------------------------------------------------------

async def process_resume(file: UploadFile) -> dict:
    """
    Validate, extract text from a PDF resume, detect skills, and generate
    structured interview questions.
    """
    raw: bytes = await file.read()
    _validate_file(file, raw)

    text = _extract_text(raw)
    skills = _extract_skills(text)
    questions = _generate_questions(skills)

    return {
        "extracted_skills": skills,
        "questions": questions,
    }
