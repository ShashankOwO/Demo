package com.example.resume2interview.ui.profile

import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import com.bumptech.glide.Glide
import com.example.resume2interview.R
import com.example.resume2interview.data.model.UserProfileResponse
import com.example.resume2interview.data.network.ApiClient
import com.example.resume2interview.databinding.FragmentProfileBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest

@AndroidEntryPoint
class ProfileFragment : BaseFragment<FragmentProfileBinding, ProfileViewModel>(
    FragmentProfileBinding::inflate
) {
    override val viewModel: ProfileViewModel by viewModels()

    override fun setupUI() {
        binding.btnEditProfile.setOnClickListener {
            findNavController().navigate(R.id.action_profileFragment_to_editProfileFragment)
        }

        binding.btnSignOut.setOnClickListener {
            viewModel.logout()
            findNavController().navigate(R.id.action_profileFragment_to_loginFragment)
        }

        binding.tvNotifications.setOnClickListener {
            findNavController().navigate(R.id.action_profileFragment_to_notificationsFragment)
        }

        binding.tvPreferences.setOnClickListener {
            findNavController().navigate(R.id.action_profileFragment_to_preferencesFragment)
        }

        binding.tvPrivacyPolicy.setOnClickListener {
            findNavController().navigate(R.id.action_profileFragment_to_privacyPolicyFragment)
        }

        // Observe shared profile cache — auto-refreshes when Edit Profile saves changes
        viewLifecycleOwner.lifecycleScope.launchWhenStarted {
            viewModel.profileData.collectLatest { profile ->
                profile?.let { displayProfile(it) }
            }
        }
    }

    override fun showContent(data: Any?) {
        // Ignored. We use profileData flow for continuous real-time updates.
    }

    private fun displayProfile(profile: UserProfileResponse) {
        // Show name (fallback to email if name not set yet)
        binding.tvName.text = profile.name?.takeIf { it.isNotBlank() } ?: profile.email ?: "User"
        binding.tvEmail.text = profile.email ?: ""

        // Load profile photo with Glide
        val photoUrl = profile.profilePhotoUrl
        if (!photoUrl.isNullOrBlank()) {
            val fullUrl = "${ApiClient.BASE_URL.trimEnd('/')}$photoUrl"
            // Clear placeholder styling so the real photo fills the circle cleanly
            binding.ivAvatar.imageTintList = null
            binding.ivAvatar.setPadding(0, 0, 0, 0)
            binding.ivAvatar.background = null
            Glide.with(this)
                .load(fullUrl)
                .circleCrop()
                .placeholder(R.drawable.ic_user)
                .error(R.drawable.ic_user)
                .into(binding.ivAvatar)
        } else {
            // Restore placeholder styling
            binding.ivAvatar.setImageResource(R.drawable.ic_user)
            binding.ivAvatar.imageTintList = android.content.res.ColorStateList.valueOf(
                androidx.core.content.ContextCompat.getColor(requireContext(), R.color.accent_indigo)
            )
            val paddingPx = (18 * resources.displayMetrics.density).toInt()
            binding.ivAvatar.setPadding(paddingPx, paddingPx, paddingPx, paddingPx)
            binding.ivAvatar.background = androidx.core.content.ContextCompat.getDrawable(
                requireContext(), R.drawable.bg_gradient_circle
            )
        }
    }
}
