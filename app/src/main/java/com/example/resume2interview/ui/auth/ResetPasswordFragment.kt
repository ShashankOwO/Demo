package com.example.resume2interview.ui.auth

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentResetPasswordBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ResetPasswordFragment : BaseFragment<FragmentResetPasswordBinding, ResetPasswordViewModel>(
    FragmentResetPasswordBinding::inflate
) {
    override val viewModel: ResetPasswordViewModel by viewModels()

    override fun setupUI() {
        binding.btnResetPassword.setOnClickListener {
            val code = binding.etCode.text.toString()
            val newPass = binding.etNewPassword.text.toString()
            viewModel.resetPassword(code, newPass)
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_resetPasswordFragment_to_loginFragment)
        }
    }
}
