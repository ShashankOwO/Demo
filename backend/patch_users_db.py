import os
from sqlalchemy import create_engine, text

# Bypass Flask-SQLAlchemy configuration logic and connect cleanly
db_url = "mysql+mysqldb://root:@127.0.0.1:3307/resume2interview"
engine = create_engine(db_url)

with engine.connect() as conn:
    print("Applying User table OTP schema updates...")
    try:
        conn.execute(text("ALTER TABLE users ADD COLUMN reset_code VARCHAR(6) NULL;"))
        print("Successfully added reset_code column.")
    except Exception as e:
        print(f"Skipped reset_code: {str(e)}")
        
    try:
        conn.execute(text("ALTER TABLE users ADD COLUMN reset_code_expires_at DATETIME NULL;"))
        print("Successfully added reset_code_expires_at column.")
    except Exception as e:
        print(f"Skipped reset_code_expires_at: {str(e)}")

    conn.commit()
    print("Migration complete!")
