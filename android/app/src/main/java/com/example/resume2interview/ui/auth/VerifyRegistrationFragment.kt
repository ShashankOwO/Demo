package com.example.resume2interview.ui.auth

import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.res.ColorStateList
import android.graphics.Color
import android.view.View
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.navigation.fragment.navArgs
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentVerifyRegistrationBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class VerifyRegistrationFragment : BaseFragment<FragmentVerifyRegistrationBinding, VerifyRegistrationViewModel>(
    FragmentVerifyRegistrationBinding::inflate
) {
    override val viewModel: VerifyRegistrationViewModel by viewModels()
    private val args: VerifyRegistrationFragmentArgs by navArgs()

    override fun setupUI() {
        binding.tvDescription.text = "Enter the 6-digit code sent to ${args.email} to activate your account."

        binding.btnVerify.setOnClickListener {
            val code = binding.etCode.text.toString().trim()
            if (code.length != 6) {
                highlightError(binding.etCode)
                binding.etCode.error = "Enter a valid 6-digit code"
                return@setOnClickListener
            }
            viewModel.verifyOtp(args.email, code)
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigate(R.id.action_verifyRegistrationFragment_to_loginFragment)
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_verifyRegistrationFragment_to_homeFragment)
        }
    }

    override fun showError(message: String) {
        super.showError(message)
        highlightError(binding.etCode)
        binding.etCode.error = message
    }

    private fun highlightError(view: View) {
        view.setBackgroundResource(R.drawable.bg_input_error)
        val colorFrom = Color.TRANSPARENT
        val colorTo   = Color.parseColor("#1AFF3B30")
        ValueAnimator.ofArgb(colorFrom, colorTo, colorFrom).apply {
            duration  = 600
            addUpdateListener { view.setBackgroundTintList(ColorStateList.valueOf(it.animatedValue as Int)) }
        }.start()
        ObjectAnimator.ofFloat(view, "translationX", 0f, -12f, 12f, -8f, 8f, -4f, 4f, 0f).apply { duration = 350 }.start()
    }
}
