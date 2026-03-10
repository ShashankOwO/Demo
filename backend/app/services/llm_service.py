import json
import logging
from google import genai
from google.genai import types
from app.core.config import get_settings

logger = logging.getLogger(__name__)

settings = get_settings()

MODEL_NAME = "gemini-1.5-flash"

# Initialise the client once at module load
_client: genai.Client | None = None

def _get_client() -> genai.Client:
    global _client
    if _client is None:
        if not settings.gemini_api_key:
            raise RuntimeError("GEMINI_API_KEY not set")
        _client = genai.Client(api_key=settings.gemini_api_key)
    return _client


def evaluate_answer(question: str, answer: str, category: str, role: str = None) -> dict:
    """
    Evaluates an answer against a question using Gemini.
    Falls back to deterministic scoring if API key is missing or call fails.
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

    if not settings.gemini_api_key:
        logger.warning("No Gemini API key found. Using fallback scoring.")
        return fallback_response

    role_context = (
        f" The candidate is interviewing for a '{role}' position. "
        f"Vary the strictness and context of the suggestions accurately against "
        f"standard industry expectations for this specific role."
    ) if role else " Provide general technical feedback."

    system_instruction = (
        f"You are an expert technical interviewer evaluating a candidate's answer.\n"
        f"Evaluate the following answer to the given question in the category '{category}'.{role_context}\n"
        f"Provide a score from 0 to 100, a list of strengths, a list of improvements, "
        f"and a list of actionable suggestions specifically tailored to their role.\n"
        f"You MUST return ONLY a valid JSON object matching this schema exactly, "
        f"and absolutely NO markdown formatting or other text:\n"
        f'{{"score": integer, "strengths": ["string"], "improvements": ["string"], "suggestions": ["string"]}}'
    )

    prompt = f"Question: {question}\n\nCandidate Answer: {answer}"

    try:
        client = _get_client()
        response = client.models.generate_content(
            model=MODEL_NAME,
            contents=prompt,
            config=types.GenerateContentConfig(
                system_instruction=system_instruction,
                response_mime_type="application/json",
            ),
        )

        result = json.loads(response.text)

        return {
            "score": max(0, min(100, int(result.get("score", 0)))),
            "strengths": result.get("strengths", []) or ["Good effort."],
            "improvements": result.get("improvements", []) or ["Detail edge cases."],
            "suggestions": result.get("suggestions", []) or ["Practice more."]
        }
    except Exception as e:
        logger.error(f"Error calling Gemini for evaluation: {e}")
        fallback_response["strengths"] = ["Failed to reach AI. Using length-based scoring."]
        return fallback_response


def generate_questions(skills: list[str], role: str, experience: int, count: int, weakest_category: str = None) -> list[dict]:
    """
    Generates tailored interview questions using Gemini based on the user's resume signals.
    Returns an empty list if it fails or if no API key is provided, so callers can fallback.
    """
    if not settings.gemini_api_key:
        return []

    role_str = f"'{role}' role" if role else "Software Engineering role"
    weakness_rule = (
        f"Ensure at least 30% of the questions focus heavily on '{weakest_category}' "
        f"as the candidate needs more practice there."
    ) if weakest_category else ""

    system_instruction = (
        f"You are an expert technical interviewer preparing questions for a candidate.\n"
        f"The candidate has {experience} years of experience and is applying for a {role_str}.\n"
        f"Their detected technical skills include: {', '.join(skills)}.\n"
        f"{weakness_rule}\n\n"
        f"Generate {count} distinct technical interview questions tailored to their skills and experience level.\n"
        f"You MUST return ONLY a valid JSON array matching this schema exactly, "
        f"and absolutely NO markdown formatting or other text:\n"
        f'[{{"question": "string", "category": "string"}}]'
    )

    prompt = f"Generate {count} questions."

    try:
        client = _get_client()
        response = client.models.generate_content(
            model=MODEL_NAME,
            contents=prompt,
            config=types.GenerateContentConfig(
                system_instruction=system_instruction,
                response_mime_type="application/json",
            ),
        )
        result = json.loads(response.text)

        if isinstance(result, list):
            return result[:count]
        elif isinstance(result, dict) and "questions" in result:
            return result["questions"][:count]

        return []
    except Exception as e:
        logger.error(f"Error calling Gemini for generation: {e}")
        return []


def generate_interview_summary(role: str, overall_score: int, feedback_level: str, category_scores: dict) -> str:
    """
    Synthesize a 3-4 line paragraph globally summarizing the interview based on aggregated metrics.
    """
    fallback_summary = (
        f"Interview completed. Score: {overall_score}/100 — {feedback_level}. "
        f"Topics covered: {', '.join(category_scores.keys()) if category_scores else 'general topics'}."
    )

    if not settings.gemini_api_key:
        return fallback_summary

    role_str = f"'{role}' role" if role else "Software Engineering position"
    cats = ", ".join([f"{k} (Score: {v})" for k, v in category_scores.items()])

    system_instruction = (
        f"You are an expert technical interviewer synthesizing a final candidate report.\n"
        f"The candidate just finished an interview for a {role_str}.\n"
        f"Overall Score: {overall_score}/100 ({feedback_level}).\n"
        f"Category Breakdown: {cats}.\n\n"
        f"Provide a concise, professional 3-4 line paragraph summarizing their performance. "
        f"State clearly what they excelled at and what their primary weakness was, "
        f"relating it directly to the {role_str}.\n"
        f"You MUST return ONLY the summary paragraph text, absolutely NO markdown, bullet points, or JSON."
    )

    try:
        client = _get_client()
        response = client.models.generate_content(
            model=MODEL_NAME,
            contents="Generate the 3-4 line summary paragraph.",
            config=types.GenerateContentConfig(
                system_instruction=system_instruction,
            ),
        )
        return response.text.replace('\n', ' ').strip()
    except Exception as e:
        logger.error(f"Error calling Gemini for summary: {e}")
        return fallback_summary
