from datetime import datetime, timedelta, date
from sqlalchemy import func
from app.database import db
from app.models.interview import Interview

def get_interview_streak(user_id: int) -> int:
    """
    Calculate the number of consecutive days the user has completed at least one interview,
    ending either today or yesterday.
    """
    # Fetch all unique interview dates for the user, in descending order
    dates_query = (
        db.session.query(func.date(Interview.created_at))
        .filter(Interview.user_id == user_id)
        .group_by(func.date(Interview.created_at))
        .order_by(func.date(Interview.created_at).desc())
        .all()
    )
    
    if not dates_query:
        return 0
        
    # Extract native Python date objects
    unique_dates = []
    for (d,) in dates_query:
        # In SQLite/MariaDB, func.date might return string or date object
        if isinstance(d, str):
            unique_dates.append(datetime.strptime(d, "%Y-%m-%d").date())
        else:
            unique_dates.append(d)

    today = datetime.utcnow().date()
    yesterday = today - timedelta(days=1)
    
    # If the user hasn't practiced today OR yesterday, their current streak is broken (0)
    if unique_dates[0] != today and unique_dates[0] != yesterday:
        return 0

    streak = 0
    current_check_date = unique_dates[0] # either today or yesterday
    
    for interview_date in unique_dates:
        if interview_date == current_check_date:
            streak += 1
            current_check_date -= timedelta(days=1)
        else:
            break
            
    return streak

def get_week_activity(user_id: int) -> list[dict[str, bool | str]]:
    """
    Returns an array representing the last 7 days (including today),
    indicating whether the user completed an interview on each day.
    Example: [{"day": "M", "completed": True}, ...]
    """
    today = datetime.utcnow().date()
    
    # We want 7 days, ending today.
    # We'll build a list of dates from today-6 to today (chronological order)
    last_7_dates = [today - timedelta(days=i) for i in range(6, -1, -1)]
    
    # Query database for these dates specifically to see which had an interview
    # Since we only care if an interview exists, we can group by date
    start_date = last_7_dates[0]
    
    activity_query = (
        db.session.query(func.date(Interview.created_at))
        .filter(Interview.user_id == user_id)
        .filter(func.date(Interview.created_at) >= start_date)
        .group_by(func.date(Interview.created_at))
        .all()
    )
    
    completed_date_strings = {str(d[0]) for d in activity_query}
    
    # Helper to get the first letter of the day (e.g. Monday -> "M")
    def get_day_letter(d: date) -> str:
        # strftime("%A") returns full day name, e.g. "Monday"
        # We just want the first letter, or "Th" / "Tu" if we wanted to be more specific?
        # The prompt asked for M T W T F S S
        day_name = d.strftime("%A")
        # Special case for weekend if we want 'S' and 'S'
        return day_name[0]

    week_activity = []
    for d in last_7_dates:
        is_completed = str(d) in completed_date_strings
        week_activity.append({
            "day": get_day_letter(d),
            "completed": is_completed
        })
        
    return week_activity
