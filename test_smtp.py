import smtplib
from email.message import EmailMessage
import os
from dotenv import load_dotenv
import traceback

# Force reload dotenv just in case
load_dotenv(override=True)

def test_smtp():
    server = os.getenv("SMTP_SERVER", "smtp.gmail.com")
    port = int(os.getenv("SMTP_PORT", 587))
    user = os.getenv("SMTP_USERNAME", "")
    password = os.getenv("SMTP_PASSWORD", "")
    from_email = os.getenv("SMTP_FROM_EMAIL", "noreply@resume2interview.com")

    print(f"Server: {server}")
    print(f"Port: {port}")
    print(f"User: {user}")
    print(f"Password provided: {'YES' if password else 'NO'}")
    
    if not user or not password:
        print("ERROR: Missing username or password in .env")
        return

    msg = EmailMessage()
    msg['Subject'] = 'SMTP Test'
    msg['From'] = from_email
    msg['To'] = user
    msg.set_content("This is a test email to verify SMTP configuration.")

    try:
        print("Connecting to SMTP server...")
        smtp = smtplib.SMTP(server, port, timeout=10)
        smtp.set_debuglevel(1)  # Enable verbose output
        print("Starting TLS...")
        smtp.starttls()
        print("Logging in...")
        smtp.login(user, password)
        print("Sending message...")
        smtp.send_message(msg)
        print("Closing connection...")
        smtp.quit()
        print("SUCCESS! Email sent.")
    except Exception as e:
        print("\n=== SMTP ERROR ===")
        print(f"Exception Type: {type(e).__name__}")
        print(f"Error Message: {str(e)}")
        print("\nTraceback:")
        traceback.print_exc()

if __name__ == "__main__":
    test_smtp()
