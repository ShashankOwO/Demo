package com.example.resume2interview.ui.profile

import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.model.UpdateProfileRequest
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class EditProfileViewModel @Inject constructor(
    private val profileRepository: ProfileRepository
) : BaseViewModel<Boolean>() {

    private val _profileData = MutableStateFlow<UserProfileResponse?>(null)
    val profileData: StateFlow<UserProfileResponse?> = _profileData.asStateFlow()

    fun fetchProfile() {
        viewModelScope.launch {
            val result = profileRepository.fetchProfile()
            if (result.isSuccess) {
                _profileData.value = result.getOrNull()
            }
        }
    }

    fun saveProfile(name: String, email: String, title: String, location: String, bio: String) {
        launchDataLoad {
            val request = UpdateProfileRequest(name, email, title, location, bio)
            val result = profileRepository.saveProfile(request)
            if (result.isSuccess) {
                true
            } else {
                throw Exception("Failed to save profile")
            }
        }
    }
}
