package com.example.resume2interview.ui.report

import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

data class ReportDetailUiData(
    val title: String,
    val date: String,
    val score: Int,
    val evaluation: String, 
    val summary: String,
    val strengths: List<String>,
    val improvements: List<String>,
    val suggestedTopics: List<String>
)

@HiltViewModel
class ReportDetailViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository
) : BaseViewModel<ReportDetailUiData>() {

    init {
        loadReportDetail()
    }

    private fun loadReportDetail() {
        launchDataLoad {
            delay(1000)
            ReportDetailUiData(
                title = "Interview Report",
                date = "1/24/2026",
                score = 91,
                evaluation = "Good",
                summary = "Excellent performance across all categories. Outstanding analytical approach to problem-solving and clear, concise communication. Minor improvements needed in time management.",
                strengths = listOf("Analytical thinking", "Creative problem-solving", "Concise communication", "Strong technical vocabulary"),
                improvements = listOf("Time management in responses", "Reducing filler words"),
                suggestedTopics = listOf("Interview Time Boxing Strategies", "Concise Communication Drills")
            )
        }
    }
}
