from pydantic_settings import BaseSettings
from functools import lru_cache


class Settings(BaseSettings):
    app_name: str = "Resume2Interview API"
    app_version: str = "1.0.0"
    debug: bool = True

    database_url: str = "sqlite:///./resume2interview.db"

    allowed_origins: str = "http://localhost,http://10.0.2.2"

    secret_key: str = "changeme-super-secret-key"

    @property
    def origins_list(self) -> list[str]:
        return [o.strip() for o in self.allowed_origins.split(",") if o.strip()]

    class Config:
        env_file = ".env"
        case_sensitive = False


@lru_cache()
def get_settings() -> Settings:
    return Settings()
