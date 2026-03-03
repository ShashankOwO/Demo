package com.example.resume2interview.ui.profile

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentEditProfileBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.collectLatest

@AndroidEntryPoint
class EditProfileFragment : BaseFragment<FragmentEditProfileBinding, EditProfileViewModel>(
    FragmentEditProfileBinding::inflate
) {
    override val viewModel: EditProfileViewModel by viewModels()

    override fun setupUI() {
        viewModel.fetchProfile()

        viewLifecycleOwner.lifecycleScope.launchWhenStarted {
            viewModel.profileData.collectLatest { profile ->
                profile?.let {
                    binding.etName.setText(it.name)
                    binding.etEmail.setText(it.email)
                    binding.etJobTitle.setText(it.title)
                    binding.etLocation.setText(it.location)
                    binding.etBio.setText(it.bio)
                }
            }
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
        
        binding.btnSave.setOnClickListener {
            viewModel.saveProfile(
                binding.etName.text.toString(),
                binding.etEmail.text.toString(),
                binding.etJobTitle.text.toString(),
                binding.etLocation.text.toString(),
                binding.etBio.text.toString()
            )
        }
    }
    
    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigateUp()
        }
    }
}
