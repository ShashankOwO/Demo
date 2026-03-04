from flask import Blueprint, jsonify
from app.services import analytics_service
from app.core.security import get_current_user
from app.database import db
from app.models.interview import Interview
from sqlalchemy.orm import selectinload

bp = Blueprint('analytics', __name__)


@bp.route("/category-performance", methods=["GET"])
def get_category_performance():
    current_user = get_current_user()
    data = analytics_service.get_category_performance_data(current_user.id)
    return jsonify(data)


@bp.route("/role-consistency", methods=["GET"])
def get_role_consistency():
    current_user = get_current_user()
    data = analytics_service.analyze_role_history(current_user.id)
    return jsonify(data)


@bp.route("/summary", methods=["GET"])
def get_summary():
    """Return avg, highest, lowest score and trend percentage for the current user."""
    current_user = get_current_user()
    interviews = (
        db.session.query(Interview)
        .filter(Interview.user_id == current_user.id)
        .order_by(Interview.created_at.desc())
        .all()
    )
    if not interviews:
        return jsonify({
            "average_score": 0,
            "highest_score": 0,
            "lowest_score": 0,
            "trend_percentage": 0.0,
            "total_sessions": 0
        })

    scores = [i.score for i in interviews]
    avg = sum(scores) / len(scores)

    # Trend: compare avg of last 5 vs previous 5
    recent = scores[:5]
    older = scores[5:10]
    if older:
        trend = ((sum(recent) / len(recent)) - (sum(older) / len(older))) / (sum(older) / len(older)) * 100
    else:
        trend = 0.0

    return jsonify({
        "average_score": round(avg, 1),
        "highest_score": max(scores),
        "lowest_score": min(scores),
        "trend_percentage": round(trend, 2),
        "total_sessions": len(interviews)
    })


@bp.route("/last-five", methods=["GET"])
def get_last_five():
    """Return the last 5 completed interviews with score and date."""
    current_user = get_current_user()
    interviews = (
        db.session.query(Interview)
        .filter(Interview.user_id == current_user.id)
        .order_by(Interview.created_at.desc())
        .limit(5)
        .all()
    )
    result = [
        {
            "id": i.id,
            "score": i.score,
            "created_at": i.created_at.strftime("%Y-%m-%dT%H:%M:%S") if i.created_at else None
        }
        for i in interviews
    ]
    return jsonify(result)


@bp.route("/skills-practiced", methods=["GET"])
def get_skills_practiced():
    """Return per-category session count across all interviews."""
    current_user = get_current_user()
    interviews = (
        db.session.query(Interview)
        .filter(Interview.user_id == current_user.id)
        .options(selectinload(Interview.skills))
        .all()
    )
    category_counts: dict[str, int] = {}
    for interview in interviews:
        seen = set()
        for skill in interview.skills:
            cat = skill.skill_name
            if cat not in seen:
                category_counts[cat] = category_counts.get(cat, 0) + 1
                seen.add(cat)

    result = [{"category": cat, "session_count": count}
              for cat, count in sorted(category_counts.items(), key=lambda x: -x[1])]
    return jsonify(result)
