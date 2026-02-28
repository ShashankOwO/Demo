package com.example.resume2interview.ui.resume

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import com.example.resume2interview.utils.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import retrofit2.HttpException
import java.io.IOException
import javax.inject.Inject

private const val TAG = "UPLOAD"
private const val DBG = "UPLOAD_DEBUG"

@HiltViewModel
class UploadResumeViewModel @Inject constructor(
    private val resumeRepository: ResumeRepository
) : BaseViewModel<ResumeAnalysisOut>() {

    init {
        // BaseViewModel starts with UiState.Loading which would show the spinner
        // immediately. Set a silent idle state so the screen opens normally.
        setState(UiState.Error(""))
    }

    fun uploadResume(context: Context, uri: Uri?) {
        if (uri == null) {
            Log.e(DBG, "uploadResume called with null URI")
            setState(UiState.Error("No file selected"))
            return
        }

        viewModelScope.launch {

            // ── Step 1: Pre-upload diagnostics (no loading shown yet) ──────────
            val mimeType = context.contentResolver.getType(uri)
            val fileSizeBytes = resumeRepository.getFileSize(context.contentResolver, uri)
            Log.d(DBG, "Selected URI      = $uri")
            Log.d(DBG, "Detected MIME     = $mimeType")
            Log.d(DBG, "File size (bytes) = $fileSizeBytes")

            if (fileSizeBytes == 0L) {
                Log.e(DBG, "File size is 0 — aborting upload")
                setState(UiState.Error("Selected file is empty"))
                return@launch
            }

            // ── Step 2: Backend reachability (no loading shown yet) ───────────
            Log.d(DBG, "Checking backend reachability…")
            val reachable = resumeRepository.isBackendReachable()
            if (!reachable) {
                Log.e(DBG, "Backend not reachable — aborting upload")
                setState(UiState.Error("Backend not reachable"))
                return@launch
            }
            Log.d(DBG, "Backend is reachable ✓")

            // ── Step 3: All checks passed — NOW show loading ──────────────────
            setState(UiState.Loading)

            // ── Step 4: Perform upload ────────────────────────────────────────
            try {
                val result = resumeRepository.uploadResume(
                    contentResolver = context.contentResolver,
                    uri = uri
                )

                // ── Step 5: Log and validate response ─────────────────────────
                val allSkills = result.technicalSkills.allSkills()
                Log.d(DBG, "Skills count     = ${allSkills.size}")
                Log.d(DBG, "Experience years = ${result.detectedExperienceYears}")
                Log.d(DBG, "Questions count  = ${result.generatedQuestions.size}")
                Log.d(TAG, "Success → skills=$allSkills")

                if (allSkills.isEmpty()) {
                    Log.w(DBG, "No skills detected in response")
                    setState(UiState.Error("Resume processed but no skills detected"))
                    return@launch
                }

                setState(UiState.Success(result))

            } catch (e: IOException) {
                Log.e(TAG, "Network error: ${e.message}", e)
                setState(UiState.Error("Network error"))

            } catch (e: HttpException) {
                val code = e.code()
                val errorBody = e.response()?.errorBody()?.string() ?: "(no body)"
                Log.e(DBG, "HTTP $code")
                Log.e(DBG, "ErrorBody = $errorBody")
                val msg = when (code) {
                    422 -> "Invalid file format"
                    500 -> "Server error"
                    else -> "Upload failed (HTTP $code)"
                }
                setState(UiState.Error(msg))

            } catch (e: Exception) {
                val msg = e.message ?: "Upload failed"
                Log.e(DBG, "Error: $msg", e)
                setState(UiState.Error(msg.substringBefore(" | errorBody=")))
            }
        }
    }
}
