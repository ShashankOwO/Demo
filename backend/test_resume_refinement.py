import sys
import os
import unittest
from unittest.mock import patch, MagicMock

# Add D:\R2I\backend to sis.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__))))

from app.main import create_app  # pyre-ignore
from app.services import resume_service  # pyre-ignore

class TestResumeRefinement(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.app_context = self.app.app_context()
        self.app_context.push()

    def tearDown(self):
        self.app_context.pop()

    @patch('app.services.resume_service._extract_text')
    def test_process_resume_with_llm(self, mock_extract_text):
        # Mock the PDF extraction to return our controlled text
        mock_extract_text.return_value = """
        John Doe
        Software Engineer
        
        EXPERIENCE
        Senior Backend Developer
        Tech Corp | Jan 2018 - Present
        - Built Python microservices.
        - Managed PostgreSQL databases.
        
        Junior Developer
        Startup Inc | Mar 2015 - Jan 2018
        - Developed React frontend.
        
        SKILLS
        Python, React, SQL, AWS, Docker, Git.
        """
        
        mock_file = MagicMock()
        mock_file.filename = "test_resume.pdf"
        mock_file.read.return_value = b"fake pdf content"
        
        # We need an active request context if the code requires it
        with self.app.test_request_context():
            result = resume_service.process_resume(mock_file, user_id=1)
            
        print("\n--- Extraction Result ---")
        print(f"Experience Years: {result.get('detected_experience_years')}")
        print(f"Experience Level: {result.get('experience_level')}")
        print(f"Target Role: {result.get('inferred_target_role')}")
        
        self.assertIsNotNone(result.get('detected_experience_years'))
        self.assertTrue(result.get('detected_experience_years') >= 8)
        self.assertEqual(result.get('experience_level'), "Expert")
        
        self.assertIsNotNone(result.get('inferred_target_role'))
        self.assertNotEqual(result.get('inferred_target_role'), "Not detected")

if __name__ == "__main__":
    unittest.main()
