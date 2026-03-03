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
        try {
            val response = apiService.login(AuthRequest(email, pass))
            if (response.isSuccessful) {
                val token = response.body()?.access_token
                if (!token.isNullOrEmpty()) {
                    tokenManager.saveToken(token)
                    return true
                } else {
                    throw Exception("Invalid token received.")
                }
            } else {
                val errorBody = response.errorBody()?.string()
                val message = extractErrorMessage(errorBody)
                throw Exception(message)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            // Rethrow so the ViewModel can catch the specific message
            throw Exception(e.message ?: "Network error, please try again")
        }
    }

    suspend fun register(name: String, email: String, pass: String): Boolean {
        try {
            val response = apiService.register(AuthRequest(email, pass, name))
            if (response.isSuccessful) {
                return true
            } else {
                val errorBody = response.errorBody()?.string()
                val message = extractErrorMessage(errorBody)
                throw Exception(message)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            throw Exception(e.message ?: "Network error, please try again")
        }
    }

    suspend fun logout() {
        tokenManager.clearToken()
    }

    private fun extractErrorMessage(errorBody: String?): String {
        if (errorBody.isNullOrEmpty()) return "Unknown server error"
        return try {
            val jsonObject = org.json.JSONObject(errorBody)
            if (jsonObject.has("message")) {
                jsonObject.getString("message")
            } else if (jsonObject.has("error")) {
                jsonObject.getString("error")
            } else {
                "Authentication failed"
            }
        } catch (e: Exception) {
            "An error occurred"
        }
    }
}
