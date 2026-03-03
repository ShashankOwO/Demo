from flask import Blueprint, request, jsonify, abort
from app.schemas.user_profile import UserProfileSchema, UserProfileUpdateSchema
from app.services import user_profile_service
from app.core.security import get_current_user
from app.database import db

bp = Blueprint('profile', __name__)

profile_schema = UserProfileSchema()
profile_update_schema = UserProfileUpdateSchema()

@bp.route("/me", methods=["GET"])
def get_my_profile():
    """Return the current user's profile."""
    current_user = get_current_user()
    profile = user_profile_service.get_user_profile(current_user.id)
    
    if not profile:
        # If no profile exists yet, return an empty profile shell
        # to match Android DTO assumptions
        return jsonify({
            "id": 0,
            "user_id": current_user.id,
            "full_name": None,
            "job_title": None,
            "location": None,
            "bio": None,
            "profile_photo_url": None,
            "skills_json": None,
            "previous_role": None,
            "target_role": None,
        }), 200

    return jsonify(profile_schema.dump(profile)), 200


@bp.route("/me", methods=["PUT"])
def update_my_profile():
    """Update profile fields for the current user."""
    current_user = get_current_user()
    json_data = request.get_json()
    
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
        
    errors = profile_update_schema.validate(json_data)
    if errors:
        return jsonify(errors), 422
        
    # User Profile Service only has basic update currently, let's update fields directly
    profile = user_profile_service.get_user_profile(current_user.id)
    
    from app.models.user_profile import UserProfile
    
    if not profile:
        profile = UserProfile(user_id=current_user.id)
        db.session.add(profile)
        
    if 'full_name' in json_data:
        profile.full_name = json_data['full_name']
    if 'job_title' in json_data:
        profile.job_title = json_data['job_title']
    if 'location' in json_data:
        profile.location = json_data['location']
    if 'bio' in json_data:
        profile.bio = json_data['bio']
    if 'profile_photo_url' in json_data:
        profile.profile_photo_url = json_data['profile_photo_url']
        
    db.session.commit()
    db.session.refresh(profile)
    
    return jsonify(profile_schema.dump(profile)), 200
