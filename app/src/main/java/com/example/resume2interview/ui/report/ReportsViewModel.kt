package com.example.resume2interview.ui.report

import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

data class ReportItem(
    val id: String,
    val title: String,
    val date: String,
    val score: Int,
    val status: String // "Average", "Good", "Needs Improvement"
)

@HiltViewModel
class ReportsViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository
) : BaseViewModel<List<ReportItem>>() {

    init {
        loadReports()
    }

    private fun loadReports() {
        launchDataLoad {
            delay(1000)
            listOf(
                ReportItem("1", "System Design & Scalability", "2/11/2026", 82, "Average"),
                ReportItem("2", "System Design & Scalability", "2/8/2026", 85, "Good"),
                ReportItem("3", "Confidence & Technical Depth", "2/1/2026", 72, "Average"),
                ReportItem("4", "Response Time Management", "1/24/2026", 91, "Good"),
                ReportItem("5", "Structured Problem Solving", "1/15/2026", 58, "Needs Improvement"),
                ReportItem("6", "Technical Communication", "1/6/2026", 67, "Average")
            )
        }
    }
}
