package com.example.resume2interview.ui.profile

import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.model.AnalyticsSummary
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.repository.AnalyticsRepository
import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ProfileViewModel @Inject constructor(
    private val profileRepository: ProfileRepository,
    private val authRepository: AuthRepository,
    private val analyticsRepository: AnalyticsRepository
) : BaseViewModel<UserProfileResponse>() {

    // Observe the shared cached profile from the repository
    val profileData: StateFlow<UserProfileResponse?> = profileRepository.cachedProfile

    private val _summaryData = MutableStateFlow<AnalyticsSummary?>(null)
    val summaryData: StateFlow<AnalyticsSummary?> = _summaryData.asStateFlow()

    init {
        loadProfile()
        loadStats()
    }

    fun loadProfile() {
        launchDataLoad {
            val result = profileRepository.fetchProfile()
            if (result.isSuccess) {
                result.getOrNull()!!
            } else {
                throw Exception(result.exceptionOrNull()?.message ?: "Failed to load profile")
            }
        }
    }

    private fun loadStats() {
        viewModelScope.launch {
            analyticsRepository.getSummary().getOrNull()?.let { _summaryData.value = it }
        }
    }

    fun logout() {
        viewModelScope.launch {
            authRepository.logout()
        }
    }
}
