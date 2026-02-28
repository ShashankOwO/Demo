from datetime import timedelta
from flask import abort

from app.database import db
from app.models.user import User
from app.core.security import get_password_hash, verify_password, create_access_token

def register_user(email: str, password: str) -> User:
    # Check if user already exists
    existing_user = User.query.filter_by(email=email).first()
    if existing_user:
        abort(400, description="Email already registered")

    # Create new user
    hashed_password = get_password_hash(password)
    new_user = User(email=email, hashed_password=hashed_password)
    db.session.add(new_user)
    db.session.commit()
    return new_user

def authenticate_user(email: str, password: str) -> dict:
    user = User.query.filter_by(email=email).first()
    if not user:
        abort(401, description="Incorrect email or password")
    
    if not verify_password(password, user.hashed_password):
        abort(401, description="Incorrect email or password")
    
    # Generate token (60 min expiration)
    access_token_expires = timedelta(minutes=60)
    access_token = create_access_token(
        data={"sub": str(user.id)}, expires_delta=access_token_expires
    )
    
    return {"access_token": access_token, "token_type": "bearer"}
