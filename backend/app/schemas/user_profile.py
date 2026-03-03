from marshmallow import Schema, fields, validate

class UserProfileSchema(Schema):
    id = fields.Int(dump_only=True)
    user_id = fields.Int(dump_only=True)
    full_name = fields.Str(allow_none=True)
    job_title = fields.Str(allow_none=True)
    location = fields.Str(allow_none=True)
    bio = fields.Str(allow_none=True)
    profile_photo_url = fields.Str(allow_none=True)
    skills_json = fields.Str(allow_none=True)
    previous_role = fields.Str(allow_none=True)
    target_role = fields.Str(allow_none=True)
    updated_at = fields.DateTime(dump_only=True)

class UserProfileUpdateSchema(Schema):
    full_name = fields.Str(allow_none=True)
    job_title = fields.Str(allow_none=True)
    location = fields.Str(allow_none=True)
    bio = fields.Str(allow_none=True)
    profile_photo_url = fields.Str(allow_none=True)
