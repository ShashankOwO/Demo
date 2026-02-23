package com.example.resume2interview.ui.resume

import android.animation.ObjectAnimator
import android.animation.PropertyValuesHolder
import android.view.View
import android.view.animation.LinearInterpolator
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

    private var pulseAnimator: ObjectAnimator? = null

    override fun setupUI() {
        // Back navigation
        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }

        // Start idle pulse animation on the upload icon
        startPulseAnimation()

        binding.btnBrowse.setOnClickListener {
            // Show loading state
            setLoadingState(true)
            // Trigger the upload
            viewModel.uploadResume("resume.pdf")
        }
    }

    private fun startPulseAnimation() {
        val scaleX = PropertyValuesHolder.ofFloat(View.SCALE_X, 1f, 1.10f, 1f)
        val scaleY = PropertyValuesHolder.ofFloat(View.SCALE_Y, 1f, 1.10f, 1f)
        pulseAnimator = ObjectAnimator.ofPropertyValuesHolder(binding.ivUpload, scaleX, scaleY).apply {
            duration = 1600
            repeatCount = ObjectAnimator.INFINITE
            interpolator = LinearInterpolator()
            start()
        }
    }

    private fun stopPulseAnimation() {
        pulseAnimator?.cancel()
        binding.ivUpload.scaleX = 1f
        binding.ivUpload.scaleY = 1f
    }

    private fun setLoadingState(loading: Boolean) {
        if (loading) {
            binding.layoutLoading.visibility = View.VISIBLE
            binding.btnBrowse.isEnabled = false
            binding.btnBrowse.alpha = 0.6f
            stopPulseAnimation()
        } else {
            binding.layoutLoading.visibility = View.GONE
            binding.btnBrowse.isEnabled = true
            binding.btnBrowse.alpha = 1f
            startPulseAnimation()
        }
    }

    override fun showContent(data: Any?) {
        setLoadingState(false)
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_uploadResumeFragment_to_resumeSkillsFragment)
        }
    }

    override fun onDestroyView() {
        stopPulseAnimation()
        super.onDestroyView()
    }
}
