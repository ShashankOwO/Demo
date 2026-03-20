import smtplib
from email.message import EmailMessage
import os
from dotenv import load_dotenv

load_dotenv(override=True)

def test_smtp_ssl():
    server = os.getenv("SMTP_SERVER", "smtp.gmail.com")
    port = 465  # Force SSL port for testing
    user = os.getenv("SMTP_USERNAME", "")
    password = os.getenv("SMTP_PASSWORD", "")

    print(f"Testing SSL on Server: {server}:{port}")
    
    try:
        print("Connecting to SMTP over SSL...")
        smtp = smtplib.SMTP_SSL(server, port, timeout=10)
        smtp.set_debuglevel(1)
        print("Logging in...")
        smtp.login(user, password)
        print("SUCCESS! Successfully connected and authenticated on port 465.")
        smtp.quit()
    except Exception as e:
        print("\n=== SSL SMTP ERROR ===")
        print(f"Exception Type: {type(e).__name__}")
        print(f"Error Message: {str(e)}")

if __name__ == "__main__":
    test_smtp_ssl()
