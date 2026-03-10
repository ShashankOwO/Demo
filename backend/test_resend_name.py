import resend
import os
from dotenv import load_dotenv

load_dotenv(override=True)
resend.api_key = os.getenv("RESEND_API_KEY")

from_email = os.getenv("EMAIL_FROM", "onboarding@resend.dev")
to_email = "mfury935@gmail.com"

params = {
    "from": f"Resume2Interview <{from_email}>",
    "to": [to_email],
    "subject": "Resend Free Tier Sender Name Test",
    "html": "<strong>Testing custom sender name</strong>"
}

try:
    print(f"Testing From: Resume2Interview <{from_email}>")
    response = resend.Emails.send(params)
    print(f"SUCCESS: {response}")
except Exception as e:
    print(f"ERROR: {str(e)}")
