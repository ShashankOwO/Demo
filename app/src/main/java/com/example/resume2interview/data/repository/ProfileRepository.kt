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
            // Resolve the actual File from the URI (handles both file:// and content:// from FileProvider)
            val tempFile: File = if (uri.scheme == "file") {
                // file:// URI — can directly get path
                File(uri.path!!)
            } else {
                // content:// URI (FileProvider) — copy stream to a temp file OkHttp can read
                val inputStream = context.contentResolver.openInputStream(uri)
                    ?: return Result.failure(Exception("Cannot open image URI"))
                val temp = File.createTempFile("upload_photo", ".jpg", context.cacheDir)
                temp.outputStream().use { out -> inputStream.copyTo(out) }
                temp
            }

            val requestBody = tempFile.asRequestBody("image/jpeg".toMediaTypeOrNull())
            val part = MultipartBody.Part.createFormData("photo", "profile.jpg", requestBody)

            val response = apiService.uploadProfilePhoto(part)
            if (response.isSuccessful && response.body() != null) {
                val url = response.body()!!.profilePhotoUrl ?: ""
                fetchProfile() // refresh full profile after upload
                Result.success(url)
            } else {
                Result.failure(Exception("Photo upload failed: ${response.code()} ${response.errorBody()?.string()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
