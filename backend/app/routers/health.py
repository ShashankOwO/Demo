from flask import Blueprint, jsonify

bp = Blueprint('health', __name__)

@bp.route("/health", methods=["GET"])
def health_check():
    """Returns a simple running status — useful for load-balancer and Android app checks."""
    return jsonify({"status": "running"})
