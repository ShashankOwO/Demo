import resend
from app.core.config import get_settings
from app.core.logger import get_logger

logger = get_logger(__name__)
settings = get_settings()

resend.api_key = settings.resend_api_key

def send_reset_email(to_email: str, reset_code: str) -> bool:
    """
    Sends a 6-digit OTP reset code to the specified email address using Resend API.
    Bypasses standard SMTP port 587 blocks by pushing over HTTPS.
    """
    if not settings.resend_api_key or settings.resend_api_key == "re_your_api_key_here":
        logger.warning("Resend API key missing in .env. Falling back to terminal display.")
        fallback_terminal(to_email, reset_code)
        return True

    html_content = f"""
    <html>
      <body style="font-family: Arial, sans-serif; color: #333;">
        <div style="max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #eaeaea; border-radius: 10px;">
          <h2 style="color: #4CAF50;">Resume2Interview Password Reset</h2>
          <p>We received a request to reset the password for your account.</p>
          <p>Please enter the following 6-digit code in the app to proceed:</p>
          <div style="margin: 20px 0; padding: 15px; background-color: #f9f9f9; text-align: center; border-radius: 5px;">
            <b style="font-size: 24px; letter-spacing: 5px;">{reset_code}</b>
          </div>
          <p>This code will expire in 15 minutes.</p>
          <p>If you did not request a password reset, you can safely ignore this email.</p>
          <hr style="border: none; border-top: 1px solid #eaeaea; margin: 30px 0;" />
          <p style="font-size: 12px; color: #777;">
            The Resume2Interview Team
          </p>
        </div>
      </body>
    </html>
    """

    params = {
        "from": f"Resume2Interview <{settings.email_from}>",
        "to": [to_email],
        "subject": "Resume2Interview - Reset Pass",
        "html": html_content
    }

    try:
        email_response = resend.Emails.send(params)
        logger.info(f"Password reset email sent successfully to {to_email} via Resend. ID: {email_response.get('id', '')}")
        return True
    except Exception as e:
        logger.error(f"Failed to send password reset email to {to_email} via Resend: {str(e)}")
        fallback_terminal(to_email, reset_code)
        return True

def fallback_terminal(to_email: str, reset_code: str):
    print("\n" + "="*50)
    print(" PASSWORD RESET EMAIL (FALLBACK)")
    print(f" To: {to_email}")
    print(f" Code: {reset_code}")
    print("="*50 + "\n")
