package com.example.resume2interview.ui.resume

import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

data class SkillsUiData(
    val techSkills: List<String>,       // All tech skills across all categories
    val softSkills: List<String>,       // Soft skills from backend
    val tools: List<String>,            // Tools & frameworks (web, devops, testing)
    val experienceYears: Int = 0,
    val generatedQuestions: List<String> = emptyList()  // Question text only
)

@HiltViewModel
class ResumeSkillsViewModel @Inject constructor(
    private val resumeRepository: ResumeRepository
) : BaseViewModel<SkillsUiData>() {

    /**
     * Populate the screen from a real [ResumeAnalysisOut] returned by the backend.
     * All extracted skills go into techSkills — no artificial splitting by index.
     */
    fun loadFromApiResponse(analysis: ResumeAnalysisOut) {
        setState(
            UiState.Success(
                SkillsUiData(
                    techSkills         = analysis.technicalSkills.allSkills(),
                    softSkills         = analysis.softSkills,
                    tools              = analysis.toolsFrameworks,
                    experienceYears    = analysis.detectedExperienceYears,
                    generatedQuestions = analysis.generatedQuestions.map { it.question }
                )
            )
        )
    }

    /**
     * Fallback: show hardcoded data when screen is opened without an upload.
     */
    fun loadFallbackSkills() {
        setState(
            UiState.Success(
                SkillsUiData(
                    techSkills = listOf("Python", "FastAPI", "SQL"),
                    softSkills = emptyList(),
                    tools = emptyList()
                )
            )
        )
    }
}
