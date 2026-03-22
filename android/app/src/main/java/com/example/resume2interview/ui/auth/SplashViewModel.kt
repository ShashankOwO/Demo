package com.example.resume2interview.ui.auth

import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.TokenManager
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SplashViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val tokenManager: TokenManager
) : BaseViewModel<Boolean>() {

    init {
        checkSession()
    }

    private fun checkSession() {
        viewModelScope.launch {
            delay(3800) // ✅ Must be longer than total animation (3800ms)
            val token = tokenManager.getToken()
            launchDataLoad {
                !token.isNullOrEmpty()
            }
        }
    }
}