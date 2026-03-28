import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, text

load_dotenv()
db_url = os.getenv("DATABASE_URL")
if not db_url:
    print("No database URL")
else:
    engine = create_engine(db_url)
    try:
        with engine.connect() as conn:
            result = conn.execute(text("SELECT id, email FROM users"))
            rows = result.fetchall()
            if not rows:
                print("No users found in database.")
            for row in rows:
                print(f"ID: {row[0]}, Email: {row[1]}")
    except Exception as e:
        print(f"DB Error: {e}")
