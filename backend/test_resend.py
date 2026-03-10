import resend
import os
from dotenv import load_dotenv
import traceback

load_dotenv(override=True)

def test_resend_api():
    resend.api_key = os.getenv("RESEND_API_KEY", "")
    from_email = os.getenv("EMAIL_FROM", "onboarding@resend.dev")
    to_email = "mfury935@gmail.com"  # Hardcoding for test

    print(f"API Key starting with: {resend.api_key[:5]}...")
    print(f"From: {from_email}")
    print(f"To: {to_email}")

    params = {
        "from": from_email,
        "to": [to_email],
        "subject": "Resend API Test",
        "html": "<strong>It works!</strong>"
    }

    try:
        print("Sending request to Resend API...")
        email = resend.Emails.send(params)
        print(f"SUCCESS! Email dispatched. Response: {email}")
    except Exception as e:
        print("\n=== RESEND API ERROR ===")
        print(f"Exception Type: {type(e).__name__}")
        print(f"Error Message: {str(e)}")
        print("\nTraceback:")
        traceback.print_exc()

if __name__ == "__main__":
    test_resend_api()
