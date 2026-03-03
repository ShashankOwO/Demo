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

        if (uiData.isResumeActive) {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_resumeSkillsFragment)
            }
            binding.tvStatusBadge.text = "✓ Active"
            binding.tvStatusBadge.setTextColor(Color.parseColor("#1B5E20"))
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_green)
            binding.cardResumeStatus.setCardBackgroundColor(Color.parseColor("#FFFFFF"))
            binding.tvResumeStatus.text = "12 skills extracted"
            binding.tvResumeStatus.setTextColor(Color.parseColor("#1A1C1E"))
            binding.tvLastUpdated.isVisible = true
            val sdf = SimpleDateFormat("M/dd/yyyy", Locale.getDefault())
            binding.tvLastUpdated.text = "Last updated:   ${sdf.format(Date())}"
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
        binding.tvLatestScore.text = "${uiData.latestScore}/100"
    }
}
