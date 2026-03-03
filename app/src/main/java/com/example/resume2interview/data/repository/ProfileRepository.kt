package com.example.resume2interview.data.repository

import android.content.Context
import android.net.Uri
import com.example.resume2interview.data.model.UpdateProfileRequest
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.network.ApiService
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.asRequestBody
import java.io.File
import java.io.FileOutputStream
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ProfileRepository @Inject constructor(
    private val apiService: ApiService
) {
    // Shared cached profile so all screens see the same data
    private val _cachedProfile = MutableStateFlow<UserProfileResponse?>(null)
    val cachedProfile: StateFlow<UserProfileResponse?> = _cachedProfile.asStateFlow()

    suspend fun fetchProfile(): Result<UserProfileResponse> {
        return try {
            val response = apiService.getProfile()
            if (response.isSuccessful && response.body() != null) {
                val profile = response.body()!!
                _cachedProfile.value = profile
                Result.success(profile)
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
                val profile = response.body()!!
                _cachedProfile.value = profile
                Result.success(profile)
            } else {
                Result.failure(Exception("Failed to save profile: ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun uploadPhoto(uri: Uri, context: Context): Result<String> {
        return try {
            // Copy content URI to a temp file so OkHttp can read it
            val inputStream = context.contentResolver.openInputStream(uri)
                ?: return Result.failure(Exception("Cannot open image"))
            val tempFile = File.createTempFile("profile_photo", ".jpg", context.cacheDir)
            FileOutputStream(tempFile).use { out -> inputStream.copyTo(out) }

            val requestBody = tempFile.asRequestBody("image/*".toMediaTypeOrNull())
            val part = MultipartBody.Part.createFormData("photo", tempFile.name, requestBody)

            val response = apiService.uploadProfilePhoto(part)
            if (response.isSuccessful && response.body() != null) {
                val url = response.body()!!.profilePhotoUrl ?: ""
                // Refresh cached profile with new photo URL
                _cachedProfile.value = _cachedProfile.value?.copy(
                    // UserProfileResponse doesn't have profilePhotoUrl yet; we refresh fully
                )
                fetchProfile() // refresh full profile after upload
                Result.success(url)
            } else {
                Result.failure(Exception("Photo upload failed: ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
