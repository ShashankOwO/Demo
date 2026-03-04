package com.example.resume2interview.utils

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Persists per-user resume upload state in SharedPreferences.
 * State survives sign-out / sign-in: the flag is stored under the user's email
 * and cleared only when the user explicitly uploads a new resume (which replaces it)
 * or if there's no email available.
 */
@Singleton
class ResumePreferences @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private val prefs by lazy {
        context.getSharedPreferences("resume_prefs", Context.MODE_PRIVATE)
    }

    /** Returns true if a resume was previously uploaded for the given [userEmail]. */
    fun isResumeUploaded(userEmail: String?): Boolean {
        if (userEmail.isNullOrBlank()) return false
        return prefs.getBoolean("resume_uploaded_$userEmail", false)
    }

    /** Marks the resume as uploaded for the given [userEmail]. */
    fun setResumeUploaded(userEmail: String?, uploaded: Boolean = true) {
        if (userEmail.isNullOrBlank()) return
        prefs.edit().putBoolean("resume_uploaded_$userEmail", uploaded).apply()
    }
}
