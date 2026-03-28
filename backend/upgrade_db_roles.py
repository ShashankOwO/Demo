from app.main import create_app
from app.database import db
from sqlalchemy import text

app = create_app()

with app.app_context():
    print("Upgrading database schema for Role Targeting features...")
    
    # 1. Add role_applied_for to interviews
    try:
        db.session.execute(text("ALTER TABLE interviews ADD COLUMN role_applied_for VARCHAR(100)"))
        print("Successfully added role_applied_for to interviews.")
    except Exception as e:
        print(f"Skipping role_applied_for creation (likely exists): {e}")

    # 2. Create user_profiles table if not exists (SQLite and MySQL)
    create_table_sql = """
    CREATE TABLE IF NOT EXISTS user_profiles (
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL UNIQUE,
        skills_json TEXT,
        previous_role VARCHAR(100),
        target_role VARCHAR(100),
        updated_at DATETIME,
        FOREIGN KEY(user_id) REFERENCES users (id) ON DELETE CASCADE
    )
    """
    
    # Simple dialect switching for AUTO_INCREMENT if using MySQL vs SQLite
    if "mysql" in app.config.get("SQLALCHEMY_DATABASE_URI", ""):
        create_table_sql = create_table_sql.replace("AUTOINCREMENT", "AUTO_INCREMENT")
        
    try:
        db.session.execute(text(create_table_sql))
        print("Successfully created user_profiles table.")
    except Exception as e:
        print(f"Skipping user_profiles creation: {e}")
        
    db.session.commit()
    print("Upgrade complete.")
