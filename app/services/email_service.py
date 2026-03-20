import smtplib
import uuid
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from app.core.config import get_settings
from app.core.logger import get_logger

logger = get_logger(__name__)
settings = get_settings()

def send_otp_email(to_email: str, otp: str, subject: str, title: str, instructions: str) -> bool:
    """
    Sends a 6-digit OTP code to the specified email address using standard smtplib and Google's SMTP.
    Requires EMAIL_USER and EMAIL_PASS environment variables.
    """
    email_user = settings.email_user
    email_pass = settings.email_pass.replace(" ", "") if settings.email_pass else ""
    
    if not email_user or not email_pass:
        logger.warning("EMAIL_USER or EMAIL_PASS missing in environment. Falling back to terminal display.")
        fallback_terminal(to_email, otp, title)
        return True

    html_content = f"""
    <html>
      <body style="font-family: Arial, sans-serif; color: #333; background-color: #f4f4f4; margin: 0; padding: 0;">
        <div style="max-width: 560px; margin: 40px auto; background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,0.08);">
          <div style="background: #4F46E5; padding: 28px 32px;">
            <h1 style="margin: 0; color: #ffffff; font-size: 20px; font-weight: 700;">Resume2Interview</h1>
          </div>
          <div style="padding: 32px;">
            <h2 style="margin: 0 0 12px; font-size: 18px; color: #1a1a2e;">{title}</h2>
            <p style="margin: 0 0 24px; color: #555; line-height: 1.6;">{instructions}</p>
            <div style="background: #f8f7ff; border: 2px dashed #4F46E5; border-radius: 8px; padding: 20px; text-align: center; margin-bottom: 24px;">
              <span style="font-size: 32px; font-weight: 800; letter-spacing: 10px; color: #4F46E5;">{otp}</span>
            </div>
            <p style="margin: 0 0 8px; color: #888; font-size: 13px;">This code expires in <strong>15 minutes</strong>.</p>
            <p style="margin: 0; color: #888; font-size: 13px;">If you did not request this, you can safely ignore this email.</p>
          </div>
          <div style="padding: 16px 32px; background: #f9f9f9; border-top: 1px solid #eee;">
            <p style="margin: 0; font-size: 12px; color: #aaa;">&copy; 2025 Resume2Interview &middot; This is an automated message, please do not reply.</p>
          </div>
        </div>
      </body>
    </html>
    """

    plain_text = (
        f"{title}\n\n"
        f"{instructions}\n\n"
        f"Your verification code: {otp}\n\n"
        f"This code expires in 15 minutes.\n"
        f"If you did not request this, you can safely ignore this email.\n\n"
        f"--- Resume2Interview Team"
    )

    # Use a clean subject WITHOUT the OTP code — including OTP in subject is a spam trigger
    clean_subject = subject.split("(")[0].strip() if "(" in subject else subject

    msg = MIMEMultipart("alternative")
    msg["Subject"] = clean_subject
    msg["From"] = f"Resume2Interview <{email_user}>"
    msg["To"] = to_email
    msg["X-Mailer"] = "Resume2Interview Mailer/1.0"
    msg["Message-ID"] = f"<{uuid.uuid4().hex}@resume2interview>"

    # Plain text first (spam filters prefer emails with both parts)
    msg.attach(MIMEText(plain_text, "plain", "utf-8"))
    msg.attach(MIMEText(html_content, "html", "utf-8"))

    try:
        server = smtplib.SMTP('smtp.gmail.com', 587)
        server.ehlo()
        server.starttls()
        server.ehlo()
        server.login(email_user, email_pass)
        server.sendmail(email_user, [to_email], msg.as_string())
        server.quit()
        logger.info(f"OTP email sent successfully to {to_email}.")
        return True
    except Exception as e:
        logger.error(f"Failed to send OTP email to {to_email}: {str(e)}")
        fallback_terminal(to_email, otp, title)
        return False

def fallback_terminal(to_email: str, otp: str, title: str):
    print("\n" + "="*50)
    print(f" {title.upper()} (FALLBACK)")
    print(f" To: {to_email}")
    print(f" OTP: {otp}")
    print("="*50 + "\n")
