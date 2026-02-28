import os
from dotenv import load_dotenv

load_dotenv()

class Settings:
    def __init__(self):
        self.app_name = os.getenv("APP_NAME", "Resume2Interview API")
        self.app_version = os.getenv("APP_VERSION", "1.0.0")
        self.debug = os.getenv("DEBUG", "True").lower() == "true"
        self.database_url = os.getenv("DATABASE_URL", "sqlite:///./resume2interview.db")
        self.allowed_origins = os.getenv("ALLOWED_ORIGINS", "http://localhost,http://10.0.2.2")
        self.secret_key = os.getenv("SECRET_KEY", "changeme-super-secret-key")

    @property
    def origins_list(self) -> list[str]:
        return [o.strip() for o in self.allowed_origins.split(",") if o.strip()]

settings = Settings()

def get_settings() -> Settings:
    return settings
