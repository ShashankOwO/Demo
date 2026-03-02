import json
from collections import defaultdict
from app.database import db
from app.models.interview import Interview, QuestionAnswer, Skill
from app.services import ai_service


def _feedback_level(score: int) -> str:
    if score >= 85:
        return "Excellent"
    elif score >= 70:
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

def create_interview(interview_data: dict, user_id: int) -> Interview:
    """
    Score the interview using ai_service, determine feedback level, persist the interview,
    all question-answer pairs with granular AI feedback, and aggregated category scores.
    """
    responses = interview_data.get('responses', [])
    
    # Store AI evaluations per response
    evaluated_responses = []
    category_score_sums = defaultdict(int)
    category_counts = defaultdict(int)

    for r in responses:
        question = r.get('question', '')
        answer = r.get('answer', '')
        category = r.get('category', '').strip()

        # Call AI evaluation
        ai_eval = ai_service.evaluate_answer(question, answer, category)
        
        evaluated_responses.append({
            'question': question,
            'answer': answer,
            'category': category,
            'ai_eval': ai_eval
        })

        if category:
            category_score_sums[category] += ai_eval['score']
            category_counts[category] += 1

    # Aggregate category scores
    category_scores = {}
    for cat, total in category_score_sums.items():
        category_scores[cat] = int(total / category_counts[cat])

    # Overall score is the average of category averages, or 0 if empty
    overall_score = 0
    if category_scores:
        overall_score = int(sum(category_scores.values()) / len(category_scores))

    level = _feedback_level(overall_score)
    unique_categories = list(category_scores.keys())
    summary = _build_summary(overall_score, level, unique_categories)

    # Persist Interview
    interview = Interview(
        user_id=user_id,
        feedback_level=level,
        score=overall_score,
        summary=summary,
        total_questions=len(evaluated_responses)
    )
    db.session.add(interview)
    db.session.flush()  # get interview.id without committing

    # Persist QuestionAnswer rows with structured AI Feedback
    for r in evaluated_responses:
        db.session.add(QuestionAnswer(
            interview_id=interview.id,
            question=r['question'],
            answer=r['answer'],
            category=r['category'],
            score=r['ai_eval']['score'],
            strengths=json.dumps(r['ai_eval']['strengths']),
            improvements=json.dumps(r['ai_eval']['improvements'])
        ))

    # Persist Skill rows (one per unique category with aggregated score)
    for cat, c_score in category_scores.items():
        db.session.add(Skill(
            interview_id=interview.id, 
            skill_name=cat,
            category_score=c_score,
            total_questions_per_category=category_counts[cat]
        ))

    db.session.commit()
    db.session.refresh(interview)
    return interview


def get_all_interviews(user_id: int) -> list[Interview]:
    return db.session.query(Interview).filter(Interview.user_id == user_id).order_by(Interview.created_at.desc()).all()


def get_interview_by_id(interview_id: int, user_id: int) -> Interview | None:
    return db.session.query(Interview).filter(Interview.id == interview_id, Interview.user_id == user_id).first()
