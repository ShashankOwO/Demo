import os, sys, requests
sys.path.insert(0, os.path.abspath(os.path.dirname(__file__)))
from dotenv import load_dotenv
load_dotenv(override=True)

api_key    = os.getenv("BREVO_API_KEY", "")
email_user = os.getenv("EMAIL_USER", "")

print(f"API Key length: {len(api_key)}")
print(f"Sender: {email_user}")

payload = {
    "sender":  {"name": "Resume2Interview", "email": email_user},
    "to":      [{"email": email_user}],
    "subject": "R2I Test Email",
    "textContent": "Test OTP: 999888 — Brevo is working!",
}
headers = {
    "accept":       "application/json",
    "content-type": "application/json",
    "api-key":      api_key,
}
resp = requests.post("https://api.brevo.com/v3/smtp/email", json=payload, headers=headers, timeout=15)
print(f"Status: {resp.status_code}")
print(f"Body:   {resp.text[:500]}")
