package com.example.resume2interview.ui.report

import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import java.text.SimpleDateFormat
import java.util.Locale
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

    private var allReports: List<ReportItem> = emptyList()

    init {
        loadReports()
    }

    private fun loadReports() {
        launchDataLoad {
            val result = interviewRepository.listInterviews().getOrThrow()
            
            val sdfIn = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
            val sdfOut = SimpleDateFormat("MMM d, yyyy", Locale.getDefault())
            
            val reports = result.map { interview ->
                val dateStr = try {
                    val d = sdfIn.parse(interview.createdAt)
                    if (d != null) sdfOut.format(d) else "Unknown"
                } catch (e: Exception) {
                    "Unknown"
                }
                
                // Prefer the role the candidate applied for, fall back to top skill
                val title = interview.roleAppliedFor
                    ?.takeIf { it.isNotBlank() }
                    ?: interview.skills.firstOrNull()?.skillName
                    ?: "General Interview"

                ReportItem(
                    id = interview.id.toString(),
                    title = title,
                    date = dateStr,
                    score = interview.score,
                    status = interview.feedbackLevel
                )
            }.reversed() // Show newest first
            
            allReports = reports
            reports
        }
    }

    fun filterReports(query: String) {
        if (query.isBlank()) {
            setState(UiState.Success(allReports))
            return
        }
        val q = query.lowercase(Locale.getDefault())
        val filtered = allReports.filter {
            it.title.lowercase(Locale.getDefault()).contains(q) ||
            it.date.lowercase(Locale.getDefault()).contains(q) ||
            it.status.lowercase(Locale.getDefault()).contains(q)
        }
        setState(UiState.Success(filtered))
    }
}
