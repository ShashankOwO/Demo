package com.example.resume2interview.ui.interview

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.viewModelScope
import com.example.resume2interview.data.model.InterviewQuestion
import com.example.resume2interview.data.model.QuestionAnswerIn
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.data.repository.ResumeRepository
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
    private val interviewRepository: InterviewRepository,
    private val resumeRepository: ResumeRepository
) : BaseViewModel<InterviewUiData>() {

    // Default fallback questions in case there is no resume loaded (e.g., debug testing)
    private val _fallbackQuestions = listOf(
        InterviewQuestion("Tell me about a time you had to handle a difficult conflict with a coworker. How did you resolve it?", "Behavioral"),
        InterviewQuestion("Where do you see yourself in 5 years?", "Behavioral"),
        InterviewQuestion("What is your greatest professional strength?", "Behavioral")
    )

    private var _questions: List<InterviewQuestion> = emptyList()

    // Store the answers for submission at the end
    private val _userResponses = mutableListOf<QuestionAnswerIn>()

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
        // Load questions from cached resume analysis, if available.
        val analysis = resumeRepository.lastAnalysis.value
        _questions = if (analysis != null && analysis.generatedQuestions.isNotEmpty()) {
            analysis.generatedQuestions
        } else {
            _fallbackQuestions
        }
        loadQuestion(0)
    }

    private fun loadQuestion(index: Int) {
        launchDataLoad {
            InterviewUiData(
                currentQuestionIndex = index + 1,
                totalQuestions = _questions.size,
                questionText = _questions[index].question,
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

    fun nextQuestion(answerText: String) {
        val index = (_currentIndex.value ?: 0)
        
        // Record the answer BEFORE moving next
        if (index < _questions.size) {
            val q = _questions[index]
            _userResponses.add(
                QuestionAnswerIn(
                    question = q.question,
                    answer = answerText.ifBlank { "No answer provided." },
                    category = q.category
                )
            )
        }

        val nextIndex = index + 1
        stopTimer()
        _timerSeconds.value = 0
        _timerText.value = "00:00"

        if (nextIndex >= _questions.size) {
            // Interview complete – submit to backend
            submitInterview()
        } else {
            _currentIndex.value = nextIndex
            _isRecording.value = false
            loadQuestion(nextIndex)
        }
    }

    private fun submitInterview() {
        // Option 1: Switch to a loading layer instead of directly finishing
        // _isFinished.value = true can be called AFTER submission succeeds.
        
        viewModelScope.launch {
            val result = interviewRepository.submitInterview(_userResponses)
            if (result.isSuccess) {
                _isFinished.value = true
            } else {
                // If submission fails, we can handle error states here.
                // For now, allow them to finish to not block the UI.
                _isFinished.value = true
            }
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
