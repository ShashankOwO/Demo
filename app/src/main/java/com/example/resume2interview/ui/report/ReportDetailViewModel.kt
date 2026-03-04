package com.example.resume2interview.ui.report

import androidx.lifecycle.SavedStateHandle
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import org.json.JSONArray
import java.text.SimpleDateFormat
import java.util.Locale
import javax.inject.Inject

data class ReportDetailUiData(
    val title: String,
    val date: String,
    val score: Int,
    val evaluation: String, 
    val summary: String,
    val strengths: List<String>,
    val improvements: List<String>,
    val suggestions: List<String>,
    val suggestedTopics: List<String>
)

@HiltViewModel
class ReportDetailViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository,
    savedStateHandle: SavedStateHandle
) : BaseViewModel<ReportDetailUiData>() {

    // Remove init block that relies on SavedStateHandle and make method public
    fun loadReportDetail(id: Int) {
        launchDataLoad {
            val interview = interviewRepository.getInterview(id).getOrThrow()
            
            val sdfIn = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
            val sdfOut = SimpleDateFormat("MMM d, yyyy", Locale.getDefault())
            
            val dateStr = try {
                val d = sdfIn.parse(interview.createdAt)
                if (d != null) sdfOut.format(d) else "Unknown"
            } catch (e: Exception) {
                "Unknown"
            }

            // Extract strengths and improvements from the questions directly.
            val extractedStrengths = mutableListOf<String>()
            val extractedImprovements = mutableListOf<String>()
            val extractedSuggestions = mutableListOf<String>()
            
            interview.questionAnswers?.forEach { qa ->
                try {
                    qa.strengths?.let { jsonStr ->
                        if (jsonStr.startsWith("[")) {
                            val arr = JSONArray(jsonStr)
                            for(i in 0 until arr.length()) extractedStrengths.add(arr.getString(i))
                        } else {
                            extractedStrengths.add(jsonStr)
                        }
                    }
                    qa.improvements?.let { jsonStr ->
                        if (jsonStr.startsWith("[")) {
                            val arr = JSONArray(jsonStr)
                            for(i in 0 until arr.length()) extractedImprovements.add(arr.getString(i))
                        } else {
                            extractedImprovements.add(jsonStr)
                        }
                    }
                    qa.suggestions?.let { jsonStr ->
                        if (jsonStr.startsWith("[")) {
                            val arr = JSONArray(jsonStr)
                            for(i in 0 until arr.length()) extractedSuggestions.add(arr.getString(i))
                        } else {
                            extractedSuggestions.add(jsonStr)
                        }
                    }
                } catch (e: Exception) {
                    // Ignore JSON parse errors for individual records
                }
            }
            
            // If the backend `summary` is populated
            val mainSummary = interview.summary ?: "Good effort across all answers. Review specific improvements below."

            ReportDetailUiData(
                title = interview.skills?.firstOrNull()?.skillName ?: "General Interview",
                date = dateStr,
                score = interview.score,
                evaluation = interview.feedbackLevel,
                summary = mainSummary,
                strengths = extractedStrengths.distinct().take(6).ifEmpty { listOf("Responded securely to questions", "Maintained composure") },
                improvements = extractedImprovements.distinct().take(6).ifEmpty { listOf("Dive deeper into technical architecture", "Provide more concrete workplace examples") },
                suggestions = extractedSuggestions.distinct().take(6).ifEmpty { listOf("Continue practicing core algorithmic principles") },
                suggestedTopics = emptyList() // Hiding suggested topics if none generated
            )
        }
    }
}
