from datetime import datetime

from pydantic import BaseModel, ConfigDict


# ---------------------------------------------------------------------------
# QuestionAnswer
# ---------------------------------------------------------------------------
class QuestionAnswerCreate(BaseModel):
    question: str
    answer: str
    category: str


class QuestionAnswerSchema(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    question: str
    answer: str
    category: str


# ---------------------------------------------------------------------------
# Skill
# ---------------------------------------------------------------------------
class SkillCreate(BaseModel):
    skill_name: str


class SkillSchema(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    skill_name: str


# ---------------------------------------------------------------------------
# Interview
# ---------------------------------------------------------------------------
class InterviewCreate(BaseModel):
    """Payload sent by the Android client to create a new interview record."""
    responses: list[QuestionAnswerCreate]


class InterviewResponse(BaseModel):
    """Full interview record returned to the client, with nested Q&A and skills."""
    model_config = ConfigDict(from_attributes=True)

    id: int
    feedback_level: str
    score: int
    summary: str
    created_at: datetime
    responses: list[QuestionAnswerSchema]
    skills: list[SkillSchema]
