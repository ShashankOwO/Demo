package com.example.resume2interview.ui.home

import com.example.resume2interview.data.repository.UserRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

data class HomeUiData(
    val userName: String,
    val resumeStatus: String,
    val interviewSessionCount: Int,
    val latestScore: Int,
    val focusAreas: List<String>,
    val extractedSkills: Int = 12,
    val isResumeActive: Boolean = false
)

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val userRepository: UserRepository
) : BaseViewModel<HomeUiData>() {

    init {
        loadHomeData()
    }

    fun loadHomeData() {
        launchDataLoad {
            delay(500)
            val isUploaded = HomeStaticState.isResumeUploaded
            HomeUiData(
                userName = "Alex",
                resumeStatus = if (isUploaded) "Active" else "Action Needed",
                interviewSessionCount = if (isUploaded) 6 else 5,
                latestScore = if (isUploaded) 82 else 85,
                focusAreas = if (isUploaded) listOf("System scalability", "Edge case handling") else listOf("System design scalability", "Edge case handling"),
                isResumeActive = isUploaded
            )
        }
    }
}
