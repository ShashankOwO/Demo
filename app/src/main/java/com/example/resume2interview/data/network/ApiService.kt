package com.example.resume2interview.data.network

import com.example.resume2interview.data.model.AnalyticsSummary
import com.example.resume2interview.data.model.InterviewCreate
import com.example.resume2interview.data.model.InterviewOut
import com.example.resume2interview.data.model.LastFiveEntry
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.model.SkillPracticed
import okhttp3.MultipartBody
import retrofit2.Response
import retrofit2.http.*

interface ApiService {

    // ── Health ────────────────────────────────────────────────────────────

    @GET("health")
    suspend fun health(): Response<Map<String, String>>

    // ── Resume ────────────────────────────────────────────────────────────

    @Multipart
    @POST("resume/upload")
    suspend fun uploadResume(
        @Part file: MultipartBody.Part
    ): Response<ResumeAnalysisOut>

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
}
