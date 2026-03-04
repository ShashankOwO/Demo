package com.example.resume2interview.ui.home

import com.example.resume2interview.data.repository.AnalyticsRepository
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.ResumePreferences
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

data class HomeUiData(
    val userName: String,
    val resumeStatus: String,
    val interviewSessionCount: Int,
    val latestScore: Int,
    val focusAreas: List<String>,
    val extractedSkills: Int = 0,
    val isResumeActive: Boolean = false,
    val resumeUploadedAt: String? = null,   // ISO date string from resume upload
    val lastSessionDate: String? = null     // ISO date string from last-five endpoint
)

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val profileRepository: ProfileRepository,
    private val analyticsRepository: AnalyticsRepository,
    private val resumePreferences: ResumePreferences
) : BaseViewModel<HomeUiData>() {

    init {
        loadHomeData()
    }

    fun loadHomeData() {
        launchDataLoad {
            // ── 1. Profile ────────────────────────────────────────────────────
            val profileResult = profileRepository.fetchProfile()
            val profile = profileResult.getOrNull()

            val userName = profile?.name?.takeIf { it.isNotBlank() }
                ?: profile?.email?.substringBefore('@')
                ?: "User"

            // ── 2. Analytics summary (total sessions + avg score) ─────────────
            val summaryResult = analyticsRepository.getSummary()
            val summary = summaryResult.getOrNull()

            // ── 3. Last-five interviews (latest score + most recent date) ──────
            val lastFiveResult = analyticsRepository.getLastFive()
            val lastFive = lastFiveResult.getOrNull() ?: emptyList()
            val latestScore = lastFive.firstOrNull()?.score ?: 0
            val lastSessionDate = lastFive.firstOrNull()?.createdAt

            // ── 4. Focus areas (categories needing most work based on lowest score) ──
            val performanceResult = analyticsRepository.getCategoryPerformance()
            val performance = performanceResult.getOrNull()
            
            val focusAreas = performance?.categoryAverages?.entries
                ?.sortedBy { it.value } // Lowest score first
                ?.take(3)
                ?.map { it.key }
                ?.ifEmpty { listOf("Technical", "System Design", "Problem Solving") }
                ?: listOf("Technical", "System Design", "Problem Solving")

            // ── 5. Resume active check (persisted per user email) ─────────────
            val userEmail = profile?.email
            val isResumeActive = resumePreferences.isResumeUploaded(userEmail)
            // Also keep the in-memory flag in sync for legacy callers
            HomeStaticState.isResumeUploaded = isResumeActive

            HomeUiData(
                userName           = userName,
                resumeStatus       = if (isResumeActive) "Active" else "Action Needed",
                interviewSessionCount = summary?.totalSessions ?: lastFive.size,
                latestScore        = latestScore,
                focusAreas         = focusAreas,
                isResumeActive     = isResumeActive,
                lastSessionDate    = lastSessionDate
            )
        }
    }
}
