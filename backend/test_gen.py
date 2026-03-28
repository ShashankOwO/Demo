import urllib.request
import json
import uuid

BASE_URL = "http://127.0.0.1:5000"

def make_request(url, method="GET", data=None, headers=None):
    if headers is None:
        headers = {}
    
    if data:
        data = json.dumps(data).encode('utf-8')
        headers['Content-Type'] = 'application/json'
        
    req = urllib.request.Request(url, data=data, headers=headers, method=method)
    try:
        res = urllib.request.urlopen(req)
        body = res.read().decode('utf-8')
        try:
            return res.getcode(), json.loads(body)
        except json.JSONDecodeError:
            return res.getcode(), body
    except urllib.error.HTTPError as e:
        body = e.read().decode('utf-8')
        try:
            return e.code, json.loads(body)
        except json.JSONDecodeError:
            return e.code, body

test_email = f"test_{uuid.uuid4().hex[:8]}@test.com"
status, res = make_request(f"{BASE_URL}/auth/register", "POST", {"email": test_email, "password": "password123"})
status, res = make_request(f"{BASE_URL}/auth/login", "POST", {"email": test_email, "password": "password123"})
token = res['access_token']
auth_headers = {"Authorization": f"Bearer {token}"}

gen_data = {
    "skills": ["Python", "Django", "React", "Node", "CustomTool"],
    "target_role": "Full Stack",
    "experience_years": 2
}
status, res = make_request(f"{BASE_URL}/resume/generate-questions", "POST", gen_data, auth_headers)
print(f"Status: {status}")
print(json.dumps(res, indent=2))
