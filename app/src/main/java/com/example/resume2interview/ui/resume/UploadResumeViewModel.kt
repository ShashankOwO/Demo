package com.example.resume2interview.ui.resume

import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.delay
import javax.inject.Inject

@HiltViewModel
class UploadResumeViewModel @Inject constructor(
    private val resumeRepository: ResumeRepository
) : BaseViewModel<Boolean>() {

    fun uploadResume(fileName: String) {
        launchDataLoad {
            delay(1500)
            true
        }
    }
}
