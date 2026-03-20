import unittest
from unittest.mock import patch
from app.services import resume_service

class TestAdaptiveGeneration(unittest.TestCase):
    def setUp(self):
        # Sample tech skills dictionary mimicking output from parser
        self.tech_skills = {
            "languages": ["Python", "Java", "C++", "Go", "Rust", "JavaScript"],
            "backend": ["Django", "Flask", "Node.js", "Express", "Spring Boot"],
            "frontend": ["React", "Angular", "Vue"],
            "mobile": [],
            "database": ["MySQL", "Redis", "MongoDB", "PostgreSQL"],
            "devops": ["Docker"],
            "ai": [],
            "architecture": ["REST API", "Microservices", "GraphQL"],
            "testing": ["JUnit"]
        }

    def test_normal_generation(self):
        # Generate without weakest_category
        questions = resume_service._generate_questions(self.tech_skills, applied_role=None, weakest_category=None)
        
        # Count DB questions
        db_questions = [q for q in questions if q["category"] in ["MySQL", "Redis", "MongoDB", "PostgreSQL"]]
        
        # Generate with weakest_category = "database"
        adaptive_questions = resume_service._generate_questions(self.tech_skills, applied_role=None, weakest_category="database")
        
        adaptive_db_questions = [q for q in adaptive_questions if q["category"] in ["MySQL", "Redis", "MongoDB", "PostgreSQL"]]
        
        print(f"Normal DB Questions: {len(db_questions)}")
        print(f"Adaptive DB Questions: {len(adaptive_db_questions)}")
        
        # Assert that adaptive generation allocates more database questions
        self.assertGreater(len(adaptive_db_questions), len(db_questions), "Adaptive generation should prioritize the weakest category.")

if __name__ == "__main__":
    unittest.main()
