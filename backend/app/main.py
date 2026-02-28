from flask import Flask
from flask_cors import CORS

from app.core.config import get_settings
from app.database import db

# Import blueprints
from app.routers.health import bp as health_bp
from app.routers.interview import bp as interview_bp
from app.routers.resume import bp as resume_bp

settings = get_settings()

def create_app():
    app = Flask(__name__)
    
    # Configure app
    app.config['SECRET_KEY'] = settings.secret_key
    app.config['SQLALCHEMY_DATABASE_URI'] = settings.database_url
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    # CORS
    CORS(app, resources={r"/*": {"origins": settings.origins_list}}, supports_credentials=True)

    # Initialize extensions
    db.init_app(app)

    # Note: We create tables inside the app context when running directly, 
    # but in a production setup you'd use migrations.
    with app.app_context():
        from app import models  # Ensure models are known to SQLAlchemy
        db.create_all()

    # Register blueprints
    app.register_blueprint(health_bp)
    app.register_blueprint(interview_bp, url_prefix="/interviews")
    app.register_blueprint(resume_bp, url_prefix="/resume")

    return app

if __name__ == "__main__":
    app = create_app()
    app.run(debug=settings.debug, host="0.0.0.0", port=5000)
