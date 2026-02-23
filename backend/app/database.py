from sqlalchemy import create_engine
from sqlalchemy.orm import DeclarativeBase, sessionmaker

from app.core.config import get_settings

settings = get_settings()

# connect_args is required for SQLite to allow multi-thread usage with FastAPI
engine = create_engine(
    settings.database_url,
    connect_args={"check_same_thread": False},
    echo=settings.debug,  # logs SQL when DEBUG=True
)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)


class Base(DeclarativeBase):
    """All SQLAlchemy models should inherit from this Base."""
    pass


def init_db() -> None:
    """Create all tables that are registered on Base.metadata."""
    # Models must be imported before this is called so SQLAlchemy sees them.
    from app.models import __all_models__  # noqa: F401
    Base.metadata.create_all(bind=engine)


# ---------------------------------------------------------------------------
# Dependency
# ---------------------------------------------------------------------------
def get_db():
    """FastAPI dependency that yields a database session and closes it after use."""
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
