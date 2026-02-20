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
            val email = binding.etEmail.text.toString()
            viewModel.sendResetCode(email)
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_forgotPasswordFragment_to_resetPasswordFragment)
        }
    }
}
