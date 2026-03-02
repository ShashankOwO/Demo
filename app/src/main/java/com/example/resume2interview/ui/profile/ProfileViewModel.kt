package com.example.resume2interview.ui.profile

import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.repository.UserRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject

data class UserProfile(
    val name: String,
    val email: String,
    val jobTitle: String,
    val location: String,
    val bio: String,
    val interviewsCompleted: Int,
    val avgScore: Int,
    val resumesUploaded: Int
)

@HiltViewModel
class ProfileViewModel @Inject constructor(
    private val userRepository: UserRepository,
    private val authRepository: com.example.resume2interview.data.repository.AuthRepository
) : BaseViewModel<UserProfile>() {

    init {
        loadProfile()
    }

    private fun loadProfile() {
        launchDataLoad {
            delay(500)
            UserProfile(
                name = "Alex Johnson",
                email = "alex.j@example.com",
                jobTitle = "Software Engineer",
                location = "San Francisco, CA",
                bio = "Passionate about building scalable systems.",
                interviewsCompleted = 12,
                avgScore = 85,
                resumesUploaded = 3
            )
        }
    }

    fun logout() {
        viewModelScope.launch {
            authRepository.logout()
        }
    }
}
