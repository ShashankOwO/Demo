package com.example.resume2interview.ui.resume

import android.animation.ObjectAnimator
import android.animation.PropertyValuesHolder
import android.net.Uri
import android.util.Log
import android.view.View
import android.view.animation.LinearInterpolator
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.os.bundleOf
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.databinding.FragmentUploadResumeBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.google.gson.Gson
import dagger.hilt.android.AndroidEntryPoint

private const val DBG = "UPLOAD_DEBUG"

@AndroidEntryPoint
class UploadResumeFragment : BaseFragment<FragmentUploadResumeBinding, UploadResumeViewModel>(
    FragmentUploadResumeBinding::inflate
) {
    override val viewModel: UploadResumeViewModel by viewModels()

    private var pulseAnimator: ObjectAnimator? = null

    /**
     * Guard flag — loading UI must never show until the user has actually
     * picked a file and the upload coroutine has begun.
     */
    private var uploadTriggered = false

    /**
     * PDF picker — MIME-filtered to application/pdf.
     * Loading is NOT shown here; the ViewModel triggers it after validation.
     */
    private val pdfPickerLauncher =
        registerForActivityResult(ActivityResultContracts.GetContent()) { uri: Uri? ->
            Log.d(DBG, "URI received = $uri")
            if (uri != null) {
                uploadTriggered = true
                viewModel.uploadResume(requireContext(), uri)
            }
            // uri == null means user cancelled — do nothing, keep Browse enabled
        }

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }

        startPulseAnimation()

        binding.btnBrowse.setOnClickListener {
            // ONLY launch the picker — no loading, no upload triggered here
            Log.d(DBG, "Picker opened")
            pdfPickerLauncher.launch("application/pdf")
        }
    }

    // ── State callbacks ──────────────────────────────────────────────────────

    /**
     * Only show loading if the upload has actually been triggered.
     * This prevents the initial UiState.Loading emitted by BaseViewModel
     * from showing the spinner when the screen first opens.
     */
    override fun showLoading() {
        if (uploadTriggered) {
            setLoadingState(true)
        }
    }

    override fun showContent(data: Any?) {
        setLoadingState(false)
        val analysis = data as? ResumeAnalysisOut ?: return

        val json = Gson().toJson(analysis)
        val bundle = bundleOf(ResumeSkillsFragment.ARG_ANALYSIS_JSON to json)
        findNavController().navigate(
            R.id.action_uploadResumeFragment_to_resumeSkillsFragment,
            bundle
        )
    }

    override fun showError(message: String) {
        setLoadingState(false)
        // Suppress the silent empty-string "idle" error set by ViewModel init
        if (message.isNotEmpty()) {
            Toast.makeText(requireContext(), message, Toast.LENGTH_LONG).show()
        }
    }

    // ── Animations ───────────────────────────────────────────────────────────

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

    override fun onDestroyView() {
        stopPulseAnimation()
        super.onDestroyView()
    }
}
