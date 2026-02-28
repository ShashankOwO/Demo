package com.example.resume2interview.ui.home

import android.animation.ObjectAnimator
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ProgressBar
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentInterviewProgressBinding

class InterviewProgressFragment : Fragment() {

    private var _binding: FragmentInterviewProgressBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentInterviewProgressBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnBack.setOnClickListener {
            findNavController().popBackStack()
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
}
