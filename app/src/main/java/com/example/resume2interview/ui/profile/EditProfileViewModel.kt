package com.example.resume2interview.ui.profile

import android.content.Context
import android.net.Uri
import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.model.UpdateProfileRequest
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class EditProfileViewModel @Inject constructor(
    private val profileRepository: ProfileRepository
) : BaseViewModel<Boolean>() {

    // Observe shared cached profile (pre-populates fields from signup data)
    val profileData: StateFlow<UserProfileResponse?> = profileRepository.cachedProfile

    private val _photoUploadState = MutableStateFlow<String?>(null)
    val photoUploadState: StateFlow<String?> = _photoUploadState.asStateFlow()

    private val _photoUploadError = kotlinx.coroutines.flow.MutableSharedFlow<String>()
    val photoUploadError = _photoUploadError.asSharedFlow()

    fun fetchProfile() {
        viewModelScope.launch {
            profileRepository.fetchProfile()
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

    fun uploadPhoto(uri: Uri, context: Context) {
        viewModelScope.launch {
            val result = profileRepository.uploadPhoto(uri, context)
            if (result.isSuccess) {
                _photoUploadState.value = result.getOrNull()
            } else {
                _photoUploadError.emit("Photo upload failed: ${result.exceptionOrNull()?.message}")
            }
        }
    }
}
