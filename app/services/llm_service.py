"""
LLM Service — NVIDIA NIM primary, Google Gemini fallback.

Priority:
  1. NVIDIA NIM (rotates through NVIDIA_API_KEYS on rate-limit / auth errors)
  2. Gemini (falls back when all NVIDIA keys are exhausted)
  3. Length-based deterministic scoring as last resort

Add more NVIDIA keys to the .env NVIDIA_API_KEYS as a comma-separated list.
"""

import json
import logging
import time
from typing import cast, Any

from openai import OpenAI, RateLimitError, AuthenticationError, APIError
from google import genai  # pyre-ignore

from app.core.config import get_settings  # pyre-ignore

logger = logging.getLogger(__name__)
settings = get_settings()

# ── NVIDIA NIM config ──────────────────────────────────────────────────────────
NVIDIA_BASE_URL = "https://integrate.api.nvidia.com/v1"
NVIDIA_MODEL = "meta/llama-3.3-70b-instruct"
GEMINI_MODEL = "gemini-2.0-flash-lite"

# ── Internal client caches ─────────────────────────────────────────────────────
_gemini_client = None


def _get_gemini_client():
    global _gemini_client
    if _gemini_client is None:
        if not settings.gemini_api_key:
            raise RuntimeError("GEMINI_API_KEY not set")
        _gemini_client = genai.Client(api_key=settings.gemini_api_key)
    return _gemini_client


def _get_nvidia_client(api_key: str) -> OpenAI:
    return OpenAI(base_url=NVIDIA_BASE_URL, api_key=api_key)


# ── Core request helpers ───────────────────────────────────────────────────────

def _nvidia_chat(prompt: str, max_tokens: int = 1024) -> str:
    """
    Try each NVIDIA key in order. Rotates on RateLimitError or AuthenticationError.
    Returns the response text, or raises if all keys are exhausted.
    """
    keys = settings.nvidia_api_keys
    if not keys:
        raise RuntimeError("No NVIDIA_API_KEYS configured")

    last_error: Exception = RuntimeError("No keys tried")
    for idx, key in enumerate(keys):
        try:
            client = _get_nvidia_client(key)
            resp = client.chat.completions.create(
                model=NVIDIA_MODEL,
                messages=[{"role": "user", "content": prompt}],
                max_tokens=max_tokens,
                temperature=0.7,
            )
            text = (resp.choices[0].message.content or "").strip()
            logger.debug(f"NVIDIA key #{idx + 1} succeeded.")
            return text
        except (RateLimitError, AuthenticationError) as e:
            logger.warning(f"NVIDIA key #{idx + 1} failed ({type(e).__name__}). Trying next…")
            last_error = e
        except APIError as e:
            logger.warning(f"NVIDIA API error with key #{idx + 1}: {e}. Trying next…")
            last_error = e
        except Exception as e:
            logger.warning(f"Unexpected error with NVIDIA key #{idx + 1}: {e}. Trying next…")
            last_error = e

    raise last_error


def _gemini_chat(prompt: str, max_retries: int = 3) -> str:
    """Call Gemini with exponential back-off on 429 errors."""
    client = _get_gemini_client()
    delay: int = 4
    last_err: Exception = RuntimeError("Gemini: no attempts made")
    for attempt in range(max_retries):
        try:
            resp = client.models.generate_content(model=GEMINI_MODEL, contents=prompt)
            return (resp.text or "").strip()  # pyre-ignore
        except Exception as e:
            err_str = str(e)
            if "429" in err_str or "RESOURCE_EXHAUSTED" in err_str:
                if attempt < max_retries - 1:
                    logger.warning(f"Gemini 429. Retrying in {delay}s… (attempt {attempt + 1})")
                    time.sleep(delay)
                    delay = delay * 2  # pyre-ignore
                else:
                    last_err = e
            else:
                raise
    raise last_err


