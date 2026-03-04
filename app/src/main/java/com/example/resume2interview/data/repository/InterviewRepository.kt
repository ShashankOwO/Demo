package com.example.resume2interview.data.repository

import com.example.resume2interview.data.model.InterviewCreate
import com.example.resume2interview.data.model.InterviewOut
import com.example.resume2interview.data.model.QuestionAnswerIn
import com.example.resume2interview.data.network.ApiService
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class InterviewRepository @Inject constructor(
    private val api: ApiService
) {
    /**
     * POST /interviews/
     * Submits all Q&A pairs from the completed interview session.
     * Returns the scored [InterviewOut] with feedback level and score.
     */
    suspend fun submitInterview(responses: List<QuestionAnswerIn>): Result<InterviewOut> =
        runCatching {
            val response = api.createInterview(InterviewCreate(responses))
            if (response.isSuccessful && response.body() != null) {
                response.body()!!
            } else {
                error("Submit failed: ${response.code()} ${response.errorBody()?.string()}")
            }
        }

    /**
     * GET /interviews/
     * Retrieves all completed interview sessions for the current user.
     */
    suspend fun listInterviews(): Result<List<InterviewOut>> =
        runCatching {
            val response = api.listInterviews()
            if (response.isSuccessful && response.body() != null) {
                response.body()!!
            } else {
                error("List interviews failed: ${response.code()}")
            }
        }

    /**
     * GET /interviews/{id}
     * Retrieves a single interview session by ID.
     */
    suspend fun getInterview(id: Int): Result<InterviewOut> =
        runCatching {
            val response = api.getInterview(id)
            if (response.isSuccessful && response.body() != null) {
                response.body()!!
            } else {
                error("Get interview $id failed: ${response.code()}")
            }
        }
}
