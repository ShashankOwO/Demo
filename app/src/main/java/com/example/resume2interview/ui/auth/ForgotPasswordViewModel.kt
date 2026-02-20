package com.example.resume2interview.ui.auth

import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

@HiltViewModel
class ForgotPasswordViewModel @Inject constructor(
    private val authRepository: AuthRepository
) : BaseViewModel<Boolean>() {

    fun sendResetCode(email: String) {
        launchDataLoad {
            delay(1000)
            true
        }
    }
}
