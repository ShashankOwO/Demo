package com.example.resume2interview.data.network

import com.example.resume2interview.data.model.AnalyticsSummary
import com.example.resume2interview.data.model.InterviewCreate
import com.example.resume2interview.data.model.InterviewOut
import com.example.resume2interview.data.model.LastFiveEntry
import com.example.resume2interview.data.model.ProfilePhotoResponse
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.model.SkillPracticed
import com.example.resume2interview.data.model.SuggestedRolesResponse
import okhttp3.MultipartBody
import retrofit2.Response
import retrofit2.http.*

interface ApiService {

    // ── Auth ──────────────────────────────────────────────────────────────
    
    @POST("auth/register")
    suspend fun register(
        @Body request: com.example.resume2interview.data.model.AuthRequest
    ): Response<com.example.resume2interview.data.model.AuthResponse>

    @POST("auth/login")
    suspend fun login(
        @Body request: com.example.resume2interview.data.model.AuthRequest
    ): Response<com.example.resume2interview.data.model.AuthResponse>

    @POST("auth/request-reset")
    suspend fun requestReset(
        @Body request: com.example.resume2interview.data.model.PasswordResetRequest
    ): Response<Map<String, String>>

    @POST("auth/reset-password")
    suspend fun resetPassword(
        @Body request: com.example.resume2interview.data.model.PasswordResetConfirm
    ): Response<Map<String, String>>

    // ── Profile ───────────────────────────────────────────────────────────

    @GET("profile/me")
    suspend fun getProfile(): Response<com.example.resume2interview.data.model.UserProfileResponse>

    @PUT("profile/me")
    suspend fun updateProfile(
        @Body profile: com.example.resume2interview.data.model.UpdateProfileRequest
    ): Response<com.example.resume2interview.data.model.UserProfileResponse>

    @Multipart
    @POST("profile/photo")
    suspend fun uploadProfilePhoto(
        @Part photo: MultipartBody.Part
    ): Response<ProfilePhotoResponse>

    // ── Health ────────────────────────────────────────────────────────────

    @GET("health")
    suspend fun health(): Response<Map<String, String>>

    // ── Resume ────────────────────────────────────────────────────────────

    @Multipart
    @POST("resume/upload")
    suspend fun uploadResume(
        @Part file: MultipartBody.Part
    ): Response<ResumeAnalysisOut>

    @POST("resume/generate-questions")
    suspend fun generateQuestions(
        @Body request: com.example.resume2interview.data.model.GenerateQuestionsRequest
    ): Response<com.example.resume2interview.data.model.GenerateQuestionsResponse>

    // ── Interviews ───────────────────────────────────────────────────────

    @POST("interviews/")
    suspend fun createInterview(
        @Body payload: InterviewCreate
    ): Response<InterviewOut>

    @GET("interviews/")
    suspend fun listInterviews(): Response<List<InterviewOut>>

    @GET("interviews/{id}")
    suspend fun getInterview(
        @Path("id") interviewId: Int
    ): Response<InterviewOut>

    // ── Analytics ────────────────────────────────────────────────────────

    @GET("analytics/last-five")
    suspend fun getLastFive(): Response<List<LastFiveEntry>>

    @GET("analytics/summary")
    suspend fun getAnalyticsSummary(): Response<AnalyticsSummary>

    @GET("analytics/skills-practiced")
    suspend fun getSkillsPracticed(): Response<List<SkillPracticed>>

    @GET("analytics/category-performance")
    suspend fun getCategoryPerformance(): Response<com.example.resume2interview.data.model.CategoryPerformanceResponse>

    // ── Roles ──────────────────────────────────────────────────

    @GET("roles/suggest")
    suspend fun suggestRoles(): Response<SuggestedRolesResponse>
}
