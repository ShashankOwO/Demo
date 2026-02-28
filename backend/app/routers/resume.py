from flask import Blueprint, request, jsonify

from app.schemas.resume import ResumeAnalysisOutSchema
from app.services import resume_service

bp = Blueprint('resume', __name__)
resume_analysis_schema = ResumeAnalysisOutSchema()

@bp.route("/upload", methods=["POST"])
def upload_resume():
    """
    Upload a PDF resume. The service will:
    - Validate file type and size (max 5 MB)
    - Extract text with pdfplumber
    - Match skills against a categorised keyword database (regex, no AI)
    - Generate up to 10 interview questions from technical skills only
    
    Returns a structured ResumeAnalysisOut response.
    """
    if 'file' not in request.files:
        return jsonify({"detail": "No file part"}), 400
    
    file = request.files['file']
    if file.filename == '':
        return jsonify({"detail": "No selected file"}), 400
        
    result = resume_service.process_resume(file)
    return jsonify(resume_analysis_schema.dump(result))
