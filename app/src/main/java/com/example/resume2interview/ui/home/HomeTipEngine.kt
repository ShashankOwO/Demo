package com.example.resume2interview.ui.home

import java.util.Calendar

/**
 * Generates contextual coaching tips based on the user's analytics data.
 * Tips adapt to score range, weak/strong categories, interview count, and resume skills.
 */
class HomeTipEngine {

    fun generateTips(data: HomeAnalyticsData): List<String> {
        val tips = mutableListOf<String>()

        // ── Interview count context ───────────────────────────────────────────
        when {
            data.interviewCount == 0 ->
                tips.add("Upload your resume to start interview practice")
            data.interviewCount < 3 ->
                tips.add("Keep going — complete a few more sessions to build momentum")
        }

        // ── Daily challenge ───────────────────────────────────────────────────
        if (data.todaySessions == 0) {
            tips.add("Complete 1 interview today to maintain your streak")
        } else if (data.todaySessions >= 3) {
            tips.add("Great work today — review your weakest answers")
        }

        // ── Score-based AI coaching message ───────────────────────────────────
        when {
            data.avgScore < 50 ->
                tips.add("Let's rebuild your fundamentals step by step")
            data.avgScore in 50..69 ->
                tips.add("You're improving — keep practicing technical explanations")
            data.avgScore in 70..85 ->
                tips.add("Strong progress. Focus on system design depth")
            data.avgScore > 85 ->
                tips.add("You're interview-ready — try advanced mock interviews")
        }

        // ── Weakest category deep-dives ───────────────────────────────────────
        data.weakestCategory?.let { weak ->
            when {
                weak.contains("System Design", ignoreCase = true) ->
                    tips.add("Practice scalability and distributed system questions")
                weak.contains("Algorithm", ignoreCase = true) ->
                    tips.add("Review time complexity and edge cases carefully")
                weak.contains("Database", ignoreCase = true) ->
                    tips.add("Practice SQL joins, indexes, and query optimisation")
                weak.contains("Behavioral", ignoreCase = true) ->
                    tips.add("Use the STAR method for all behavioral answers")
                weak.contains("Frontend", ignoreCase = true) ->
                    tips.add("Review React lifecycle, hooks, and state management")
                weak.contains("Backend", ignoreCase = true) ->
                    tips.add("Study REST principles, caching, and API design")
                else ->
                    tips.add("Work on $weak questions to boost your overall score")
            }
        }

        // ── Strongest category leverage ───────────────────────────────────────
        data.strongestCategory?.let { strong ->
            tips.add("Your strength is $strong — highlight it confidently in interviews")
        }

        // ── Resume skill-specific tips ────────────────────────────────────────
        data.resumeSkills.forEach { skill ->
            val tip = when {
                skill.contains("React", ignoreCase = true) ->
                    "Prepare to explain React component lifecycle and hooks"
                skill.contains("Docker", ignoreCase = true) ->
                    "Be ready to explain container orchestration and Docker networking"
                skill.contains("Machine Learning", ignoreCase = true) || skill.contains("ML", ignoreCase = true) ->
                    "Practice explaining model evaluation metrics and training strategies"
                skill.contains("Kubernetes", ignoreCase = true) ->
                    "Know how Kubernetes schedules pods and handles scaling"
                skill.contains("GraphQL", ignoreCase = true) ->
                    "Understand how GraphQL schemas, resolvers, and N+1 problems work"
                skill.contains("PostgreSQL", ignoreCase = true) || skill.contains("MySQL", ignoreCase = true) ->
                    "Practice complex SQL queries with JOINs and window functions"
                skill.contains("Python", ignoreCase = true) ->
                    "Know Python generators, decorators, and the GIL"
                skill.contains("Kotlin", ignoreCase = true) ->
                    "Understand Kotlin coroutines, sealed classes, and extension functions"
                else -> null
            }
            if (tip != null) tips.add(tip)
        }

        // ── Universal fallback tips ───────────────────────────────────────────
        tips.add("Explain your thought process while solving problems")
        tips.add("Use the STAR method for behavioral answers")
        tips.add("Always explain trade-offs in your solutions")
        tips.add("Review your resume before each interview session")
        tips.add("Think aloud — interviewers value your reasoning")
        tips.add("Practice system design fundamentals daily")

        return tips.distinct().take(12) // Deduplicate and cap
    }

    /** Time-aware greeting based on local clock. */
    fun greeting(name: String): String {
        val hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY)
        val salutation = when {
            hour < 12 -> "Good morning"
            hour < 18 -> "Good afternoon"
            else      -> "Good evening"
        }
        return "$salutation, $name \uD83D\uDC4B"
    }
}

/**
 * Analytics bundle passed into [HomeTipEngine] from [HomeViewModel].
 */
data class HomeAnalyticsData(
    val avgScore: Int = 0,
    val interviewCount: Int = 0,
    val todaySessions: Int = 0,
    val weakestCategory: String? = null,
    val strongestCategory: String? = null,
    val resumeSkills: List<String> = emptyList()
)
