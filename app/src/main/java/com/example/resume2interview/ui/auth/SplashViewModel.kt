package com.example.resume2interview.ui.auth

import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SplashViewModel @Inject constructor(
    private val authRepository: AuthRepository
) : BaseViewModel<Boolean>() {

    init {
        checkSession()
    }

    private fun checkSession() {
        viewModelScope.launch {
            delay(2000) // Simulate loading/splash delay
            // Check if user is logged in
            // For now, assume not logged in and navigate to Login
            launchDataLoad {
                // Return true if logged in, false otherwise
                false 
            }
        }
    }
}
