package com.example.resume2interview.ui.resume

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentUploadResumeBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class UploadResumeFragment : BaseFragment<FragmentUploadResumeBinding, UploadResumeViewModel>(
    FragmentUploadResumeBinding::inflate
) {
    override val viewModel: UploadResumeViewModel by viewModels()

    override fun setupUI() {
        binding.btnBrowse.setOnClickListener {
            // Pick file intent logic would go here
            viewModel.uploadResume("resume.pdf")
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_uploadResumeFragment_to_resumeSkillsFragment)
        }
    }
}
