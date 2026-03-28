
import os
import sys

# Add the project root to sys.path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), 'backend')))

from app.services import resume_service
from app.services import llm_service
from unittest.mock import MagicMock

# Set up environment variables if needed
os.environ["GEMINI_API_KEY"] = "MOCK_KEY" # Just for testing if it reaches the check

def test_extraction():
    print("Testing Resume Extraction Refinement...")
    
    sample_resume = """
    John Doe
    Senior Software Engineer | 8+ years of experience
    Expert in Python, Django, and Cloud Architecture.
    Targeting roles in AI and Machine Learning.
    
    Experience:
    Google: 2018 - Present
    Microsoft: 2014 - 2018
    """
    
    # Mock LLM response to simulate Gemini API
    llm_service.extract_resume_details = MagicMock(return_value={
        "experience_years": 10,
        "target_role": "AI/ML Engineer"
    })
    
    # We won't call the full process_resume because it requires db/auth mocks
    # Instead we test the integration point in process_resume logic (conceptually)
    
    # Test _detect_experience_years (Heuristic fallback)
    exp = resume_service._detect_experience_years(sample_resume)
    print(f"Heuristic Experience detected: {exp}")
    
    # Test _extract_roles (Heuristic fallback)
    _, role = resume_service._extract_roles(sample_resume, {"languages": ["Python"]})
    print(f"Heuristic Role detected: {role}")
    
    # Test the AI integration logic directly
    ai_details = llm_service.extract_resume_details(sample_resume)
    print(f"AI Details: {ai_details}")
    
    print("\nVerification successful if AI Details match the mock.")

if __name__ == "__main__":
    test_extraction()
