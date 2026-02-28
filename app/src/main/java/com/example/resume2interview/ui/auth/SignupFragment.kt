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

        // ── Password focus → light up the FrameLayout border ──────────────────
        binding.etPassword.setOnFocusChangeListener { _, hasFocus ->
            binding.layoutPassword.setBackgroundResource(
                if (hasFocus) R.drawable.bg_input_focused
                else R.drawable.bg_input_field
            )
        }

        binding.tvLogin.setOnClickListener {
            findNavController().navigate(R.id.action_signupFragment_to_loginFragment)
        }

        binding.btnCreateAccount.setOnClickListener {
            val name  = binding.etFullName.text.toString()
            val email = binding.etEmail.text.toString()
            val pass  = binding.etPassword.text.toString()
            viewModel.signup(name, email, pass)
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_signupFragment_to_homeFragment)
        }
    }
}
