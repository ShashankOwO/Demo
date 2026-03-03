import json
import logging

logger = logging.getLogger(__name__)

def evaluate_answer(question: str, answer: str, category: str) -> dict:
    """
    Evaluates an answer against a question using an LLM.
    Presently returns a deterministic dummy JSON structure.
    
    Returns:
        dict: A dictionary containing:
            - score (int): 0-100
            - strengths (list[str])
            - improvements (list[str])
    """
    
    # Calculate a deterministic pseudo-score based on answer length 
    # just to vary the dummy data slightly for testing.
    base_score = min(100, max(0, len(answer) // 2))
    
    dummy_response = {
        "score": base_score,
        "strengths": [
            f"Addressed the core concept of the {category} question.",
            "Provided a structured response."
        ],
        "improvements": [
            "Consider adding more real-world examples.",
            "Expand on edge cases related to the topic."
        ]
    }
    
    return dummy_response
