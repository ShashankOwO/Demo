package com.example.resume2interview.ui.profile

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentProfileBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

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
            // Clear session and navigate to splash/login
            // For now just back to login directly or via nav graph
            findNavController().navigate(R.id.action_profileFragment_to_loginFragment)
        }
    }

    override fun showContent(data: Any?) {
        val user = data as? UserProfile ?: return
        
        binding.tvName.text = user.name
        binding.tvEmail.text = user.email
        binding.tvStatInterviews.text = user.interviewsCompleted.toString()
        binding.tvStatScore.text = "${user.avgScore}"
        binding.tvStatResumes.text = user.resumesUploaded.toString()
    }
}
