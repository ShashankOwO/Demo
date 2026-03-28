import os
from dotenv import load_dotenv

load_dotenv(override=True)

class Settings:
    def __init__(self):
        self.app_name = os.getenv("APP_NAME", "Resume2Interview API")
        self.app_version = os.getenv("APP_VERSION", "1.0.0")
        self.debug = os.getenv("DEBUG", "True").lower() == "true"
        self.database_url = os.getenv("DATABASE_URL", "sqlite:///./resume2interview.db")
        self.allowed_origins = os.getenv("ALLOWED_ORIGINS", "http://localhost,http://10.0.2.2")
        self.secret_key = os.getenv("SECRET_KEY", "changeme-super-secret-key")
        self.jwt_secret_key = os.getenv("JWT_SECRET_KEY", "jwt-changeme-secret-key")
        self.gemini_api_key = os.getenv("GEMINI_API_KEY", "")
        self.groq_api_key = os.getenv("GROQ_API_KEY", "")
        self.openrouter_api_key = os.getenv("OPENROUTER_API_KEY", "")
        raw_nvidia = os.getenv("NVIDIA_API_KEYS", "")
        self.nvidia_api_keys: list[str] = [
            k.strip() for k in raw_nvidia.split(",") if k.strip()
        ]
        
        # Email Configuration — Brevo transactional email (HTTPS, no SMTP needed)
        self.brevo_api_key = os.getenv("BREVO_API_KEY", "")
        # Legacy SMTP fields (kept for sender address reference)
        self.email_user = os.getenv("EMAIL_USER", "")
        self.email_pass = os.getenv("EMAIL_PASS", "")
        self.email_from = os.getenv("EMAIL_FROM", "")

    @property
    def origins_list(self) -> list[str]:
        return [o.strip() for o in self.allowed_origins.split(",") if o.strip()]

settings = Settings()

def get_settings() -> Settings:
    return settings
