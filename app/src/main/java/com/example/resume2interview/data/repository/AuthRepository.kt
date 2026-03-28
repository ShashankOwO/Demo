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
    
    suspend fun verifyRegistration(email: String, otp: String): Boolean {
        try {
            val response = apiService.verifyRegistration(com.example.resume2interview.data.model.VerifyRegistrationRequest(email, otp))
            if (response.isSuccessful) {
                val token = response.body()?.access_token
                if (!token.isNullOrEmpty()) {
                    tokenManager.saveToken(token)
                    return true
                } else {
                    throw Exception("Verification failed: no token received.")
                }
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
    suspend fun requestReset(email: String): Boolean {
        try {
            val response = apiService.requestReset(com.example.resume2interview.data.model.PasswordResetRequest(email))
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

    suspend fun resetPassword(email: String, code: String, newPass: String): Boolean {
        try {
            val response = apiService.resetPassword(com.example.resume2interview.data.model.PasswordResetConfirm(email, code, newPass))
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

    suspend fun resendOtp(email: String): Boolean {
        try {
            val response = apiService.resendOtp(mapOf("email" to email))
            if (response.isSuccessful) return true
            val msg = extractErrorMessage(response.errorBody()?.string())
            throw Exception(msg)
        } catch (e: Exception) {
            e.printStackTrace()
            throw Exception(e.message ?: "Network error, please try again")
        }
    }

    suspend fun logout() {
        tokenManager.clearToken()
    }

    private fun extractErrorMessage(errorBody: String?): String {
        if (errorBody.isNullOrEmpty()) return "Authentication failed"
        return try {
            val jsonObject = org.json.JSONObject(errorBody)
            if (jsonObject.has("message")) {
                return jsonObject.getString("message")
            }
            if (jsonObject.has("error")) {
                return jsonObject.getString("error")
            }
            
            // Handle 422 validation errors like {"email": ["Not a valid email..."], "password": ["..."]}
            val keys = jsonObject.keys()
            if (keys.hasNext()) {
                val firstKey = keys.next()
                val array = jsonObject.optJSONArray(firstKey)
                if (array != null && array.length() > 0) {
                    val fieldMsg = array.getString(0)
                    // If the field is "email" or "password", prepend it so LoginFragment can highlight the correct box
                    return if (firstKey.equals("email", ignoreCase = true) || firstKey.equals("password", ignoreCase = true)) {
                        "${firstKey.replaceFirstChar { it.uppercase() }}: $fieldMsg"
                    } else {
                        fieldMsg
                    }
                }
                val strDetails = jsonObject.optString(firstKey)
                if (strDetails.isNotEmpty()) return "${firstKey.replaceFirstChar { it.uppercase() }}: $strDetails"
            }
            "Authentication failed"
        } catch (e: Exception) {
            "Authentication failed"
        }
    }
}
