import requests
import json

resp = requests.post("http://localhost:5000/auth/login", json={"email": "notanemail", "password": "123"})
print(f"Status: {resp.status_code}")
print(f"Headers: {resp.headers}")
print(f"Body: {resp.text}")
