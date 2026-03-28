package com.example.resume2interview.ui.home

import android.animation.ObjectAnimator
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ProgressBar
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.DialogInterviewHistoryBinding
import com.google.android.material.bottomsheet.BottomSheetDialogFragment

class InterviewHistoryBottomSheet : BottomSheetDialogFragment() {

    private var _binding: DialogInterviewHistoryBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = DialogInterviewHistoryBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnClose.setOnClickListener { dismiss() }

        binding.btnViewReports.setOnClickListener {
            dismiss()
            // Navigate to the Reports tab via NavController
            findNavController().navigate(R.id.reportsFragment)
        }

        // Animate all progress bars from 0 → target on appear
        animateProgressBar(binding.pbCommunication, 6)
        animateProgressBar(binding.pbProblemSolving, 5)
        animateProgressBar(binding.pbSystemDesign, 4)
        animateProgressBar(binding.pbTechnical, 3)
        animateProgressBar(binding.pbBehavioral, 2)
    }

    private fun animateProgressBar(bar: ProgressBar, target: Int) {
        bar.progress = 0
        ObjectAnimator.ofInt(bar, "progress", 0, target).apply {
            duration = 700
            startDelay = 200
            start()
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        const val TAG = "InterviewHistoryBottomSheet"
    }
}
