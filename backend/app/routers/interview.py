from flask import Blueprint, request, jsonify, abort

from app.schemas.interview import InterviewCreateSchema, InterviewSchema
from app.services import interview_service

bp = Blueprint('interview', __name__)

interview_create_schema = InterviewCreateSchema()
interview_schema = InterviewSchema()
interviews_schema = InterviewSchema(many=True)

@bp.route("/", methods=["POST"])
def create_interview():
    """
    Accept a list of question/answer/category triples, score them,
    determine feedback level, and persist the interview record.
    """
    json_data = request.get_json()
    if not json_data:
        return jsonify({"message": "No input data provided"}), 400
    
    # Validate and deserialize input
    errors = interview_create_schema.validate(json_data)
    if errors:
        return jsonify(errors), 422
    
    interview = interview_service.create_interview(json_data)
    return jsonify(interview_schema.dump(interview)), 201


@bp.route("/", methods=["GET"])
def list_interviews():
    """Return all interviews, newest first, with nested Q&A and skills."""
    interviews = interview_service.get_all_interviews()
    return jsonify(interviews_schema.dump(interviews))


@bp.route("/<int:interview_id>", methods=["GET"])
def get_interview(interview_id):
    """Return a single interview by ID, or 404 if not found."""
    interview = interview_service.get_interview_by_id(interview_id)
    if interview is None:
        abort(404, description=f"Interview {interview_id} not found")
    return jsonify(interview_schema.dump(interview))
