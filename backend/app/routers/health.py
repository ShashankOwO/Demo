from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()


class HealthResponse(BaseModel):
    status: str


@router.get("/health", response_model=HealthResponse)
def health_check() -> HealthResponse:
    """Returns a simple running status — useful for load-balancer and Android app checks."""
    return HealthResponse(status="running")
