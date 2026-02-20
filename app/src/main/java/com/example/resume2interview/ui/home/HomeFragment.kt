package com.example.resume2interview.ui.home

import android.app.AlertDialog
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentHomeBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class HomeFragment : BaseFragment<FragmentHomeBinding, HomeViewModel>(
    FragmentHomeBinding::inflate
) {
    override val viewModel: HomeViewModel by viewModels()

    override fun setupUI() {

        // ── Avatar icon (top-right) → navigate to Profile ──
        binding.tvAvatar.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_profileFragment)
        }

        // ── Resume status card → Upload Resume ──
        binding.cardResumeStatus.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
        }

        // ── Interview Progress card → show popup dialog ──
        binding.cardProgress.setOnClickListener {
            showProgressDialog()
        }

        // ── Quick action buttons ──
        binding.cardUpdateResume.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
        }

        binding.cardStartInterview.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewFragment)
        }
    }

    private fun showProgressDialog() {
        val sessions = binding.tvSessionCount.text.toString().toIntOrNull() ?: 5
        val latestScore = binding.tvLatestScore.text.toString()

        AlertDialog.Builder(requireContext())
            .setTitle("📊 Interview Progress")
            .setMessage(
                "Sessions completed: $sessions\n" +
                "Latest score: $latestScore\n\n" +
                "Focus Areas:\n" +
                "  • System design scalability\n" +
                "  • Edge case handling\n\n" +
                "Keep it up — you're improving steadily! 🚀"
            )
            .setPositiveButton("Start New Session") { _, _ ->
                findNavController().navigate(R.id.action_homeFragment_to_interviewFragment)
            }
            .setNegativeButton("View Reports") { _, _ ->
                // Navigate to the reports tab via bottom nav
                findNavController().navigate(R.id.reportsFragment)
            }
            .setNeutralButton("Close", null)
            .show()
    }

    override fun showContent(data: Any?) {
        val uiData = data as? HomeUiData ?: return
        binding.tvWelcome.text = "Hello, ${uiData.userName}"
        binding.tvAvatar.text = uiData.userName.firstOrNull()?.uppercaseChar()?.toString() ?: "A"
        binding.tvResumeStatus.text = uiData.resumeStatus
        binding.tvSessionCount.text = uiData.interviewSessionCount.toString()
        binding.tvLatestScore.text = "${uiData.latestScore}/100"
    }
}
