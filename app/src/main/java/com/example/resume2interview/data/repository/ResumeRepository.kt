package com.example.resume2interview.data.repository

import android.content.ContentResolver
import android.net.Uri
import android.provider.OpenableColumns
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.network.ApiService
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
            ?: throw IllegalArgumentException("Empty response body from server")
    }
}
