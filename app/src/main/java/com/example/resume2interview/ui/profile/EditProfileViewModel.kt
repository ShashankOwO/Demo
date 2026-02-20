package com.example.resume2interview.ui.profile

import com.example.resume2interview.data.repository.UserRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

@HiltViewModel
class EditProfileViewModel @Inject constructor(
    private val userRepository: UserRepository
) : BaseViewModel<Boolean>() {

    fun saveProfile(name: String, email: String, title: String, location: String, bio: String) {
        launchDataLoad {
            delay(1000)
            true
        }
    }
}
