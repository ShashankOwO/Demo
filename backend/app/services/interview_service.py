from app.database import db
from app.models.interview import Interview, QuestionAnswer, Skill

_MAX_SCORE = 100
_POINTS_PER_ANSWER = 10
_LONG_ANSWER_THRESHOLD = 50


def _calculate_score(responses: list) -> int:
    """Award 10 points per answer that is longer than 50 characters, capped at 100."""
    raw = sum(
        _POINTS_PER_ANSWER
        for r in responses
        if len(r.get('answer', '').strip()) > _LONG_ANSWER_THRESHOLD
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

def create_interview(interview_data: dict) -> Interview:
    """
    Score the interview, determine feedback level, persist the interview,
    all question-answer pairs, and auto-extracted skill/category records.
    """
    responses = interview_data.get('responses', [])
    score = _calculate_score(responses)
    level = _feedback_level(score)

    # Extract unique categories → saved as Skill records
    unique_categories = list({r.get('category', '').strip() for r in responses if r.get('category', '').strip()})
    summary = _build_summary(score, level, unique_categories)

    # Persist Interview
    interview = Interview(
        feedback_level=level,
        score=score,
        summary=summary,
    )
    db.session.add(interview)
    db.session.flush()  # get interview.id without committing

    # Persist QuestionAnswer rows
    for r in responses:
        db.session.add(QuestionAnswer(
            interview_id=interview.id,
            question=r.get('question'),
            answer=r.get('answer'),
            category=r.get('category'),
        ))

    # Persist Skill rows (one per unique category)
    for cat in unique_categories:
        db.session.add(Skill(interview_id=interview.id, skill_name=cat))

    db.session.commit()
    db.session.refresh(interview)
    return interview


def get_all_interviews() -> list[Interview]:
    return db.session.query(Interview).order_by(Interview.created_at.desc()).all()


def get_interview_by_id(interview_id: int) -> Interview | None:
    return db.session.query(Interview).filter(Interview.id == interview_id).first()
