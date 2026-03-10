package com.example.resume2interview.ui.resume

import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject
import kotlinx.coroutines.flow.firstOrNull

data class SkillsUiData(
    val techSkills: List<String>,       // All tech skills across all categories
    val softSkills: List<String>,       // Soft skills from backend
    val tools: List<String>,            // Tools & frameworks (web, devops, testing)
    val experienceYears: Int = 0,
    val generatedQuestions: List<String> = emptyList()  // Question text only
)

@HiltViewModel
class ResumeSkillsViewModel @Inject constructor(
    private val resumeRepository: ResumeRepository,
    private val profileRepository: ProfileRepository
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
     * Loads the saved skills from the UserProfile when the user visits the Resume screen.
     */
    fun loadSavedSkills() {
        launchDataLoad {
            val response = profileRepository.fetchProfile()
            if (response.isSuccess) {
                val profile = response.getOrNull()
                val skillsJson = profile?.skillsJson
                if (!skillsJson.isNullOrBlank()) {
                    try {
                        val type = object : com.google.gson.reflect.TypeToken<Map<String, List<String>>>() {}.type
                        val skillsMap: Map<String, List<String>> = com.google.gson.Gson().fromJson(skillsJson, type)
                        
                        val allTechSkills = skillsMap.values.flatten().distinct()
                        
                        return@launchDataLoad SkillsUiData(
                            techSkills = allTechSkills,
                            softSkills = emptyList(),
                            tools = emptyList()
                        )
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
            }
            
            // Fallback to empty if fetch fails or user has no saved skills
            SkillsUiData(
                techSkills = emptyList(),
                softSkills = emptyList(),
                tools = emptyList()
            )
        }
    }

    /**
     * Triggers the backend generation of questions from selected skills.
     */
    fun savePreferencesAndGenerate(
        skills: List<String>,
        targetRole: String?,
        experienceYears: Int?
    ) {
        val currentState = uiState.value
        
        launchDataLoad {
            val result = resumeRepository.generateQuestionsFromPreferences(
                skills = skills,
                targetRole = targetRole,
                experienceYears = experienceYears
            )
            
            if (result.isFailure) {
                throw result.exceptionOrNull() ?: Exception("Unknown error generating questions")
            }
            
            // On success, we just return the same data (for the UI to clear the loader)
            // since the questions themselves are cached in the Repository
            val data = (currentState as? UiState.Success<SkillsUiData>)?.data 
                       ?: SkillsUiData(emptyList(), emptyList(), emptyList())
            data
        }
    }
}
