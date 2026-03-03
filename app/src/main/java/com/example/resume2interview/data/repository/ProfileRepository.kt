package com.example.resume2interview.data.repository

import com.example.resume2interview.data.model.UpdateProfileRequest
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.network.ApiService
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ProfileRepository @Inject constructor(
    private val apiService: ApiService
) {
    suspend fun fetchProfile(): Result<UserProfileResponse> {
        return try {
            val response = apiService.getProfile()
            if (response.isSuccessful && response.body() != null) {
                Result.success(response.body()!!)
            } else {
                Result.failure(Exception("Failed to fetch profile: ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun saveProfile(request: UpdateProfileRequest): Result<UserProfileResponse> {
        return try {
            val response = apiService.updateProfile(request)
            if (response.isSuccessful && response.body() != null) {
                Result.success(response.body()!!)
            } else {
                Result.failure(Exception("Failed to save profile: ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
