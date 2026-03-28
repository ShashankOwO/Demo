package com.example.resume2interview.ui.auth

import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

@HiltViewModel
class VerifyRegistrationViewModel @Inject constructor(
    private val authRepository: AuthRepository
) : BaseViewModel<Boolean>() {

    fun verifyOtp(email: String, otp: String) {
        launchDataLoad {
            authRepository.verifyRegistration(email, otp)
            true
        }
    }

    fun resendOtp(email: String) {
        launchDataLoad {
            authRepository.resendOtp(email)
            true
        }
    }
}
