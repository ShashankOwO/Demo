package com.example.resume2interview.ui.interview

import android.widget.Toast
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentInterviewBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class InterviewFragment : BaseFragment<FragmentInterviewBinding, InterviewViewModel>(
    FragmentInterviewBinding::inflate
) {
    override val viewModel: InterviewViewModel by viewModels()

    override fun setupUI() {
        // Close button — go back
        binding.btnClose.setOnClickListener {
            findNavController().navigateUp()
        }

        // Mic button — toggle recording
        binding.btnMic.setOnClickListener {
            viewModel.toggleRecording()
        }

        // Next question button
        binding.btnNext.setOnClickListener {
            viewModel.nextQuestion()
        }

        // Observe recording state → update mic button tint / hint
        viewModel.isRecording.observe(viewLifecycleOwner) { isRecording ->
            if (isRecording) {
                binding.tvMicHint.text = "Recording… tap again to stop"
                binding.btnMic.setColorFilter(
                    android.graphics.Color.parseColor("#F44336")
                )
            } else {
                binding.tvMicHint.text = "Tap microphone to speak your answer"
                binding.btnMic.clearColorFilter()
            }
        }

        // Observe timer text
        viewModel.timerText.observe(viewLifecycleOwner) { time ->
            binding.tvTimer.text = time
        }

        // Observe finished
        viewModel.isFinished.observe(viewLifecycleOwner) { finished ->
            if (finished) {
                Toast.makeText(
                    requireContext(),
                    "Interview complete! Great job!",
                    Toast.LENGTH_LONG
                ).show()
                findNavController().navigateUp()
            }
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? InterviewUiData ?: return
        binding.tvQuestionCounter.text =
            "Question ${uiData.currentQuestionIndex} of ${uiData.totalQuestions}"
        binding.tvQuestion.text = "\u201c ${uiData.questionText} \u201d"
        binding.tvTimer.text = uiData.timerText

        // Progress bar: out of 10
        binding.progressBar.max = uiData.totalQuestions
        binding.progressBar.progress = uiData.currentQuestionIndex

        // Update Next button label on last question
        if (uiData.currentQuestionIndex == uiData.totalQuestions) {
            binding.btnNext.text = "Finish Interview"
        } else {
            binding.btnNext.text = "Next Question"
        }
    }
}
