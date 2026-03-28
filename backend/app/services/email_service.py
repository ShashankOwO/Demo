"""
Email service — uses Brevo (formerly Sendinblue) transactional email REST API.
Works over HTTPS port 443, so it is never blocked by ISP/firewall SMTP filters.

Set BREVO_API_KEY in .env to enable real email delivery.
If the key is missing the OTP is printed to the terminal as a fallback.
"""
import uuid
import requests
from app.core.config import get_settings
from app.core.logger import get_logger

logger  = get_logger(__name__)
settings = get_settings()

BREVO_SEND_URL = "https://api.brevo.com/v3/smtp/email"


def send_otp_email(to_email: str, otp: str, subject: str, title: str, instructions: str) -> bool:
    """
    Send a 6-digit OTP to *to_email* using the Brevo transactional email API.
    Falls back to terminal output if BREVO_API_KEY is not configured.
    """
    api_key = settings.brevo_api_key

    if not api_key:
        logger.warning("BREVO_API_KEY not set — falling back to terminal display.")
        _fallback_terminal(to_email, otp, title)
        return True                     # treat as success so registration still works

    sender_name  = "Resume2Interview"
    sender_email = getattr(settings, "email_user", None) or "noreply@resume2interview.app"

    html_body = f"""
    <html>
      <body style="font-family:Arial,sans-serif;color:#333;background:#f4f4f4;margin:0;padding:0">
        <div style="max-width:560px;margin:40px auto;background:#fff;border-radius:12px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,.08)">
          <div style="background:#4F46E5;padding:28px 32px">
            <h1 style="margin:0;color:#fff;font-size:20px;font-weight:700">Resume2Interview</h1>
          </div>
          <div style="padding:32px">
            <h2 style="margin:0 0 12px;font-size:18px;color:#1a1a2e">{title}</h2>
            <p style="margin:0 0 24px;color:#555;line-height:1.6">{instructions}</p>
            <div style="background:#f8f7ff;border:2px dashed #4F46E5;border-radius:8px;padding:20px;text-align:center;margin-bottom:24px">
              <span style="font-size:32px;font-weight:800;letter-spacing:10px;color:#4F46E5">{otp}</span>
            </div>
            <p style="margin:0 0 8px;color:#888;font-size:13px">This code expires in <strong>15 minutes</strong>.</p>
            <p style="margin:0;color:#888;font-size:13px">If you did not request this, you can safely ignore this email.</p>
          </div>
          <div style="padding:16px 32px;background:#f9f9f9;border-top:1px solid #eee">
            <p style="margin:0;font-size:12px;color:#aaa">&copy; 2025 Resume2Interview &middot; Automated message, do not reply.</p>
          </div>
        </div>
      </body>
    </html>
    """

    plain_body = (
        f"{title}\n\n{instructions}\n\n"
        f"Your verification code: {otp}\n\n"
        f"This code expires in 15 minutes.\n"
        f"If you did not request this, ignore this email.\n\n"
        f"--- Resume2Interview Team"
    )

    clean_subject = subject

    payload = {
        "sender":  {"name": sender_name, "email": sender_email},
        "to":      [{"email": to_email}],
        "replyTo": {"email": sender_email, "name": sender_name},
        "subject": clean_subject,
        "htmlContent": html_body,
        "textContent": plain_body,
        "tags": ["transactional", "otp"],
    }

    headers = {
        "accept":       "application/json",
        "content-type": "application/json",
        "api-key":      api_key,
    }

    try:
        resp = requests.post(BREVO_SEND_URL, json=payload, headers=headers, timeout=15)
        if resp.status_code in (200, 201, 202):
            logger.info(f"OTP email sent successfully to {to_email} via Brevo.")
            return True
        else:
            logger.error(f"Brevo API error {resp.status_code}: {resp.text}")
            _fallback_terminal(to_email, otp, title)
            return False
    except Exception as exc:
        logger.error(f"Failed to call Brevo API for {to_email}: {exc}")
        _fallback_terminal(to_email, otp, title)
        return False


def _fallback_terminal(to_email: str, otp: str, title: str) -> None:
    print("\n" + "=" * 50)
    print(f" {title.upper()} (FALLBACK — no email sent)")
    print(f" To:  {to_email}")
    print(f" OTP: {otp}")
    print("=" * 50 + "\n")
