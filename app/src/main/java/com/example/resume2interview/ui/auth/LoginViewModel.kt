package com.example.resume2interview.ui.auth

import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

@HiltViewModel
class LoginViewModel @Inject constructor(
    private val authRepository: AuthRepository
) : BaseViewModel<Boolean>() {

    fun login(email: String, pass: String) {
        launchDataLoad {
            authRepository.login(email, pass)
        }
    }

    fun signup(name: String, email: String, pass: String) {
        launchDataLoad {
            authRepository.register(name, email, pass)
        }
    }
}

