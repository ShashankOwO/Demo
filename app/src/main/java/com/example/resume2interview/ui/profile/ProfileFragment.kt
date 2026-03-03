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
        val profile = data as? UserProfileResponse ?: return
        displayProfile(profile)
    }

    private fun displayProfile(profile: UserProfileResponse) {
        // Show name (fallback to email if name not set yet)
        binding.tvName.text = profile.name?.takeIf { it.isNotBlank() } ?: profile.email ?: "User"
        binding.tvEmail.text = profile.email ?: ""

        // Load profile photo with Glide
        val photoUrl = profile.profilePhotoUrl
        if (!photoUrl.isNullOrBlank()) {
            val fullUrl = "${ApiClient.BASE_URL.trimEnd('/')}$photoUrl"
            Glide.with(this)
                .load(fullUrl)
                .circleCrop()
                .placeholder(R.drawable.ic_user)
                .error(R.drawable.ic_user)
                .into(binding.ivAvatar)
        } else {
            binding.ivAvatar.setImageResource(R.drawable.ic_user)
        }
    }
}
