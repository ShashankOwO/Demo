package com.example.resume2interview.ui.profile

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentEditProfileBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class EditProfileFragment : BaseFragment<FragmentEditProfileBinding, EditProfileViewModel>(
    FragmentEditProfileBinding::inflate
) {
    override val viewModel: EditProfileViewModel by viewModels()

    override fun setupUI() {
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
