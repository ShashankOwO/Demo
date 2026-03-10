from datetime import timedelta
from flask import abort

from app.database import db
from app.models.user import User
from app.core.security import get_password_hash, verify_password, create_access_token

from app.models.user_profile import UserProfile

def register_user(email: str, password: str, name: str = None) -> User:
    # Check if user already exists
    existing_user = User.query.filter_by(email=email).first()
    if existing_user:
        abort(400, description="Email already registered")

    # Create new user
    hashed_password = get_password_hash(password)
    new_user = User(email=email, hashed_password=hashed_password)
    db.session.add(new_user)
    db.session.flush() # get ID before commit

    # Auto-create empty profile
    profile = UserProfile(user_id=new_user.id, full_name=name)
    db.session.add(profile)
    
    db.session.commit()
    return new_user

def authenticate_user(email: str, password: str) -> dict:
    user = User.query.filter_by(email=email).first()
    if not user:
        abort(401, description="Email does not exist")
    
    if not verify_password(password, user.hashed_password):
        abort(401, description="Password mismatch")
    
    # Generate token (60 min expiration)
    access_token_expires = timedelta(minutes=60)
    access_token = create_access_token(
        data={"sub": str(user.id)}, expires_delta=access_token_expires
    )
    
    return {"access_token": access_token, "token_type": "bearer"}

def request_password_reset(email: str) -> None:
    from datetime import datetime, timezone, timedelta
    import random
    import string
    
    user = User.query.filter_by(email=email).first()
    if not user:
        # Silently succeed to prevent email enumeration
        return
        
    code = ''.join(random.choices(string.digits, k=6))
    user.reset_code = code
    user.reset_code_expires_at = datetime.now(timezone.utc) + timedelta(minutes=15)
    db.session.commit()
    
    from app.services.email_service import send_reset_email

    success = send_reset_email(email, code)
    if not success:
        # We still silently fail for unregistered emails, but if the email failed
        # to send due to SMTP configuration, we should let the user know.
        abort(500, description="Error dispatching reset email. Check server configuration.")

def reset_password(email: str, code: str, new_password: str) -> None:
    from datetime import datetime, timezone
    
    user = User.query.filter_by(email=email).first()
    if not user or not user.reset_code or user.reset_code != code:
        abort(400, description="Invalid reset code")
        
    # Ensure code isn't expired
    expires_at = user.reset_code_expires_at
    if expires_at and expires_at.tzinfo is None:
        expires_at = expires_at.replace(tzinfo=timezone.utc)
        
    if not expires_at or expires_at < datetime.now(timezone.utc):
        abort(400, description="Reset code expired")
        
    # Valid code -> Update password -> Clear token
    user.hashed_password = get_password_hash(new_password)
    user.reset_code = None
    user.reset_code_expires_at = None
    db.session.commit()
