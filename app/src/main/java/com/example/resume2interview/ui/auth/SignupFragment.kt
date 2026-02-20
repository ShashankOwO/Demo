package com.example.resume2interview.ui.auth

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentSignupBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SignupFragment : BaseFragment<FragmentSignupBinding, SignupViewModel>(
    FragmentSignupBinding::inflate
) {
    override val viewModel: SignupViewModel by viewModels()

    override fun setupUI() {
        binding.btnCreateAccount.setOnClickListener {
            val name = binding.etFullName.text.toString()
            val email = binding.etEmail.text.toString()
            val pass = binding.etPassword.text.toString()
            viewModel.signup(name, email, pass)
        }

        binding.tvLogin.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_signupFragment_to_homeFragment)
        }
    }
}
