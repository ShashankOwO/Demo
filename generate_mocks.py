from app.main import create_app
from app.database import db
from app.models.interview import Interview, Skill
from datetime import datetime, timedelta, timezone

app = create_app()

with app.app_context():
    user_id = 1
    print("Generating mock interviews...")
    
    existing_mocks = db.session.query(Interview).filter_by(feedback_level="Mock", user_id=user_id).all()
    for m in existing_mocks:
        db.session.delete(m)
    db.session.commit()
    
    base_time = datetime.now(timezone.utc) - timedelta(days=20)
    
    for i in range(12):
        score = 80 if i < 7 else 60
        interview = Interview(
            user_id=user_id,
            feedback_level="Mock",
            score=score,
            total_questions=2,
            summary=f"Mock interview {i}",
            created_at=base_time + timedelta(days=i)
        )
        db.session.add(interview)
        db.session.flush()

        db.session.add(Skill(
            interview_id=interview.id,
            skill_name="Python",
            category_score=score,
            total_questions_per_category=1
        ))
        db.session.add(Skill(
            interview_id=interview.id,
            skill_name="System Design",
            category_score=score + 5,
            total_questions_per_category=1
        ))

    db.session.commit()
    print("Mocks generated.")
    
    from app.services.analytics_service import get_category_performance_data
    print("\n--- Analytics Data ---")
    data = get_category_performance_data(user_id)
    print("Analytics output:")
    for k, v in data.items():
        print(f"  {k}: {v}")
