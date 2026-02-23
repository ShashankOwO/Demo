from fastapi import APIRouter, Depends, File, UploadFile, status
from fastapi.responses import JSONResponse

from app.services import resume_service

router = APIRouter()


@router.post(
    "/upload",
    status_code=status.HTTP_200_OK,
    summary="Upload a PDF resume",
    response_description="Extracted skills and generated interview questions",
    responses={
        200: {
            "description": "Skills and questions extracted successfully",
            "content": {
                "application/json": {
                    "example": {
                        "extracted_skills": ["Python", "SQL"],
                        "questions": [
                            {
                                "question": "Explain your experience with Python and the projects you have built using it.",
                                "category": "Python",
                            }
                        ],
                    }
                }
            },
        },
        400: {"description": "Invalid file type"},
        413: {"description": "File too large (> 5 MB)"},
        422: {"description": "Unable to parse PDF"},
    },
)
async def upload_resume(
    file: UploadFile = File(..., description="PDF resume file (max 5 MB)"),
):
    """
    Upload a PDF resume. The backend will:
    - Validate the file type and size (max 5 MB)
    - Extract text using pdfplumber
    - Detect skills from a predefined keyword list
    - Generate up to 10 structured interview questions

    Use the returned **questions** to drive the interview flow (POST /interviews/).
    """
    result = await resume_service.process_resume(file)
    return result
