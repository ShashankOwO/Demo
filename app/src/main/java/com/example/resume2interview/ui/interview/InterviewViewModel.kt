package com.example.resume2interview.ui.interview

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject

data class InterviewUiData(
    val currentQuestionIndex: Int,
    val totalQuestions: Int,
    val questionText: String,
    val isRecording: Boolean = false,
    val timerText: String = "00:00",
    val transcribedText: String = ""
)

@HiltViewModel
class InterviewViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository
) : BaseViewModel<InterviewUiData>() {

    private val questions = listOf(
        "Tell me about a time you had to handle a difficult conflict with a coworker. How did you resolve it?",
        "Where do you see yourself in 5 years?",
        "What is your greatest professional strength?",
        "Describe a challenging project you worked on and how you overcame obstacles.",
        "Why do you want to work at this company?",
        "Tell me about a time when you showed leadership.",
        "How do you handle working under pressure and tight deadlines?",
        "What is a weakness you have been actively working to improve?",
        "Describe a situation where you had to learn something quickly.",
        "Do you have any questions for us?"
    )

    private val _currentIndex = MutableLiveData(0)
    val currentIndex: LiveData<Int> = _currentIndex

    private val _isRecording = MutableLiveData(false)
    val isRecording: LiveData<Boolean> = _isRecording

    private val _timerSeconds = MutableLiveData(0)
    private var timerJob: Job? = null

    private val _timerText = MutableLiveData("00:00")
    val timerText: LiveData<String> = _timerText

    private val _isFinished = MutableLiveData(false)
    val isFinished: LiveData<Boolean> = _isFinished

    init {
        loadQuestion(0)
    }

    private fun loadQuestion(index: Int) {
        launchDataLoad {
            InterviewUiData(
                currentQuestionIndex = index + 1,
                totalQuestions = questions.size,
                questionText = questions[index],
                timerText = "00:00"
            )
        }
    }

    fun toggleRecording() {
        val recording = _isRecording.value ?: false
        _isRecording.value = !recording
        if (!recording) {
            startTimer()
        } else {
            stopTimer()
        }
    }

    fun nextQuestion() {
        val index = (_currentIndex.value ?: 0) + 1
        stopTimer()
        _timerSeconds.value = 0
        _timerText.value = "00:00"
        if (index >= questions.size) {
            _isFinished.value = true
        } else {
            _currentIndex.value = index
            _isRecording.value = false
            loadQuestion(index)
        }
    }

    private fun startTimer() {
        timerJob?.cancel()
        timerJob = viewModelScope.launch {
            var seconds = _timerSeconds.value ?: 0
            while (true) {
                delay(1000)
                seconds++
                _timerSeconds.value = seconds
                val min = seconds / 60
                val sec = seconds % 60
                _timerText.value = "%02d:%02d".format(min, sec)
            }
        }
    }

    private fun stopTimer() {
        timerJob?.cancel()
    }

    override fun onCleared() {
        super.onCleared()
        stopTimer()
    }
}
