package com.example.resume2interview.ui.auth

import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

@HiltViewModel
class LoginViewModel @Inject constructor(
    private val authRepository: AuthRepository
) : BaseViewModel<Boolean>() {

    fun login(email: String, pass: String) {
        launchDataLoad {
            val success = authRepository.login(email, pass)
            if (!success) {
                throw Exception("Invalid credentials or server error")
            }
            success
        }
    }
}
