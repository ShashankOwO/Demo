package com.example.resume2interview.ui.auth

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentForgotPasswordBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ForgotPasswordFragment : BaseFragment<FragmentForgotPasswordBinding, ForgotPasswordViewModel>(
    FragmentForgotPasswordBinding::inflate
) {
    override val viewModel: ForgotPasswordViewModel by viewModels()

    override fun setupUI() {
        binding.btnSendCode.setOnClickListener {
            val email = binding.etEmail.text.toString().trim()
            if (email.isEmpty()) return@setOnClickListener
            // Disable + change text only when the user actually presses the button
            binding.btnSendCode.isEnabled = false
            binding.btnSendCode.text = "Sending email…"
            viewModel.sendResetCode(email)
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    // Do NOT override showLoading — BaseViewModel starts in Loading state,
    // so showLoading() fires on fragment start and would corrupt the button text.

    override fun showContent(data: Any?) {
        binding.btnSendCode.isEnabled = true
        binding.btnSendCode.text = "Send Reset Code"
        val success = data as? Boolean ?: false
        if (success) {
            val email = binding.etEmail.text.toString().trim()
            val action = ForgotPasswordFragmentDirections.actionForgotPasswordFragmentToResetPasswordFragment(email)
            findNavController().navigate(action)
        }
    }

    override fun showError(message: String) {
        binding.btnSendCode.isEnabled = true
        binding.btnSendCode.text = "Send Reset Code"
        super.showError(message)
    }
}
