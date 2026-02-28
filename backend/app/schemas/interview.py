from marshmallow import Schema, fields

class QuestionAnswerCreateSchema(Schema):
    question = fields.String(required=True)
    answer = fields.String(required=True)
    category = fields.String(required=True)

class QuestionAnswerSchema(Schema):
    id = fields.Integer(dump_only=True)
    question = fields.String(dump_only=True)
    answer = fields.String(dump_only=True)
    category = fields.String(dump_only=True)

class SkillCreateSchema(Schema):
    skill_name = fields.String(required=True)

class SkillSchema(Schema):
    id = fields.Integer(dump_only=True)
    skill_name = fields.String(dump_only=True)

class InterviewCreateSchema(Schema):
    responses = fields.List(fields.Nested(QuestionAnswerCreateSchema), required=True)

class InterviewSchema(Schema):
    id = fields.Integer(dump_only=True)
    feedback_level = fields.String(dump_only=True)
    score = fields.Integer(dump_only=True)
    summary = fields.String(dump_only=True)
    created_at = fields.DateTime(dump_only=True)
    responses = fields.List(fields.Nested(QuestionAnswerSchema), dump_only=True)
    skills = fields.List(fields.Nested(SkillSchema), dump_only=True)