def _call_llm(prompt: str, max_tokens: int = 1024) -> str:
    """
    Unified entry point:  NVIDIA NIM  →  Gemini  →  raises RuntimeError.
    """
    # 1. Try NVIDIA
    if settings.nvidia_api_keys:
        try:
            return _nvidia_chat(prompt, max_tokens=max_tokens)
        except Exception as e:
            logger.error(f"All NVIDIA keys failed: {e}. Falling back to Gemini.")

    # 2. Gemini fallback
    if settings.gemini_api_key:
        try:
            return _gemini_chat(prompt)
        except Exception as e:
            logger.error(f"Gemini also failed: {e}")
            raise

    raise RuntimeError("No LLM provider available (no NVIDIA keys or Gemini key configured).")


# ── JSON helpers ───────────────────────────────────────────────────────────────

def _clean_json(text: str) -> str:
    """Strip markdown fences from LLM JSON responses."""
    text = text.strip()
    if text.startswith("```json"):
        text = text[7:]  # pyre-ignore
    elif text.startswith("```"):
        text = text[3:]  # pyre-ignore
    if text.endswith("```"):
        text = text[:-3]  # pyre-ignore
    return text.strip()


# ── Public API ─────────────────────────────────────────────────────────────────

def evaluate_answer(question: str, answer: str, category: str, role: str | None = None) -> dict:
    """
    Evaluates an interview answer using NVIDIA NIM → Gemini → deterministic fallback.
    """
    fallback_response = {
        "score": min(100, max(0, len(answer) // 2)),
        "strengths": [
            f"Addressed the core concept of the {category} question.",
            "Provided a structured response."
        ],
        "improvements": [
            "Consider adding more real-world examples.",
            "Expand on edge cases related to the topic."
        ],
        "suggestions": [
            "Review further documentation to improve confidence."
        ]
    }

    if not settings.nvidia_api_keys and not settings.gemini_api_key:
        logger.warning("No LLM provider available. Using fallback scoring.")
        return fallback_response

    role_context = (
        f" The candidate is interviewing for a '{role}' position. "
        f"Vary the strictness of suggestions against standard industry expectations for this role."
    ) if role else " Provide general technical feedback."

    prompt = (
        f"You are an expert technical interviewer evaluating a candidate's answer.\n"
        f"Evaluate the following answer to the given question in category '{category}'.{role_context}\n"
        f"Provide a score from 0–100, a list of strengths, a list of improvements, "
        f"and a list of actionable suggestions tailored to their role.\n"
        f"Return ONLY a valid JSON object — NO markdown, NO extra text:\n"
        f'{{"score": integer, "strengths": ["string"], "improvements": ["string"], "suggestions": ["string"]}}\n\n'
        f"Question: {question}\n\nCandidate Answer: {answer}"
    )

    try:
        raw = _call_llm(prompt, max_tokens=512)
        result = cast(dict[str, Any], json.loads(_clean_json(raw)))
        return {
            "score": max(0, min(100, int(result.get("score", 0)))),
            "strengths": result.get("strengths", []) or ["Good effort."],
            "improvements": result.get("improvements", []) or ["Detail edge cases."],
            "suggestions": result.get("suggestions", []) or ["Practice more."]
        }
    except Exception as e:
        logger.error(f"LLM evaluation failed: {e}")
        return fallback_response


def generate_questions(question_plan: dict, role: str, experience: int, count: int) -> list:
    """
    Generates tailored interview questions using NVIDIA NIM → Gemini.
    Returns an empty list on complete failure so callers can use static fallbacks.
    """
    dist = question_plan.get("distribution", {})
    weak_count = max(1, dist.get("weak", 0) // 2) if dist.get("weak", 0) > 0 else 0
    primary_count = max(1, dist.get("primary", 0) // 2) if dist.get("primary", 0) > 0 else 0
    secondary_count = max(0, 5 - weak_count - primary_count)
    pair_count = max(1, count // 2)

    weak_skills = ", ".join(question_plan.get("weak_skills", [])) or "None"
    primary_skills = ", ".join(question_plan.get("primary_skills", [])) or "None"
    secondary_skills = ", ".join(question_plan.get("secondary_skills", [])) or "None"

    prompt = (
        f"Generate a realistic technical interview with exactly {pair_count} main technical questions.\n\n"
        f"Distribution:\n"
        f"  Weak skills        → {weak_count} questions\n"
        f"  Primary role skills → {primary_count} questions\n"
        f"  Secondary skills   → {secondary_count} questions\n\n"
        f"Skills:\n"
        f"  Weak:      {weak_skills}\n"
        f"  Primary:   {primary_skills}\n"
        f"  Secondary: {secondary_skills}\n\n"
        f"Experience: {experience} years\n\n"
        f"Rules:\n"
        f"- Exactly {pair_count} main technical questions\n"
        f"- Each must have one follow-up question probing deeper\n"
        f"- Match the candidate's experience level\n"
        f"- Prioritize weak skills first; avoid duplicates\n"
        f"- The 'category' field MUST be the EXACT specific technical skill being tested (e.g. 'Python', 'React', 'System Design'), NOT a generic group string like 'Primary skills'.\n"
        f"- Return ONLY a valid JSON array, no markdown:\n"
        f'[{{"main_question": "...", "follow_up_question": "...", "category": "..."}}]'
    )

    try:
        raw = _call_llm(prompt, max_tokens=1024)
        result = cast(Any, json.loads(_clean_json(raw)))
        limit = int(count)
        if isinstance(result, list):
            return [q for i, q in enumerate(result) if i < limit]
        elif isinstance(result, dict) and "questions" in result:
            return [q for i, q in enumerate(cast(list, result["questions"])) if i < limit]
        return []
    except Exception as e:
        logger.error(f"LLM question generation failed: {e}")
        return []


def generate_interview_summary(role: str, overall_score: int, feedback_level: str, category_scores: dict) -> str:
    """
    Synthesizes a 5–6 line professional summary of the interview.
    Falls back to a short deterministic string on failure.
    """
    fallback_summary = (
        f"Interview completed. Score: {overall_score}/100 — {feedback_level}. "
        f"Topics covered: {', '.join(category_scores.keys()) if category_scores else 'general topics'}."
    )

    role_str = f"'{role}' role" if role else "Software Engineering position"
    cats = ", ".join([f"{k} (Score: {v})" for k, v in category_scores.items()])

    prompt = (
        f"You are an expert technical interviewer synthesizing a final candidate report.\n"
        f"The candidate just finished an interview for a {role_str}.\n"
        f"Overall Score: {overall_score}/100 ({feedback_level}).\n"
        f"Category Breakdown: {cats}.\n\n"
        f"Write a concise, professional 5–6 line paragraph summarizing their performance. "
        f"Clearly state what they excelled at and their primary weakness, relating it to the {role_str}.\n"
        f"Return ONLY the summary paragraph text — NO markdown, NO bullet points, NO JSON."
    )

    try:
        return _call_llm(prompt, max_tokens=300).replace("\n", " ").strip()
    except Exception as e:
        logger.error(f"LLM summary generation failed: {e}")
        return fallback_summary


def extract_resume_details(text: str) -> dict:
    """
    Extracts experience years and target role from resume text via NVIDIA NIM → Gemini.
    Returns an empty dict on failure.
    """
    prompt = (
        "You are an expert HR data extractor. Read the following resume text and extract:\n"
        "1. Total years of professional work experience (as an integer). Exclude education/internships if possible.\n"
        "2. The most appropriate target job role title based on their experience and skills.\n\n"
        "Return ONLY a valid JSON object with these keys:\n"
        '{"experience_years": integer, "target_role": "string or null"}\n\n'
        f"Resume Text:\n{str(text)[0:8000]}  # pyre-ignore"
    )

    try:
        raw = _call_llm(prompt, max_tokens=256)
        result = cast(dict[str, Any], json.loads(_clean_json(raw)))
        return {
            "experience_years": int(result.get("experience_years", 0)) if result.get("experience_years") is not None else 0,
            "target_role": result.get("target_role")
        }
    except Exception as e:
        logger.error(f"LLM resume extraction failed: {e}")
        return {}
