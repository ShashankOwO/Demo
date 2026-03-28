package com.example.resume2interview.ui.interview

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.viewModelScope
import android.content.Context
import com.example.resume2interview.data.model.InterviewQuestion
import com.example.resume2interview.data.model.QuestionAnswerIn
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.ui.base.BaseViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
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
    val category: String = "",
    val isRecording: Boolean = false,
    val timerText: String = "00:00",
    val transcribedText: String = "",
    val isFollowUp: Boolean = false,
    val isSubmitting: Boolean = false
)

@HiltViewModel
class InterviewViewModel @Inject constructor(
    private val interviewRepository: InterviewRepository,
    private val resumeRepository: ResumeRepository,
    private val profileRepository: ProfileRepository,
    @ApplicationContext private val context: Context
) : BaseViewModel<InterviewUiData>() {

    // Default fallback questions in case there is no resume loaded (e.g., debug testing)
    private val _fallbackQuestions = listOf(
        InterviewQuestion("Tell me about a time you had to handle a difficult conflict with a coworker. How did you resolve it?", "Behavioral", "main"),
        InterviewQuestion("Where do you see yourself in 5 years?", "Behavioral", "main"),
        InterviewQuestion("What is your greatest professional strength?", "Behavioral", "main")
    )

    private var _questions: List<InterviewQuestion> = emptyList()
    private var _targetRole: String? = null

    // Store the answers for submission at the end
    private val _userResponses = mutableListOf<QuestionAnswerIn>()

    val isRecording: Boolean
        get() = (uiState.value as? com.example.resume2interview.utils.UiState.Success)?.data?.isRecording == true

    private var _timerSeconds = 0
    private var timerJob: Job? = null

    private val _isFinished = MutableLiveData(false)
    val isFinished: LiveData<Boolean> = _isFinished

    val isRegenerating = MutableLiveData(false)

    var isTransitioning = false

    init {
        val analysis = resumeRepository.lastAnalysis.value
        if (analysis != null && analysis.generatedQuestions.isNotEmpty()) {
            _questions = analysis.generatedQuestions
            _targetRole = analysis.inferredTargetRole
            loadQuestion(0)
        } else {
            // No cache? Fetch profile, parse skills, and hit generate
            fetchProfileAndGenerate()
        }
    }
    
    private fun fetchProfileAndGenerate() {
        android.util.Log.d("InterviewViewModel", "fetchProfileAndGenerate: starting profile fetch")
        launchDataLoad {
            // First hit the profile
            val response = profileRepository.fetchProfile()
            var usedSkills = emptyList<String>()
            var soft = emptyList<String>()
            var tool = emptyList<String>()
            var targetRole: String? = null
            var experienceYears = 0
            var extractedSkillsCount = 0

            if (response.isSuccess) {
                val profile = response.getOrNull()
                targetRole = profile?.targetRole
                _targetRole = profile?.targetRole
                experienceYears = profile?.experienceYears ?: 0  // read from profile, not hardcoded
                val skillsJson = profile?.skillsJson
                android.util.Log.d("InterviewViewModel", "Profile loaded. targetRole=$targetRole, expYears=$experienceYears, raw skillsJson=$skillsJson")
                if (!skillsJson.isNullOrBlank()) {
                    try {
                        val type = object : com.google.gson.reflect.TypeToken<Map<String, List<String>>>() {}.type
                        val skillsMap: Map<String, List<String>> = com.google.gson.Gson().fromJson(skillsJson, type)
                        soft = skillsMap["soft_skills"] ?: emptyList()
                        tool = skillsMap["tools_frameworks"] ?: emptyList()
                        usedSkills = skillsMap.filterKeys { it != "soft_skills" && it != "tools_frameworks" }
                            .values.flatten().distinct()
                            
                        val jsonObj = org.json.JSONObject(skillsJson)
                        val keys = jsonObj.keys()
                        while (keys.hasNext()) {
                            val key = keys.next()
                            val arr = jsonObj.optJSONArray(key)
                            if (arr != null) extractedSkillsCount += arr.length()
                        }
                    } catch (e: Exception) {
                        android.util.Log.e("InterviewViewModel", "Exception parsing skillsJson", e)
                        e.printStackTrace()
                    }
                }
            } else {
                 android.util.Log.e("InterviewViewModel", "Profile fetch failed: ${response.exceptionOrNull()}")
            }

            if (usedSkills.isEmpty() && extractedSkillsCount == 0) {
                return@launchDataLoad InterviewUiData(isEmptyState = true)
            }

            // Load difficulty from SharedPreferences (synced with backend via PreferencesFragment)
            val prefs = context.getSharedPreferences("preferences_prefs", Context.MODE_PRIVATE)
            val difficulty = prefs.getString("difficulty", "beginner") ?: "beginner"

            if (usedSkills.isNotEmpty()) {
                android.util.Log.d("InterviewViewModel", "Calling generateQuestionsFromPreferences with $usedSkills, difficulty=$difficulty")
                // Generate fresh questions from their DB-saved skills
                val genResult = resumeRepository.generateQuestionsFromPreferences(
                    skills = usedSkills,
                    softSkills = soft,
                    toolsFrameworks = tool,
                    targetRole = targetRole,
                    experienceYears = experienceYears,
                    difficulty = difficulty
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
                            category = _questions[0].category,
                            timerText = "00:00",
                            isFollowUp = _questions[0].type == "follow_up"
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
                category = _questions[0].category,
                timerText = "00:00",
                isFollowUp = _questions[0].type == "follow_up"
            )
        }
    }

    private fun loadQuestion(index: Int) {
        launchDataLoad {
            isTransitioning = false
            InterviewUiData(
                currentQuestionIndex = index + 1,
                totalQuestions = _questions.size,
                questionText = _questions[index].question,
                category = _questions[index].category,
                timerText = "00:00",
                isRecording = false,
                isFollowUp = _questions[index].type == "follow_up"
            )
        }
    }

    fun toggleRecording() {
        val recording = isRecording
        updateState { it.copy(isRecording = !recording) }
        if (!recording) {
            startTimer()
        } else {
            stopTimer()
        }
    }

    fun nextQuestion(answerText: String) {
        if (isTransitioning) return
        isTransitioning = true

        val currentUi = (uiState.value as? com.example.resume2interview.utils.UiState.Success)?.data
        val index = currentUi?.currentQuestionIndex?.minus(1) ?: 0
        
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
        _timerSeconds = 0

        if (nextIndex >= _questions.size) {
            // Interview complete – submit to backend
            submitInterview()
        } else {
            loadQuestion(nextIndex)
        }
    }

    fun regenerateCurrentQuestion() {
        val uiStateVal = (uiState.value as? com.example.resume2interview.utils.UiState.Success)?.data ?: return
        val currentIndex = uiStateVal.currentQuestionIndex - 1
        if (currentIndex < 0 || currentIndex >= _questions.size) return
        if (isRegenerating.value == true || isTransitioning) return

        val currentQ = _questions[currentIndex]
        isRegenerating.value = true

        viewModelScope.launch {
            // Load difficulty from preferences
            val prefs = context.getSharedPreferences("preferences_prefs", Context.MODE_PRIVATE)
            val difficulty = prefs.getString("difficulty", "beginner") ?: "beginner"

            val result = resumeRepository.generateSingleQuestion(
                currentQuestion = currentQ.question,
                skills = listOf(currentQ.category), // pass the exact topic it was testing
                targetRole = _targetRole ?: "Software Engineer",
                experienceYears = 0,
                difficulty = difficulty
            )

            if (result.isSuccess) {
                val newQ = result.getOrNull()
                if (newQ != null) {
                    val mutableList = _questions.toMutableList()
                    mutableList[currentIndex] = newQ
                    _questions = mutableList
                    // Reload the current question view
                    loadQuestion(currentIndex)
                }
            } else {
                android.util.Log.e("InterviewViewModel", "Failed to regenerate: ${result.exceptionOrNull()}")
            }
            isRegenerating.value = false
        }
    }

    private fun submitInterview() {
        // Option 1: Switch to a loading layer instead of directly finishing
        // _isFinished.value = true can be called AFTER submission succeeds.
        
        updateState { it.copy(isSubmitting = true) }
        
        viewModelScope.launch {
            interviewRepository.submitInterview(_userResponses, _targetRole)
            // Always navigate to success (even on submission failure)
            _isFinished.postValue(true)
        }
    }

    /** Call after consuming the finished event to prevent re-delivery on re-subscription. */
    fun consumeFinished() {
        _isFinished.value = false
    }

    private fun startTimer() {
        timerJob?.cancel()
        timerJob = viewModelScope.launch {
            var seconds = _timerSeconds
            while (true) {
                delay(1000)
                seconds++
                _timerSeconds = seconds
                val min = seconds / 60
                val sec = seconds % 60
                val timeStr = "%02d:%02d".format(min, sec)
                updateState { it.copy(timerText = timeStr) }
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
