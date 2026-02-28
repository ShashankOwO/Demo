"""
test_parser.py — quick unit test, run with:
    venv\Scripts\python.exe test_parser.py
"""
import sys
sys.path.insert(0, ".")

from app.services.resume_service import (
    detect_sections_dynamic,
    _detect_experience_years,
    _match_skills_in_text,
    _extract_skills_section_fallback,
)

SEP = "-" * 60

# ─────────────────────────────────────────────────────────────
# Test 1 — Resume with "Core Competencies" header
# ─────────────────────────────────────────────────────────────
RESUME_1 = """\
John Doe | john@example.com

PROFESSIONAL SUMMARY
Backend engineer with 5 years of experience building scalable services.

Core Competencies
Python, FastAPI, Django, PostgreSQL, Docker, REST API, System Design, Microservices

PROFESSIONAL EXPERIENCE
Backend Developer - TechCorp  2019 - 2024
Built Python FastAPI services. Managed PostgreSQL. Deployed with Docker on AWS.

EDUCATION
B.Tech Computer Science 2015 - 2019
"""

print(SEP)
print("TEST 1 — 'Core Competencies' header")
print(SEP)
sections1 = detect_sections_dynamic(RESUME_1)
print(f"Detected sections : {list(sections1.keys())}")
assert "skills" in sections1, "FAIL: 'skills' section not detected from 'Core Competencies'"
print(f"Skills section    : {sections1['skills'][:120]!r}")

skills1 = _match_skills_in_text(sections1["skills"])
all_skills1 = [s for v in skills1.values() for s in v]
print(f"Skills matched    : {all_skills1}")
assert "Python" in all_skills1,     "FAIL: Python not matched"
assert "FastAPI" in all_skills1,    "FAIL: FastAPI not matched"
assert "PostgreSQL" in all_skills1, "FAIL: PostgreSQL not matched"
assert "REST API" in all_skills1,   "FAIL: REST API not matched"

exp1 = _detect_experience_years(RESUME_1)
print(f"Experience years  : {exp1}")
assert exp1 is not None and exp1 > 0, "FAIL: experience not detected"

print("TEST 1 PASSED ✅\n")

# ─────────────────────────────────────────────────────────────
# Test 2 — Resume with NO Skills header (inline "Programming Languages:")
# ─────────────────────────────────────────────────────────────
RESUME_2 = """\
Jane Smith | jane@example.com

WORK EXPERIENCE
Full Stack Developer - StartupXYZ  Jan 2021 - Present
Built React frontend with Node.js Express backend.
Used MongoDB for storage and Redis for caching.
Deployed using GitHub Actions CI/CD pipelines.

Programming Languages: JavaScript, TypeScript, Python
Technologies: React, Next.js, MongoDB, Docker

EDUCATION
B.E. Anna University 2017 - 2021
"""

print(SEP)
print("TEST 2 — No Skills header (fallback heuristic)")
print(SEP)
sections2 = detect_sections_dynamic(RESUME_2)
print(f"Detected sections : {list(sections2.keys())}")
# "skills" should NOT be a key — fallback must kick in
skills_sec = sections2.get("skills", "")
if not skills_sec.strip():
    lines2 = RESUME_2.splitlines()
    fallback_text = _extract_skills_section_fallback(lines2)
    print(f"Fallback text     : {fallback_text[:200]!r}")
    assert fallback_text.strip(), "FAIL: fallback heuristic returned empty"
    skills2 = _match_skills_in_text(fallback_text)
else:
    skills2 = _match_skills_in_text(skills_sec)

all_skills2 = [s for v in skills2.values() for s in v]
print(f"Skills matched    : {all_skills2}")
assert "JavaScript" in all_skills2, "FAIL: JavaScript not matched"
assert "TypeScript" in all_skills2, "FAIL: TypeScript not matched"
assert "Python"     in all_skills2, "FAIL: Python not matched"

exp2 = _detect_experience_years(RESUME_2)
print(f"Experience years  : {exp2}")
assert exp2 is not None and exp2 > 0, "FAIL: date-range experience not detected"

print("TEST 2 PASSED ✅\n")

# ─────────────────────────────────────────────────────────────
# Test 3 — Date range formats
# ─────────────────────────────────────────────────────────────
print(SEP)
print("TEST 3 — Date range experience parsing")
print(SEP)

samples = [
    ("2019 – 2024 Backend Dev",             5),
    ("Jan 2020 - Present Full Stack Dev",   None),   # present = current year span
    ("May 2008 – Sept 2012 Engineer",       4),
]
for text, expected_min in samples:
    result = _detect_experience_years(text)
    print(f"  {text!r:50s} → {result}")
    assert result is not None and result >= 0, f"FAIL: got None for {text!r}"
    if expected_min:
        assert result >= expected_min, f"FAIL: expected >= {expected_min}, got {result}"

print("TEST 3 PASSED ✅\n")

print(SEP)
print("ALL TESTS PASSED ✅")
print(SEP)
