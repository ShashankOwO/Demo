def evaluate_answer(question: str, answer: str, category: str) -> dict:
    """
    Evaluates an interview answer using AI (currently a deterministic dummy implementation).
    Returns a dictionary with:
    - score: int (0 to 100)
    - strengths: list[str]
    - improvements: list[str]
    """
    answer_len = len(answer.strip())
    
    # Dummy deterministic logic
    if answer_len > 150:
        score = 90
        strengths = ["Detailed and comprehensive response.", "Shows clear understanding of the 'why'."]
        improvements = ["Could be more concise."]
    elif answer_len > 50:
        score = 75
        strengths = ["Covers the basics well."]
        improvements = ["Provide more specific examples.", "Elaborate more on your personal contribution."]
    elif answer_len > 10:
        score = 45
        strengths = ["Attempted the question."]
        improvements = ["Answer is far too short.", "Requires much more detail to be evaluated properly."]
    else:
        score = 10
        strengths = []
        improvements = ["No meaningful answer provided."]
        
    return {
        "score": score,
        "strengths": strengths,
        "improvements": improvements
    }
