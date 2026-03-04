package com.example.resume2interview.ui.home

import com.example.resume2interview.data.model.AnalyticsSummary
import com.example.resume2interview.data.model.LastFiveEntry
import com.example.resume2interview.data.model.SkillPracticed
import com.example.resume2interview.data.repository.AnalyticsRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import javax.inject.Inject

data class InterviewProgressUiData(
    val summary: AnalyticsSummary,
    val lastFive: List<LastFiveEntry>,
    val topSkills: List<SkillPracticed>
)

@HiltViewModel
class InterviewProgressViewModel @Inject constructor(
    private val analyticsRepository: AnalyticsRepository
) : BaseViewModel<InterviewProgressUiData>() {

    init {
        loadProgressData()
    }

    fun loadProgressData() {
        launchDataLoad {
            coroutineScope {
                val summaryDeferred = async { analyticsRepository.getSummary() }
                val lastFiveDeferred = async { analyticsRepository.getLastFive() }
                val skillsDeferred = async { analyticsRepository.getSkillsPracticed() }

                val summary = summaryDeferred.await().getOrElse { 
                    AnalyticsSummary(0f, 0, 0, 0f, 0)
                }
                
                val lastFive = lastFiveDeferred.await().getOrElse { emptyList() }
                
                val skills = skillsDeferred.await().getOrElse { emptyList() }
                    .sortedByDescending { it.sessionCount }
                    .take(6)

                InterviewProgressUiData(
                    summary = summary,
                    lastFive = lastFive.reversed(), // Oldest to newest for graphing x-axis
                    topSkills = skills
                )
            }
        }
    }
}
