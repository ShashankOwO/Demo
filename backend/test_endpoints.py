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

def run_tests():
    # 1. Register a new user
    print("--- Test 1/4: Register User ---")
    test_email = f"test_{uuid.uuid4().hex[:8]}@test.com"
    status, res = make_request(f"{BASE_URL}/auth/register", "POST", {"email": test_email, "password": "password123"})
    print(f"Status: {status}\nResponse: {res}")
    
    # 2. Login to get token
    print("\n--- Test 2/4: Login to get token ---")
    status, res = make_request(f"{BASE_URL}/auth/login", "POST", {"email": test_email, "password": "password123"})
    print(f"Status: {status}\nResponse: {res}")
    
    if status != 200 or 'access_token' not in res:
        print("Login failed, aborting tests.")
        return
        
    token = res['access_token']
    auth_headers = {"Authorization": f"Bearer {token}"}
    
    # 3. Create an Interview
    print("\n--- Test 3/4: Create Interview ---")
    interview_data = {
        "responses": [
            {"question": "What is Python?", "answer": "A programming language.", "category": "Technical"}
        ]
    }
    status, res = make_request(f"{BASE_URL}/interviews/", "POST", interview_data, auth_headers)
    print(f"Status: {status}\nResponse: {res}")
    
    # 4. Get Interviews
    print("\n--- Test 4/4: Get Interviews ---")
    status, res = make_request(f"{BASE_URL}/interviews/", "GET", headers=auth_headers)
    print(f"Status: {status}\nResponse: {json.dumps(res, indent=2)}")
    
    # Check Analytics
    print("\n--- Check: Analytics Endpoint ---")
    status, res = make_request(f"{BASE_URL}/analytics/", "GET", headers=auth_headers)
    print(f"Status: {status}\nResponse: {res}")


if __name__ == "__main__":
    run_tests()
