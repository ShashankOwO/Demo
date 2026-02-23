from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.core.config import get_settings
from app.database import init_db
from app.routers import health, interview, resume

settings = get_settings()

app = FastAPI(
    title=settings.app_name,
    version=settings.app_version,
    debug=settings.debug,
    docs_url="/docs",
    redoc_url="/redoc",
)

# ---------------------------------------------------------------------------
# CORS — allow Android emulator (10.0.2.2) and any other configured origins
# ---------------------------------------------------------------------------
app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.origins_list,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ---------------------------------------------------------------------------
# Routers
# ---------------------------------------------------------------------------
app.include_router(health.router, tags=["Health"])
app.include_router(interview.router, prefix="/interviews", tags=["Interviews"])
app.include_router(resume.router, prefix="/resume", tags=["Resume"])
# Future routers go here, e.g.:
# app.include_router(auth.router, prefix="/auth", tags=["Auth"])


# ---------------------------------------------------------------------------
# Startup event
# ---------------------------------------------------------------------------
@app.on_event("startup")
def on_startup() -> None:
    """Initialise DB tables when the server starts."""
    init_db()
