package com.example.resume2interview.data.repository

import android.content.ContentResolver
import android.net.Uri
import android.provider.OpenableColumns
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.network.ApiService
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.IOException
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ResumeRepository @Inject constructor(
    private val api: ApiService
) {
    // Holds the last successful resume analysis so InterviewViewModel
    // can read the generated questions without an extra network call.
    private val _lastAnalysis = MutableStateFlow<ResumeAnalysisOut?>(null)
    val lastAnalysis: StateFlow<ResumeAnalysisOut?> = _lastAnalysis.asStateFlow()

    /**
     * Pings GET /health — returns true if the backend is reachable.
     */
    suspend fun isBackendReachable(): Boolean = try {
        api.health().isSuccessful
    } catch (e: Exception) {
        false
    }

    /**
     * Returns the file size in bytes for [uri], or -1 if not determinable.
     */
    fun getFileSize(contentResolver: ContentResolver, uri: Uri): Long {
        return contentResolver.query(uri, arrayOf(OpenableColumns.SIZE), null, null, null)
            ?.use { cursor ->
                val sizeIndex = cursor.getColumnIndex(OpenableColumns.SIZE)
                if (cursor.moveToFirst() && sizeIndex >= 0) cursor.getLong(sizeIndex) else -1L
            } ?: -1L
    }

    /**
     * Opens [uri] via [contentResolver], converts to ByteArray, builds a multipart request,
     * and POSTs to /resume/upload.
     *
     * The InputStream is always closed safely via [use].
     *
     * @throws IOException on stream read failure
     * @throws IllegalArgumentException if response body is null
     * @throws retrofit2.HttpException on non-2xx HTTP responses
     */
    suspend fun uploadResume(
        contentResolver: ContentResolver,
        uri: Uri
    ): ResumeAnalysisOut {
        // Read bytes — use { } guarantees the stream is always closed
        val bytes = contentResolver.openInputStream(uri)?.use { stream ->
            stream.readBytes()
        } ?: throw IOException("Cannot open InputStream for URI: $uri")

        // Build multipart part — key MUST be "file" to match FastAPI
        val requestBody = bytes.toRequestBody("application/pdf".toMediaType())
        val part = MultipartBody.Part.createFormData(
            name = "file",
            filename = "resume.pdf",
            body = requestBody
        )

        val response = api.uploadResume(part)

        if (!response.isSuccessful) {
            val code = response.code()
            val errorBody = response.errorBody()?.string() ?: "(no body)"
            val msg = when (code) {
                422 -> "Invalid file format"
                500 -> "Server error"
                else -> "Upload failed (HTTP $code)"
            }
            // Surface errorBody to callers via the exception message
            error("$msg | errorBody=$errorBody")
        }

        return response.body()
            ?.also { _lastAnalysis.value = it }   // ← cache for InterviewViewModel
            ?: throw IllegalArgumentException("Empty response body from server")
    }

    /**
     * Calls the backend to generate a clean set of interview questions
     * based ONLY on the user-curated list of tech skills, target role, and experience.
     * Updates the local cache `lastAnalysis` so the InterviewViewModel picks it up.
     */
    suspend fun generateQuestionsFromPreferences(
        skills: List<String>,
        targetRole: String?,
        experienceYears: Int?
    ): Result<Unit> {
        return try {
            val request = com.example.resume2interview.data.model.GenerateQuestionsRequest(
                skills = skills,
                targetRole = targetRole,
                experienceYears = experienceYears
            )
            val response = api.generateQuestions(request)
            
            if (response.isSuccessful && response.body() != null) {
                val newQuestions = response.body()!!.generatedQuestions
                
                // Update local cache
                val currentAnalysis = _lastAnalysis.value
                if (currentAnalysis != null) {
                    _lastAnalysis.value = currentAnalysis.copy(generatedQuestions = newQuestions)
                } else {
                    _lastAnalysis.value = ResumeAnalysisOut(
                        technicalSkills = com.example.resume2interview.data.model.TechnicalSkills(),
                        generatedQuestions = newQuestions
                    )
                }
                Result.success(Unit)
            } else {
                Result.failure(Exception("Failed to generate questions: HTTP ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
