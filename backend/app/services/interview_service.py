from sqlalchemy.orm import Session

from app.models.interview import Interview, QuestionAnswer, Skill
from app.schemas.interview import InterviewCreate

_MAX_SCORE = 100
_POINTS_PER_ANSWER = 10
_LONG_ANSWER_THRESHOLD = 50


def _calculate_score(responses: list) -> int:
    """Award 10 points per answer that is longer than 50 characters, capped at 100."""
    raw = sum(
        _POINTS_PER_ANSWER
        for r in responses
        if len(r.answer.strip()) > _LONG_ANSWER_THRESHOLD
    )
    return min(raw, _MAX_SCORE)


def _feedback_level(score: int) -> str:
    if score >= 80:
        return "Good"
    elif score >= 50:
        return "Average"
    return "Needs Improvement"


def _build_summary(score: int, level: str, categories: list[str]) -> str:
    cats = ", ".join(categories) if categories else "general topics"
    return (
        f"Interview completed. Score: {score}/100 — {level}. "
        f"Topics covered: {cats}."
    )


# ---------------------------------------------------------------------------
# Public service functions
# ---------------------------------------------------------------------------

def create_interview(db: Session, interview_data: InterviewCreate) -> Interview:
    """
    Score the interview, determine feedback level, persist the interview,
    all question-answer pairs, and auto-extracted skill/category records.
    """
    responses = interview_data.responses
    score = _calculate_score(responses)
    level = _feedback_level(score)

    # Extract unique categories → saved as Skill records
    unique_categories = list({r.category.strip() for r in responses if r.category.strip()})
    summary = _build_summary(score, level, unique_categories)

    # Persist Interview
    interview = Interview(
        feedback_level=level,
        score=score,
        summary=summary,
    )
    db.add(interview)
    db.flush()  # get interview.id without committing

    # Persist QuestionAnswer rows
    for r in responses:
        db.add(QuestionAnswer(
            interview_id=interview.id,
            question=r.question,
            answer=r.answer,
            category=r.category,
        ))

    # Persist Skill rows (one per unique category)
    for cat in unique_categories:
        db.add(Skill(interview_id=interview.id, skill_name=cat))

    db.commit()
    db.refresh(interview)
    return interview


def get_all_interviews(db: Session) -> list[Interview]:
    return db.query(Interview).order_by(Interview.created_at.desc()).all()


def get_interview_by_id(db: Session, interview_id: int) -> Interview | None:
    return db.query(Interview).filter(Interview.id == interview_id).first()
