package com.example.resume2interview.ui.home

import com.example.resume2interview.data.repository.UserRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

data class HomeUiData(
    val userName: String,
    val resumeStatus: String, // "Active" or "Action Needed"
    val interviewSessionCount: Int,
    val latestScore: Int,
    val focusAreas: List<String>
)

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val userRepository: UserRepository
) : BaseViewModel<HomeUiData>() {

    init {
        loadHomeData()
    }

    private fun loadHomeData() {
        launchDataLoad {
            delay(500)
            HomeUiData(
                userName = "Alex",
                resumeStatus = "Action Needed",
                interviewSessionCount = 5,
                latestScore = 85,
                focusAreas = listOf("System design scalability", "Edge case handling")
            )
        }
    }
}
