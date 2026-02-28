"""
schemas/resume.py
~~~~~~~~~~~~~~~~~
Pydantic request/response models for the /resume/ router.
"""

from marshmallow import Schema, fields

class TechnicalSkillsSchema(Schema):
    """Categorised technical skills detected in the resume."""
    languages = fields.List(fields.String(), missing=list)
    backend = fields.List(fields.String(), missing=list)
    frontend = fields.List(fields.String(), missing=list)
    mobile = fields.List(fields.String(), missing=list)
    database = fields.List(fields.String(), missing=list)
    devops = fields.List(fields.String(), missing=list)
    ai = fields.List(fields.String(), missing=list)
    architecture = fields.List(fields.String(), missing=list)
    testing = fields.List(fields.String(), missing=list)

class InterviewQuestionSchema(Schema):
    """A single generated interview question."""
    question = fields.String(required=True)
    category = fields.String(required=True)

class ResumeAnalysisOutSchema(Schema):
    """Full response returned by POST /resume/upload."""
    technical_skills = fields.Nested(TechnicalSkillsSchema, required=True)
    tools_frameworks = fields.List(fields.String(), missing=list)
    soft_skills = fields.List(fields.String(), missing=list)
    detected_experience_years = fields.Integer(missing=0)
    generated_questions = fields.List(fields.Nested(InterviewQuestionSchema), missing=list)
