import sys
from sqlalchemy import text
from app.main import create_app
from app.database import db

app = create_app()

with app.app_context():
    try:
        db.session.execute(text("ALTER TABLE user_profiles ADD COLUMN full_name VARCHAR(120);"))
        db.session.execute(text("ALTER TABLE user_profiles ADD COLUMN job_title VARCHAR(120);"))
        db.session.execute(text("ALTER TABLE user_profiles ADD COLUMN location VARCHAR(120);"))
        db.session.execute(text("ALTER TABLE user_profiles ADD COLUMN bio TEXT;"))
        db.session.execute(text("ALTER TABLE user_profiles ADD COLUMN profile_photo_url VARCHAR(255);"))
        db.session.commit()
        print("Success: Columns added.")
    except Exception as e:
        print(f"Error: {e}")
        db.session.rollback()
