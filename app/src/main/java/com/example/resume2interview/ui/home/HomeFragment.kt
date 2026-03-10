package com.example.resume2interview.ui.home

import android.graphics.Color
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import com.bumptech.glide.Glide
import com.example.resume2interview.R
import com.example.resume2interview.data.network.ApiClient
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.databinding.FragmentHomeBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.inject.Inject

@AndroidEntryPoint
class HomeFragment : BaseFragment<FragmentHomeBinding, HomeViewModel>(
    FragmentHomeBinding::inflate
) {
    override val viewModel: HomeViewModel by viewModels()

    @Inject
    lateinit var profileRepository: ProfileRepository

    override fun onResume() {
        super.onResume()
        viewModel.loadHomeData()
    }

    override fun setupUI() {

        // Tap anywhere on the avatar area → go to Profile
        binding.frameAvatar.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_profileFragment)
        }

        binding.cardProgress.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewProgressFragment)
        }

        binding.cardUpdateResume.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
        }

        binding.cardStartInterview.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewFragment)
        }

        // Observe profile cache to update name and avatar photo in real time
        viewLifecycleOwner.lifecycleScope.launchWhenStarted {
            profileRepository.cachedProfile.collectLatest { profile ->
                profile?.let {
                    // Update welcome greeting with real name
                    val name = it.name?.takeIf { n -> n.isNotBlank() }
                        ?: it.email?.substringBefore('@')
                        ?: "User"
                    binding.tvWelcome.text = "Hello, $name \uD83D\uDC4B"
                    binding.tvAvatar.text = name.firstOrNull()?.uppercaseChar()?.toString() ?: "U"

                    // Load profile photo if available
                    val photoUrl = it.profilePhotoUrl
                    if (!photoUrl.isNullOrBlank()) {
                        val fullUrl = "${ApiClient.BASE_URL.trimEnd('/')}$photoUrl"
                        Glide.with(this@HomeFragment)
                            .load(fullUrl)
                            .circleCrop()
                            .placeholder(R.drawable.ic_user)
                            .error(R.drawable.ic_user)
                            .into(binding.ivAvatar)
                        binding.ivAvatar.isVisible = true
                        binding.tvAvatar.isVisible = false
                    } else {
                        binding.ivAvatar.isVisible = false
                        binding.tvAvatar.isVisible = true
                    }
                }
            }
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? HomeUiData ?: return

        // Update welcome text (profile observer handles name/photo; this is the fallback)
        if (profileRepository.cachedProfile.value == null) {
            binding.tvWelcome.text = "Hello, ${uiData.userName} \uD83D\uDC4B"
            binding.tvAvatar.text = uiData.userName.firstOrNull()?.uppercaseChar()?.toString() ?: "A"
        }

        binding.cardStartInterview.setCardBackgroundColor(Color.parseColor("#1976D2"))
        binding.ivStartInterviewIcon.setColorFilter(Color.WHITE)
        binding.tvStartInterview.setTextColor(Color.WHITE)

        // Intercept logic removed - standard routing handled in setupUI
        if (uiData.isResumeActive) {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_resumeSkillsFragment)
            }
            binding.tvStatusBadge.text = "✓ Active"
            binding.tvStatusBadge.setTextColor(Color.parseColor("#1B5E20"))
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_green)
            binding.cardResumeStatus.setCardBackgroundColor(Color.parseColor("#FFFFFF"))
            val skillCount = uiData.extractedSkills
            binding.tvResumeStatus.text = if (skillCount > 0) "$skillCount skills extracted" else "Resume active"
            binding.tvResumeStatus.setTextColor(Color.parseColor("#1A1C1E"))
            binding.tvLastUpdated.isVisible = true
            val sdf = SimpleDateFormat("M/dd/yyyy", Locale.getDefault())
            val displayDate = uiData.resumeUploadedAt?.let {
                try {
                    val iso = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
                    sdf.format(iso.parse(it) ?: Date())
                } catch (e: Exception) { sdf.format(Date()) }
            } ?: sdf.format(Date())
            binding.tvLastUpdated.text = "Last updated:   $displayDate"
        } else {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
            }
            binding.tvStatusBadge.text = "⚠ Action Needed"
            binding.tvStatusBadge.setTextColor(Color.parseColor("#E65100"))
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_orange)
            binding.cardResumeStatus.setCardBackgroundColor(Color.parseColor("#FFF8E1"))
            binding.tvResumeStatus.text = "Upload your resume to generate personalized interview questions."
            binding.tvResumeStatus.setTextColor(Color.parseColor("#757575"))
            binding.tvLastUpdated.isVisible = false
        }

        binding.tvSessionCount.text = uiData.interviewSessionCount.toString()
        binding.tvLatestScore.text  = if (uiData.latestScore > 0) "${uiData.latestScore}/100" else "--/100"

        // Show real last session date from analytics/last-five
        val sdfOut = java.text.SimpleDateFormat("M/d/yyyy", java.util.Locale.getDefault())
        val sdfIn  = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", java.util.Locale.getDefault())
        val dateStr = uiData.lastSessionDate?.let {
            try { sdfOut.format(sdfIn.parse(it) ?: java.util.Date()) }
            catch (e: Exception) { null }
        }
        val tvDate = view?.findViewById<android.widget.TextView>(R.id.tv_last_session_date)
        tvDate?.text = dateStr ?: "--"
        tvDate?.isVisible = dateStr != null

        // Dynamically set Focus Areas
        if (uiData.focusAreas.isNotEmpty()) {
            val tvFocus1 = view?.findViewById<android.widget.TextView>(R.id.tv_focus_1)
            tvFocus1?.text = uiData.focusAreas[0]
            
            if (uiData.focusAreas.size > 1) {
                val tvFocus2 = view?.findViewById<android.widget.TextView>(R.id.tv_focus_2)
                tvFocus2?.text = uiData.focusAreas[1]
                binding.cardFocus2.isVisible = true
            } else {
                binding.cardFocus2.isVisible = false
            }
        }
    }
}
