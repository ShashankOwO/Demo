from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session

from app.database import get_db
from app.schemas.interview import InterviewCreate, InterviewResponse
from app.services import interview_service

router = APIRouter()


@router.post(
    "/",
    response_model=InterviewResponse,
    status_code=status.HTTP_201_CREATED,
    summary="Submit interview responses",
)
def create_interview(
    payload: InterviewCreate,
    db: Session = Depends(get_db),
):
    """
    Accept a list of question/answer/category triples, score them,
    determine feedback level, and persist the interview record.
    """
    return interview_service.create_interview(db, payload)


@router.get(
    "/",
    response_model=list[InterviewResponse],
    summary="List all interviews",
)
def list_interviews(db: Session = Depends(get_db)):
    """Return all interviews, newest first, with nested Q&A and skills."""
    return interview_service.get_all_interviews(db)


@router.get(
    "/{interview_id}",
    response_model=InterviewResponse,
    summary="Get a single interview",
)
def get_interview(interview_id: int, db: Session = Depends(get_db)):
    """Return a single interview by ID, or 404 if not found."""
    interview = interview_service.get_interview_by_id(db, interview_id)
    if interview is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail=f"Interview {interview_id} not found",
        )
    return interview
