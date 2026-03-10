package com.example.resume2interview.ui.auth

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentResetPasswordBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

import androidx.navigation.fragment.navArgs

@AndroidEntryPoint
class ResetPasswordFragment : BaseFragment<FragmentResetPasswordBinding, ResetPasswordViewModel>(
    FragmentResetPasswordBinding::inflate
) {
    override val viewModel: ResetPasswordViewModel by viewModels()
    private val args: ResetPasswordFragmentArgs by navArgs()

    override fun setupUI() {
        binding.btnResetPassword.setOnClickListener {
            val code = binding.etCode.text.toString().trim()
            val newPass = binding.etNewPassword.text.toString()
            val confirmPass = binding.etConfirmPassword.text.toString()
            
            if (newPass != confirmPass) {
                // Not ideal to have logic here but quick validation
                return@setOnClickListener
            }
            
            viewModel.resetPassword(args.email, code, newPass)
        }

        binding.btnBack.setOnClickListener {
            // Popping explicitly to login to skip the ForgotPassword screen
            findNavController().popBackStack(R.id.loginFragment, false)
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_resetPasswordFragment_to_loginFragment)
        }
    }
}
