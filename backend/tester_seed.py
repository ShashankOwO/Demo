import datetime
import random
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from app.models.user import User
from app.models.interview import Interview, QuestionAnswer, Skill
from app.models.user_profile import UserProfile
from app.core.security import get_password_hash

def seed_tester():
    # Bypass Flask config latency and connect to XAMPP MariaDB directly
    engine = create_engine("mysql+mysqldb://root:@127.0.0.1:3307/resume2interview")
    
    with Session(engine) as session:
        # 1. Create User
        email = "tester@gmail.com"
        user = session.query(User).filter_by(email=email).first()
        if user:
            print(f"User {email} already exists. Deleting to reset...")
            session.delete(user) # Cascades to all related data
            session.commit()

        print("Creating tester user...")
        user = User(
            email=email,
            hashed_password=get_password_hash("tester123")
        )
        session.add(user)
        session.commit()

        print("Creating UserProfile with parsed resume...")
        profile = UserProfile(
            user_id=user.id,
            full_name="Tester Account",
            target_role="Senior Android Developer",
            job_title="Mid-Senior Android Engineer",
            skills_json='["Kotlin", "Android SDK", "Java", "System Design", "UI/UX"]',
            bio="Experienced engineer in Kotlin, Java, and Systems Design...",
        )
        session.add(profile)
        session.commit()

        # 3. Add 5 Mock Interviews spread over the last month
        print("Generating mock interviews and analytics...")
        categories = ["Kotlin", "Android SDK", "Java", "System Design", "UI/UX"]
        
        now = datetime.datetime.now(datetime.timezone.utc)
        for i in range(5):
            interview_date = now - datetime.timedelta(days=(4-i)*4)
            
            # Base score improves over time: 40, 55, 70, 85, 92
            base_score = 40 + (i * 13)
            
            interview = Interview(
                user_id=user.id,
                role_applied_for="Android Developer Mock",
                feedback_level="detailed",
                summary=f"Mock interview session {i+1} covering core Android concepts.",
                created_at=interview_date,
                score=base_score,
                total_questions=4
            )
            session.add(interview)
            session.flush()

            for cat in categories:
                cat_score = min(100, max(0, int(random.gauss(base_score, 10))))
                if cat == "System Design": 
                    cat_score = max(20, cat_score - 20) # Simulate a weak spot
                
                skill = Skill(
                    interview_id=interview.id,
                    skill_name=cat,
                    category_score=cat_score,
                    total_questions_per_category=1
                )
                session.add(skill)

                q = QuestionAnswer(
                    interview_id=interview.id,
                    category=cat,
                    question=f"Explain a core concept in {cat}.",
                    answer=f"My dummy answer demonstrating {cat} knowledge.",
                    score=cat_score,
                    strengths='["Good start"]',
                    improvements='["Needs more depth"]',
                    suggestions='["Practice more"]'
                )
                session.add(q)
            
            session.commit()
            
        print("Successfully created 'tester@gmail.com' (pass: 'tester123') with dummy analytics data.")

if __name__ == "__main__":
    seed_tester()
