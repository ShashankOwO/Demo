package com.example.resume2interview.ui.interview

import android.Manifest
import android.animation.ObjectAnimator
import android.animation.PropertyValuesHolder
import android.animation.ValueAnimator
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import android.view.View
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentInterviewBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import java.util.Locale

@AndroidEntryPoint
class InterviewFragment : BaseFragment<FragmentInterviewBinding, InterviewViewModel>(
    FragmentInterviewBinding::inflate
) {
    override val viewModel: InterviewViewModel by viewModels()

    private var speechRecognizer: SpeechRecognizer? = null
    private var isListening = false
    private var speechIntent: Intent? = null
    private var baseText = ""
    private var isFirstRender = true
    private var micPulseAnimator: ObjectAnimator? = null

    private val requestPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { isGranted: Boolean ->
        if (isGranted) {
            startListening()
        } else {
            Toast.makeText(requireContext(), "Microphone permission required", Toast.LENGTH_SHORT).show()
        }
    }

    override fun setupUI() {
        initSpeechRecognizer()

        // Close button — go back
        binding.btnClose.setOnClickListener {
            findNavController().navigateUp()
        }

        // Begin Session (Empty State) -> Upload Resume
        binding.btnBeginSession.setOnClickListener {
            animatePressScale(binding.btnBeginSession)
            findNavController().navigate(R.id.action_interviewFragment_to_uploadResumeFragment)
        }

        // Mic button — toggle recording
        binding.btnMic.setOnClickListener {
            if (!isListening) {
                checkPermissionAndStart()
            } else {
                stopListening()
            }
        }

        // Next question button
        binding.btnNext.setOnClickListener {
            animatePressScale(binding.btnNext)
            val answerText = binding.etAnswer.text?.toString() ?: ""
            viewModel.nextQuestion(answerText)
            binding.btnNext.isEnabled = !viewModel.isTransitioning
            binding.etAnswer.text?.clear()
            // Reset baseText so next question's speech doesn't append to old answer
            baseText = ""
        }

        // Observe finished — navigate to success screen (consume-once)
        viewModel.isFinished.observe(viewLifecycleOwner) { finished ->
            if (finished) {
                viewModel.consumeFinished()
                try {
                    findNavController().navigate(
                        R.id.action_interviewFragment_to_interviewSuccessFragment
                    )
                } catch (e: Exception) {
                    // Guard against double-navigation if observer fires twice
                }
            }
        }
    }

    private fun initSpeechRecognizer() {
        speechRecognizer = SpeechRecognizer.createSpeechRecognizer(requireContext())
        speechIntent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault())
            // Favor offline recognition (Requires API 23+ and offline language pack installed via Google app)
            putExtra(RecognizerIntent.EXTRA_PREFER_OFFLINE, true)
            putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true)
        }
        
        speechRecognizer?.setRecognitionListener(object : RecognitionListener {
            override fun onReadyForSpeech(params: Bundle?) {}
            override fun onBeginningOfSpeech() {}
            override fun onRmsChanged(rmsdB: Float) {}
            override fun onBufferReceived(buffer: ByteArray?) {}
            override fun onEndOfSpeech() {}
            
            override fun onError(error: Int) {
                val errorMessage = when (error) {
                    SpeechRecognizer.ERROR_NO_MATCH -> "Didn't catch that, please try again."
                    SpeechRecognizer.ERROR_SPEECH_TIMEOUT -> "No speech input detected."
                    SpeechRecognizer.ERROR_CLIENT -> "Client error (5). Ensure Google App is installed."
                    else -> "Speech recognition error: $error"
                }
                // Don't show toast for client error 5 usually triggered on stop Listening
                if (error != SpeechRecognizer.ERROR_CLIENT || isListening) {
                    Toast.makeText(requireContext(), errorMessage, Toast.LENGTH_SHORT).show()
                }
                stopListening()
            }

            override fun onResults(results: Bundle?) {
                val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if (!matches.isNullOrEmpty()) {
                    val finalrecognizedText = matches[0]
                    val newText = if (baseText.isEmpty()) finalrecognizedText.trim() else "$baseText ${finalrecognizedText.trim()}"
                    binding.etAnswer.setText(newText)
                    binding.etAnswer.setSelection(binding.etAnswer.text?.length ?: 0)
                }
                stopListening()
            }

            override fun onPartialResults(partialResults: Bundle?) {
                val matches = partialResults?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
                if (!matches.isNullOrEmpty()) {
                    val partialText = matches[0]
                    val newText = if (baseText.isEmpty()) partialText.trim() else "$baseText ${partialText.trim()}"
                    binding.etAnswer.setText(newText)
                    binding.etAnswer.setSelection(binding.etAnswer.text?.length ?: 0)
                }
            }
            override fun onEvent(eventType: Int, params: Bundle?) {}
        })
    }

    private fun checkPermissionAndStart() {
        if (ContextCompat.checkSelfPermission(requireContext(), Manifest.permission.RECORD_AUDIO) 
            == PackageManager.PERMISSION_GRANTED) {
            startListening()
        } else {
            requestPermissionLauncher.launch(Manifest.permission.RECORD_AUDIO)
        }
    }

    private fun startListening() {
        baseText = binding.etAnswer.text?.toString()?.trim() ?: ""
        if (!viewModel.isRecording) {
            viewModel.toggleRecording()
        }
        speechRecognizer?.startListening(speechIntent)
        isListening = true
        updateMicUI()
    }

    private fun stopListening() {
        if (isListening) {
            if (viewModel.isRecording) {
                viewModel.toggleRecording()
            }
            speechRecognizer?.stopListening()
            isListening = false
            updateMicUI()
        }
    }

    // ── Animation Helpers ─────────────────────────────────────────────────────

    /** Button press scale micro-interaction: 1 → 0.95 → 1 over 120ms */
    private fun animatePressScale(view: View) {
        if (!ValueAnimator.areAnimatorsEnabled()) return
        val scaleDown = PropertyValuesHolder.ofFloat(View.SCALE_X, 1f, 0.95f)
        val scaleDownY = PropertyValuesHolder.ofFloat(View.SCALE_Y, 1f, 0.95f)
        ObjectAnimator.ofPropertyValuesHolder(view, scaleDown, scaleDownY).apply {
            duration = 60
            repeatCount = 1
            repeatMode = ObjectAnimator.REVERSE
            start()
        }
    }

    /** Mic icon pulse scale 1 → 1.2 → 1, repeated while recording */
    private fun startMicPulse() {
        if (!ValueAnimator.areAnimatorsEnabled()) return
        micPulseAnimator?.cancel()
        val sx = PropertyValuesHolder.ofFloat(View.SCALE_X, 1f, 1.18f)
        val sy = PropertyValuesHolder.ofFloat(View.SCALE_Y, 1f, 1.18f)
        micPulseAnimator = ObjectAnimator.ofPropertyValuesHolder(binding.btnMic, sx, sy).apply {
            duration = 600
            repeatCount = ObjectAnimator.INFINITE
            repeatMode = ObjectAnimator.REVERSE
            start()
        }
    }

    /** Stop mic pulse and restore natural scale */
    private fun stopMicPulse() {
        micPulseAnimator?.cancel()
        micPulseAnimator = null
        binding.btnMic.animate().scaleX(1f).scaleY(1f).setDuration(200).start()
    }

    private fun updateMicUI() {
        if (isListening) {
            binding.tvMicHint.text = "Listening… tap again to stop"
            binding.btnMic.setColorFilter(
                android.graphics.Color.parseColor("#F44336")
            )
            startMicPulse()
            binding.btnNext.isEnabled = false
            binding.btnNext.alpha = 0.5f
        } else {
            binding.tvMicHint.text = "Tap microphone to speak your answer"
            binding.btnMic.clearColorFilter()
            stopMicPulse()
            binding.btnNext.isEnabled = true
            binding.btnNext.alpha = 1.0f
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? InterviewUiData ?: return

        if (uiData.isEmptyState) {
            if (isFirstRender) {
                isFirstRender = false
                binding.layoutEmptyState.visibility = View.VISIBLE
                binding.groupInterviewContent.visibility = View.GONE

                if (ValueAnimator.areAnimatorsEnabled()) {
                    // Onboarding stagger entrance
                    val emptyChildren = listOf(
                        binding.lottieEmptyInterview,
                        binding.layoutEmptyState.getChildAt(1), // title
                        binding.layoutEmptyState.getChildAt(2), // subtitle
                        binding.btnBeginSession
                    )
                    emptyChildren.forEach { it?.alpha = 0f }

                    // Lottie: scale 0.8 -> 1.0
                    binding.lottieEmptyInterview.scaleX = 0.8f
                    binding.lottieEmptyInterview.scaleY = 0.8f
                    binding.lottieEmptyInterview.animate()
                        .alpha(1f).scaleX(1f).scaleY(1f)
                        .setDuration(400).setStartDelay(0).start()

                    // Title: fade in
                    binding.layoutEmptyState.getChildAt(1)?.animate()
                        ?.alpha(1f)?.setDuration(350)?.setStartDelay(100)?.start()

                    // Subtitle: fade in
                    binding.layoutEmptyState.getChildAt(2)?.animate()
                        ?.alpha(1f)?.setDuration(350)?.setStartDelay(200)?.start()

                    // Button: slide up from below
                    binding.btnBeginSession.translationY = 40f.dpToPx()
                    binding.btnBeginSession.animate()
                        .alpha(1f).translationY(0f)
                        .setDuration(400).setStartDelay(280).start()
                } else {
                    binding.layoutEmptyState.alpha = 1f
                }
            } else if (!binding.layoutEmptyState.isVisible) {
                binding.layoutEmptyState.apply {
                    alpha = 0f
                    isVisible = true
                    animate().alpha(1f).setDuration(300).start()
                }
                binding.groupInterviewContent.apply {
                    animate().alpha(0f).setDuration(300).withEndAction {
                        isVisible = false
                    }.start()
                }
            }
            return
        } else {
            if (isFirstRender) {
                // On first render: instant swap, no animation
                isFirstRender = false
                binding.groupInterviewContent.visibility = android.view.View.VISIBLE
                binding.groupInterviewContent.alpha = 1f
                binding.layoutEmptyState.visibility = android.view.View.GONE
            } else if (!binding.groupInterviewContent.isVisible) {
                binding.layoutEmptyState.apply {
                    animate().alpha(0f).setDuration(300).withEndAction {
                        isVisible = false
                    }.start()
                }
                binding.groupInterviewContent.apply {
                    alpha = 0f
                    isVisible = true
                    animate().alpha(1f).setDuration(300).start()
                }
            }
        }
        
        binding.tvQuestionCounter.text =
            "Question ${uiData.currentQuestionIndex} of ${uiData.totalQuestions}"
        binding.tvQuestion.text = "\u201c ${uiData.questionText} \u201d"
        binding.tvTimer.text = uiData.timerText
        binding.tvFollowUpLabel.visibility = if (uiData.isFollowUp) View.VISIBLE else View.GONE

        // Progress bar: out of 10
        binding.progressBar.max = uiData.totalQuestions
        binding.progressBar.progress = uiData.currentQuestionIndex

        // Update Next button label on last question
        if (uiData.currentQuestionIndex == uiData.totalQuestions) {
            binding.btnNext.text = "Finish Interview"
        } else {
            binding.btnNext.text = "Next Question"
        }
        binding.btnNext.isEnabled = !viewModel.isTransitioning
    }

    override fun onDestroy() {
        super.onDestroy()
        micPulseAnimator?.cancel()
        speechRecognizer?.destroy()
    }

    private fun Float.dpToPx(): Float =
        this * resources.displayMetrics.density
}
