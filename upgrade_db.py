from app.main import create_app
from app.database import db
from sqlalchemy import text

app = create_app()
with app.app_context():
    try:
        db.session.execute(text("ALTER TABLE interviews ADD COLUMN total_questions INTEGER DEFAULT 0"))
        print("Added total_questions to interviews.")
    except Exception as e:
        print("Info:", e)
        
    try:
        db.session.execute(text("ALTER TABLE skills ADD COLUMN total_questions_per_category INTEGER DEFAULT 0"))
        print("Added total_questions_per_category to skills.")
    except Exception as e:
        print("Info:", e)
        
    try:
        # SQLite vs MySQL index syntax handling
        db.session.execute(text("CREATE INDEX idx_user_created_at ON interviews(user_id, created_at)"))
        print("Created index idx_user_created_at on interviews.")
    except Exception as e:
        print("Info:", e)
        
    db.session.commit()
    print("Database upgrade script completed.")
