from flask import Blueprint, jsonify
from app.services import analytics_service
from app.core.security import get_current_user

bp = Blueprint('analytics', __name__)

@bp.route("/category-performance", methods=["GET"])
def get_category_performance():
    current_user = get_current_user()
    data = analytics_service.get_category_performance_data(current_user.id)
    return jsonify(data)
