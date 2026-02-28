package com.example.resume2interview.data.model

import com.google.gson.annotations.SerializedName

// ── Resume ────────────────────────────────────────────────────────────────────
// Matches: POST /resume/upload → ResumeAnalysisOut

/**
 * Categorised technical skills returned by the backend.
 * Each field maps directly to a skill category.
 */
data class TechnicalSkills(
    @SerializedName("languages")    val languages:    List<String> = emptyList(),
    @SerializedName("backend")      val backend:      List<String> = emptyList(),
    @SerializedName("frontend")     val frontend:     List<String> = emptyList(),
    @SerializedName("mobile")       val mobile:       List<String> = emptyList(),
    @SerializedName("database")     val database:     List<String> = emptyList(),
    @SerializedName("devops")       val devops:       List<String> = emptyList(),
    @SerializedName("ai")           val ai:           List<String> = emptyList(),
    @SerializedName("architecture") val architecture: List<String> = emptyList(),
    @SerializedName("testing")      val testing:      List<String> = emptyList(),
) {
    /** Flat list of all tech skills across every category (for question driving). */
    fun allSkills(): List<String> =
        languages + backend + frontend + mobile + database +
        devops + ai + architecture + testing
}

/**
 * A single generated interview question with its source category.
 */
data class InterviewQuestion(
    @SerializedName("question") val question: String,
    @SerializedName("category") val category: String,
)

/**
 * Full response from POST /resume/upload.
 */
data class ResumeAnalysisOut(
    @SerializedName("technical_skills")          val technicalSkills:         TechnicalSkills,
    @SerializedName("tools_frameworks")          val toolsFrameworks:         List<String>          = emptyList(),
    @SerializedName("soft_skills")               val softSkills:              List<String>          = emptyList(),
    @SerializedName("detected_experience_years") val detectedExperienceYears: Int                   = 0,
    @SerializedName("generated_questions")       val generatedQuestions:      List<InterviewQuestion> = emptyList(),
)

// ── Interview ─────────────────────────────────────────────────────────────────
// Matches: POST /interviews/  →  body: InterviewCreate, response: InterviewOut
//          GET  /interviews/  →  List<InterviewOut>
//          GET  /interviews/{id}  →  InterviewOut

data class QuestionAnswerIn(
    @SerializedName("question") val question: String,
    @SerializedName("answer")   val answer:   String,
    @SerializedName("category") val category: String,
)

data class QuestionAnswerOut(
    @SerializedName("id")           val id:          Int,
    @SerializedName("interview_id") val interviewId: Int,
    @SerializedName("question")     val question:    String,
    @SerializedName("answer")       val answer:      String,
    @SerializedName("category")     val category:    String,
)

data class SkillOut(
    @SerializedName("id")           val id:          Int,
    @SerializedName("interview_id") val interviewId: Int,
    @SerializedName("skill_name")   val skillName:   String,
)

data class InterviewCreate(
    @SerializedName("responses") val responses: List<QuestionAnswerIn>,
)

data class InterviewOut(
    @SerializedName("id")               val id:              Int,
    @SerializedName("score")            val score:           Int,
    @SerializedName("feedback_level")   val feedbackLevel:   String,
    @SerializedName("summary")          val summary:         String?,
    @SerializedName("created_at")       val createdAt:       String,
    @SerializedName("question_answers") val questionAnswers: List<QuestionAnswerOut> = emptyList(),
    @SerializedName("skills")           val skills:          List<SkillOut>          = emptyList(),
)

// ── Analytics ─────────────────────────────────────────────────────────────────
// Matches: GET /analytics/last-five     →  List<LastFiveEntry>
//          GET /analytics/summary       →  AnalyticsSummary
//          GET /analytics/skills-practiced → List<SkillPracticed>

data class LastFiveEntry(
    @SerializedName("id")         val id:        Int,
    @SerializedName("score")      val score:     Int,
    @SerializedName("created_at") val createdAt: String,
)

data class AnalyticsSummary(
    @SerializedName("average_score")     val averageScore:      Float,
    @SerializedName("highest_score")     val highestScore:      Int,
    @SerializedName("lowest_score")      val lowestScore:       Int,
    @SerializedName("trend_percentage")  val trendPercentage:   Float,
)

data class SkillPracticed(
    @SerializedName("category")      val category:     String,
    @SerializedName("session_count") val sessionCount: Int,
)
