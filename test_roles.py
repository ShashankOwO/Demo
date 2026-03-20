import json
from app.main import create_app
from app.services.resume_service import _extract_roles, _generate_questions

app = create_app()

with app.app_context():
    from app.services.user_profile_service import update_user_profile, suggest_roles
    
    # Test Resume Text
    resume_text = """
    John Doe
    Backend Engineer
    
    Experience
    Backend Engineer at TechCorp
    - Built REST APIs using FastApi and Django
    - Managed databases in MySQL and Postgres
    
    Skills
    Python, Java, Git, Docker, AWS, SQL
    """
    
    tech_skills = {
        "backend": ["fastapi", "django"],
        "database": ["mysql", "postgres", "sql"],
        "devops": ["docker", "aws"],
        "languages": ["python", "java"]
    }
    
    print("\n--- 1. Testing Role Extraction ---")
    prev_role, inferred = _extract_roles(resume_text, tech_skills)
    print(f"Previous Role extracted: {prev_role}")
    print(f"Inferred Role extracted: {inferred}")
    
    print("\n--- 2. Testing Priority Questions ---")
    questions = _generate_questions(tech_skills, applied_role="Backend Engineer")
    for q in questions[:3]:
        print(f"Category: {q['category']} -> Q: {q['question']}")

    print("\n--- 3. Testing Suggestion Endpoint Engine ---")
    user_id = 1
    # Save the profile explicitly
    update_user_profile(user_id, skills=tech_skills, previous_role=prev_role, target_role="Backend Engineer")
    print("User profile saved.")
    
    suggestions = suggest_roles(user_id)
    print("Suggestions generated:")
    for s in suggestions:
        print(f"  Role: {s['role']}, Score: {s['match_score']}%")
    
    print("\nAll pipeline tests completed.")
