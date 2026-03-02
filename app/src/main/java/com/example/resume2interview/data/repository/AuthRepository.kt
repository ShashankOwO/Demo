package com.example.resume2interview.data.repository

import com.example.resume2interview.data.model.AuthRequest
import com.example.resume2interview.data.network.ApiService
import com.example.resume2interview.utils.TokenManager
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class AuthRepository @Inject constructor(
    private val apiService: ApiService,
    private val tokenManager: TokenManager
) {
    suspend fun login(email: String, pass: String): Boolean {
        return try {
            val response = apiService.login(AuthRequest(email, pass))
            if (response.isSuccessful) {
                val token = response.body()?.access_token
                if (!token.isNullOrEmpty()) {
                    tokenManager.saveToken(token)
                    true
                } else false
            } else false
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    suspend fun register(email: String, pass: String): Boolean {
        return try {
            val response = apiService.register(AuthRequest(email, pass))
            if (response.isSuccessful) {
                // Return true, user can then log in
                true
            } else false
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    suspend fun logout() {
        tokenManager.clearToken()
    }
}
