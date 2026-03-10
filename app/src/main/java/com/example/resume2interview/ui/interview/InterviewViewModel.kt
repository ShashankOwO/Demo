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

import com.example.resume2interview.data.repository.ProfileRepository

data class InterviewUiData(
    val isEmptyState: Boolean = false,
    val currentQuestionIndex: Int = 0,
    val totalQuestions: Int = 0,
    val questionText: String = "",
    val isRecording: Boolean = false,
    val timerText: String = "00:00",
    val transcribedText: String = ""
)

@HiltViewModel
class InterviewViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository,
    private val resumeRepository: ResumeRepository,
    private val profileRepository: ProfileRepository
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
        val profile = profileRepository.cachedProfile.value
        val skillsStr = profile?.skillsJson
        
        var extractedSkillsCount = 0
        if (!skillsStr.isNullOrBlank() && skillsStr != "{}" && skillsStr != "[]") {
            try {
                val jsonObj = org.json.JSONObject(skillsStr)
                val keys = jsonObj.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    val arr = jsonObj.optJSONArray(key)
                    if (arr != null) extractedSkillsCount += arr.length()
                }
            } catch (e: Exception) {
                // Ignore parse errors
            }
        }

        val isResumeActive = extractedSkillsCount > 0

        if (!isResumeActive) {
            launchDataLoad {
                InterviewUiData(
                    isEmptyState = true
                )
            }
        } else {
            // First try cache
            val analysis = resumeRepository.lastAnalysis.value
            if (analysis != null && analysis.generatedQuestions.isNotEmpty()) {
                _questions = analysis.generatedQuestions
                loadQuestion(0)
            } else {
                // No cache? Fetch profile, parse skills, and hit generate
                fetchProfileAndGenerate()
            }
        }
    }
    
    private fun fetchProfileAndGenerate() {
        android.util.Log.d("InterviewViewModel", "fetchProfileAndGenerate: starting profile fetch")
        launchDataLoad {
            // First hit the profile
            val response = profileRepository.fetchProfile()
            var usedSkills = emptyList<String>()
            var targetRole: String? = null
            var experienceYears = 0
            
            if (response.isSuccess) {
                val profile = response.getOrNull()
                targetRole = profile?.targetRole
                val skillsJson = profile?.skillsJson
                android.util.Log.d("InterviewViewModel", "Profile loaded. targetRole=$targetRole, raw skillsJson=$skillsJson")
                if (!skillsJson.isNullOrBlank()) {
                    try {
                        val type = object : com.google.gson.reflect.TypeToken<Map<String, List<String>>>() {}.type
                        val skillsMap: Map<String, List<String>> = com.google.gson.Gson().fromJson(skillsJson.toString(), type)
                        usedSkills = skillsMap.values.flatten().distinct()
                        android.util.Log.d("InterviewViewModel", "Parsed usedSkills: $usedSkills")
                    } catch (e: Exception) {
                        android.util.Log.e("InterviewViewModel", "Exception parsing skillsJson", e)
                        e.printStackTrace()
                    }
                }
            } else {
                 android.util.Log.e("InterviewViewModel", "Profile fetch failed: ${response.exceptionOrNull()}")
            }
            
            if (usedSkills.isNotEmpty()) {
                android.util.Log.d("InterviewViewModel", "Calling generateQuestionsFromPreferences with $usedSkills")
                // Generate fresh questions from their DB-saved skills
                val genResult = resumeRepository.generateQuestionsFromPreferences(
                    skills = usedSkills,
                    targetRole = targetRole,
                    experienceYears = experienceYears
                )
                
                if (genResult.isSuccess) {
                    val freshAnalysis = resumeRepository.lastAnalysis.value
                    if (freshAnalysis != null && freshAnalysis.generatedQuestions.isNotEmpty()) {
                        android.util.Log.d("InterviewViewModel", "Successfully generated ${freshAnalysis.generatedQuestions.size} questions from backend")
                        _questions = freshAnalysis.generatedQuestions
                        loadQuestion(0)
                        return@launchDataLoad InterviewUiData(
                            currentQuestionIndex = 1,
                            totalQuestions = _questions.size,
                            questionText = _questions[0].question,
                            timerText = "00:00"
                        )
                    } else {
                        android.util.Log.e("InterviewViewModel", "genResult success but freshAnalysis is empty or null")
                    }
                } else {
                    android.util.Log.e("InterviewViewModel", "genResult failed: ${genResult.exceptionOrNull()}")
                }
            } else {
                android.util.Log.e("InterviewViewModel", "usedSkills is empty. Falling back.")
            }
            
            android.util.Log.w("InterviewViewModel", "Using absolute fallback questions!")
            // Absolute fallback
            _questions = _fallbackQuestions
            loadQuestion(0)
            InterviewUiData(
                currentQuestionIndex = 1,
                totalQuestions = _questions.size,
                questionText = _questions[0].question,
                timerText = "00:00"
            )
        }
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
