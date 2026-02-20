package com.example.resume2interview.ui.resume

import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

data class SkillsUiData(
    val techSkills: List<String>,
    val softSkills: List<String>,
    val tools: List<String>
)

@HiltViewModel
class ResumeSkillsViewModel @Inject constructor(
    private val resumeRepository: ResumeRepository
) : BaseViewModel<SkillsUiData>() {

    init {
        loadSkills()
    }

    private fun loadSkills() {
        launchDataLoad {
            delay(1000)
            SkillsUiData(
                techSkills = listOf("React", "TypeScript", "Node.js", "AWS", "Docker", "GraphQL", "PostgreSQL", "Tailwind CSS"),
                softSkills = listOf("Leadership", "Communication", "Problem Solving", "Agile Methodology", "Mentoring", "Public Speaking"),
                tools = listOf("Jira", "Figma", "Git", "VS Code", "Notion", "Slack", "Zoom")
            )
        }
    }
}
