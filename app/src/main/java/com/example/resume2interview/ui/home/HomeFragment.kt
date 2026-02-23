package com.example.resume2interview.ui.home

import android.graphics.Color
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentHomeBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

@AndroidEntryPoint
class HomeFragment : BaseFragment<FragmentHomeBinding, HomeViewModel>(
    FragmentHomeBinding::inflate
) {
    override val viewModel: HomeViewModel by viewModels()

    override fun onResume() {
        super.onResume()
        viewModel.loadHomeData()
    }

    override fun setupUI() {

        // ── Avatar icon (top-right) → navigate to Profile ──
        binding.tvAvatar.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_profileFragment)
        }

        // Card status click listener is now set in showContent() based on state

        // ── Interview Progress card → show premium bottom sheet ──
        binding.cardProgress.setOnClickListener {
            InterviewHistoryBottomSheet()
                .show(parentFragmentManager, InterviewHistoryBottomSheet.TAG)
        }

        // ── Quick action buttons ──
        binding.cardUpdateResume.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
        }

        binding.cardStartInterview.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewFragment)
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? HomeUiData ?: return
        binding.tvWelcome.text = "Hello, ${uiData.userName}"
        binding.tvAvatar.text = uiData.userName.firstOrNull()?.uppercaseChar()?.toString() ?: "A"
        
        if (uiData.isResumeActive) {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_resumeSkillsFragment)
            }
            
            // "Start Interview" darker blue accent
            binding.cardStartInterview.setCardBackgroundColor(Color.parseColor("#1976D2")) // Darker Blue Accent
            binding.ivStartInterviewIcon.setColorFilter(Color.WHITE)
            binding.tvStartInterview.setTextColor(Color.WHITE)
            
            binding.tvStatusBadge.text = "✓ Active"
            binding.tvStatusBadge.setTextColor(Color.parseColor("#1B5E20")) // dark green
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_green)
            binding.cardResumeStatus.setCardBackgroundColor(Color.parseColor("#FFFFFF"))
            
            // From mock: "12 skills extracted"
            binding.tvResumeStatus.text = "12 skills extracted"
            binding.tvResumeStatus.setTextColor(Color.parseColor("#1A1C1E"))
            binding.tvLastUpdated.isVisible = true
            
            val sdf = SimpleDateFormat("M/dd/yyyy", Locale.getDefault())
            val dateStr = sdf.format(Date())
            binding.tvLastUpdated.text = "Last updated:   ${dateStr}"
        } else {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
            }
            
            // "Start Interview" default grey
            binding.cardStartInterview.setCardBackgroundColor(Color.parseColor("#F5F5F5"))
            binding.ivStartInterviewIcon.setColorFilter(Color.parseColor("#9E9E9E"))
            binding.tvStartInterview.setTextColor(Color.parseColor("#9E9E9E"))
            
            binding.tvStatusBadge.text = "! Action Needed"
            binding.tvStatusBadge.setTextColor(Color.parseColor("#E65100")) // dark orange
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_orange)
            binding.cardResumeStatus.setCardBackgroundColor(Color.parseColor("#FFF8E1"))
            
            binding.tvResumeStatus.text = "Upload your resume to generate personalized interview questions."
            binding.tvResumeStatus.setTextColor(Color.parseColor("#757575"))
            binding.tvLastUpdated.isVisible = false
        }
        
        binding.tvSessionCount.text = uiData.interviewSessionCount.toString()
        binding.tvLatestScore.text = "${uiData.latestScore}/100"
    }
}
