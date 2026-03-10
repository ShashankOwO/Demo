from flask import Blueprint, request, jsonify, abort
from marshmallow import ValidationError

from app.schemas.user import UserCreateSchema, UserLoginSchema, UserSchema
from app.services import auth_service

bp = Blueprint('auth', __name__)

user_create_schema = UserCreateSchema()
user_login_schema = UserLoginSchema()
user_schema = UserSchema()

@bp.route("/register", methods=["POST"])
def register():
    json_data = request.get_json()
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
        
    try:
        data = user_create_schema.load(json_data)
    except ValidationError as err:
        return jsonify(err.messages), 422
        
    user = auth_service.register_user(
        email=data['email'], 
        password=data['password'],
        name=data.get('name')
    )
    return jsonify(user_schema.dump(user)), 201

@bp.route("/login", methods=["POST"])
def login():
    json_data = request.get_json()
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
        
    try:
        data = user_login_schema.load(json_data)
    except ValidationError as err:
        return jsonify(err.messages), 422
        
    token_response = auth_service.authenticate_user(email=data['email'], password=data['password'])
    return jsonify(token_response), 200

@bp.route("/request-reset", methods=["POST"])
def request_reset():
    from app.schemas.user import PasswordResetRequestSchema
    
    json_data = request.get_json()
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
        
    try:
        data = PasswordResetRequestSchema().load(json_data)
    except ValidationError as err:
        return jsonify(err.messages), 422
        
    auth_service.request_password_reset(email=data['email'])
    return jsonify({"message": "If the email exists, a reset code was sent."}), 200

@bp.route("/reset-password", methods=["POST"])
def reset_password():
    from app.schemas.user import PasswordResetConfirmSchema
    
    json_data = request.get_json()
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
        
    try:
        data = PasswordResetConfirmSchema().load(json_data)
    except ValidationError as err:
        return jsonify(err.messages), 422
        
    auth_service.reset_password(
        email=data['email'], 
        code=data['code'], 
        new_password=data['new_password']
    )
    return jsonify({"message": "Password successfully reset."}), 200
