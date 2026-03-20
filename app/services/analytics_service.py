from app.database import db
from app.models.interview import Interview, Skill
from sqlalchemy.orm import selectinload
from collections import Counter


def aggregate_categories(interviews: list[Interview]) -> dict[str, int]:
    """
    Computes weighted average of category scores based on the total questions per category
    in a given list of interviews.
    """
    category_scores = {}
    category_counts = {}
    
    for interview in interviews:
        for skill in interview.skills:
            cat = skill.skill_name
            # If total_questions_per_category is 0 or None, default to 1 for backwards compat.
            count = skill.total_questions_per_category or 1 
            
            # category_score might be null in old data
            score = skill.category_score or 0
            
            category_scores[cat] = category_scores.get(cat, 0) + (score * count)
            category_counts[cat] = category_counts.get(cat, 0) + count
            
    weighted_averages = {}
    for cat, total_score in category_scores.items():
        if category_counts[cat] > 0:
            weighted_averages[cat] = int(total_score / category_counts[cat])
            
    return weighted_averages


def compute_trend(current_avg: float, previous_avg: float) -> float | None:
    if previous_avg == 0:
        return 0.0  # Avoid division by zero
    return ((current_avg - previous_avg) / previous_avg) * 100.0


def get_category_performance_data(user_id: int):
    # Fetch last 10 interviews with their skills loaded to avoid N+1 queries
    interviews = (
        db.session.query(Interview)
        .filter(Interview.user_id == user_id)
        .order_by(Interview.created_at.desc())
        .options(selectinload(Interview.skills))
        .limit(10)
        .all()
    )
    
    if len(interviews) < 1:
        return {
            "category_averages": {},
            "weakest_category": None,
            "strongest_category": None,
            "trend": None
        }
        
    current = interviews[:5]
    previous = interviews[5:10]
    
    current_data = aggregate_categories(current)
    
    weakest_category = min(current_data, key=current_data.get) if current_data else None
    strongest_category = max(current_data, key=current_data.get) if current_data else None
    
    trend = None
    if len(interviews) >= 10:
        current_avg = sum(i.score for i in current) / len(current) if current else 0
        previous_avg = sum(i.score for i in previous) / len(previous) if previous else 0
        trend_val = compute_trend(current_avg, previous_avg)
        if trend_val is not None:
            trend = round(trend_val, 2)
            
    return {
        "category_averages": current_data,
        "weakest_category": weakest_category,
        "strongest_category": strongest_category,
        "trend": trend
    }

def analyze_role_history(user_id: int) -> dict:
    """
    Fetches the last 10 interviews, counts role_applied_for frequency,
    and determines a consistency score based on the number of unique roles.
    """
    interviews = (
        db.session.query(Interview.role_applied_for)
        .filter(Interview.user_id == user_id)
        .filter(Interview.role_applied_for.isnot(None))
        .filter(Interview.role_applied_for != "")
        .order_by(Interview.created_at.desc())
        .limit(10)
        .all()
    )
    
    if not interviews:
        return {
            "most_practiced_role": None,
            "consistency_score": 0
        }
        
    roles = [i.role_applied_for for i in interviews]
    role_counts = Counter(roles)
    
    most_practiced_role = role_counts.most_common(1)[0][0]
    unique_roles = len(role_counts)
    
    if unique_roles == 1:
        consistency_score = 100
    elif unique_roles == 2:
        consistency_score = 80
    elif unique_roles == 3:
        consistency_score = 50
    else:
        # > 3 roles
        consistency_score = max(0, 50 - ((unique_roles - 3) * 15))
        
    return {
        "most_practiced_role": most_practiced_role,
        "consistency_score": consistency_score
    }
