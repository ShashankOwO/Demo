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


def generate_questions(question_plan: dict, role: str, experience: int, count: int) -> list[dict]:
    """
    Generates tailored interview questions using Gemini based on the structured question_plan.
    Returns an empty list if it fails or if no API key is provided, so callers can fallback.
    """
    if not settings.gemini_api_key:
        return []

    dist = question_plan.get("distribution", {})
    # Since we now generate pairs, dist values are halved (e.g. 2 weak = 2 pairs = 4 total questions)
    weak_count = max(1, dist.get("weak", 0) // 2) if dist.get("weak", 0) > 0 else 0
    primary_count = max(1, dist.get("primary", 0) // 2) if dist.get("primary", 0) > 0 else 0
    
    # We need exactly 5 question pairs. The remaining belong to secondary.
    secondary_count = max(0, 5 - weak_count - primary_count)
    
    # If the user requested count=10 originally, count represents 10 questions. But we need 5 pairs.
    pair_count = max(1, count // 2)

    weak_skills = ", ".join(question_plan.get("weak_skills", [])) or "None"
    primary_skills = ", ".join(question_plan.get("primary_skills", [])) or "None"
    secondary_skills = ", ".join(question_plan.get("secondary_skills", [])) or "None"

    system_instruction = (
        f"Generate a realistic technical interview with exactly {pair_count} main technical questions.\n\n"
        f"Use the following distribution for the main questions:\n\n"
        f"Weak skills → {weak_count} questions\n"
        f"Primary role skills → {primary_count} questions\n"
        f"Secondary skills → {secondary_count} questions\n\n"
        f"Skills:\n\n"
        f"Weak Skills:\n{weak_skills}\n\n"
        f"Primary Skills:\n{primary_skills}\n\n"
        f"Secondary Skills:\n{secondary_skills}\n\n"
        f"Experience:\n{experience} years\n\n"
        f"Rules\n\n"
        f"• Produce exactly {pair_count} main technical questions\n"
        f"• Each question must include one follow-up question\n"
        f"• Follow-up questions must probe deeper into the same topic\n"
        f"• Questions must match the candidate experience level\n"
        f"• Prioritize weak skills first\n"
        f"• Avoid duplicate topics\n"
        f"• Cover multiple technologies\n"
        f"• Return JSON format\n\n"
        f"[\n"
        f' {{\n   "main_question": "...",\n   "follow_up_question": "...",\n   "category": "..."\n }}\n'
        f"]"
    )

    prompt = f"Generate exactly {pair_count} question pairs according to the system instructions."

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
