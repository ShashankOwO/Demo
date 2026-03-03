from flask import Blueprint, request, jsonify, abort, send_from_directory
from app.schemas.user_profile import UserProfileSchema, UserProfileUpdateSchema
from app.services import user_profile_service
from app.core.security import get_current_user
from app.database import db
import os, uuid

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
            "email": current_user.email,
            "name": None,
            "title": None,
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
        
    # Update User account email if changed
    if 'email' in json_data and json_data['email'] and json_data['email'] != current_user.email:
        # Avoid constraint violation if email already taken
        from app.models.user import User
        existing_user = User.query.filter_by(email=json_data['email']).first()
        if existing_user and existing_user.id != current_user.id:
            return jsonify({"message": "Email already in use"}), 400
        current_user.email = json_data['email']
        db.session.add(current_user)

    if 'name' in json_data:
        profile.full_name = json_data['name']
    if 'title' in json_data:
        profile.job_title = json_data['title']
    if 'location' in json_data:
        profile.location = json_data['location']
    if 'bio' in json_data:
        profile.bio = json_data['bio']
    if 'profile_photo_url' in json_data:
        profile.profile_photo_url = json_data['profile_photo_url']
        
    db.session.commit()
    db.session.refresh(profile)
    
    return jsonify(profile_schema.dump(profile)), 200


ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif', 'webp'}
UPLOAD_FOLDER = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), '..', 'uploads')

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@bp.route("/photo", methods=["POST"])
def upload_profile_photo():
    """Upload a profile photo for the current user."""
    current_user = get_current_user()

    if 'photo' not in request.files:
        return jsonify({"message": "No photo file provided"}), 400

    file = request.files['photo']
    if file.filename == '':
        return jsonify({"message": "No selected file"}), 400

    if not allowed_file(file.filename):
        return jsonify({"message": "File type not allowed"}), 400

    # Save file with a unique name to avoid collisions
    ext = file.filename.rsplit('.', 1)[1].lower()
    filename = f"profile_{current_user.id}_{uuid.uuid4().hex[:8]}.{ext}"
    os.makedirs(UPLOAD_FOLDER, exist_ok=True)
    file.save(os.path.join(UPLOAD_FOLDER, filename))

    # Determine server base URL for full path
    photo_url = f"/uploads/{filename}"

    # Persist photo URL into user_profiles
    from app.models.user_profile import UserProfile
    profile = user_profile_service.get_user_profile(current_user.id)
    if not profile:
        profile = UserProfile(user_id=current_user.id)
        db.session.add(profile)
    profile.profile_photo_url = photo_url
    db.session.commit()
    db.session.refresh(profile)

    return jsonify({"profile_photo_url": photo_url}), 200
