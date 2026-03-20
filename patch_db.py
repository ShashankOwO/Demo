from app.core.config import get_settings
from sqlalchemy import create_engine, text

def main():
    settings = get_settings()
    engine = create_engine(settings.database_url)
    with engine.begin() as conn:
        try:
            conn.execute(text("ALTER TABLE question_answers ADD COLUMN suggestions TEXT;"))
            print("Successfully added 'suggestions' column to question_answers table.")
        except Exception as e:
            print(f"Error executing ALTER TABLE: {e}")

if __name__ == "__main__":
    main()
