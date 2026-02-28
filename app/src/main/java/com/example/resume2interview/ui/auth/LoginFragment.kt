package com.example.resume2interview.ui.auth

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.view.animation.AccelerateInterpolator
import android.view.animation.DecelerateInterpolator
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentLoginBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class LoginFragment : BaseFragment<FragmentLoginBinding, LoginViewModel>(
    FragmentLoginBinding::inflate
) {
    override val viewModel: LoginViewModel by viewModels()

    override fun setupUI() {

        // ── Password focus → light up the FrameLayout border ──────────────────
        binding.etPassword.setOnFocusChangeListener { _, hasFocus ->
            binding.layoutPassword.setBackgroundResource(
                if (hasFocus) R.drawable.bg_input_focused
                else R.drawable.bg_input_field
            )
        }

        // ── Sign In tap: fade-out → auth → navigate ────────────────────────────
        binding.btnLogin.setOnClickListener {
            // Quick press-down fade animation
            val fadeOut = ObjectAnimator.ofFloat(binding.btnLogin, "alpha", 1f, 0.55f)
                .apply { duration = 120; interpolator = AccelerateInterpolator() }
            val fadeIn = ObjectAnimator.ofFloat(binding.btnLogin, "alpha", 0.55f, 1f)
                .apply { duration = 200; interpolator = DecelerateInterpolator(); startDelay = 120 }
            val scaleX = ObjectAnimator.ofFloat(binding.btnLogin, "scaleX", 1f, 0.96f, 1f)
                .apply { duration = 320 }
            val scaleY = ObjectAnimator.ofFloat(binding.btnLogin, "scaleY", 1f, 0.96f, 1f)
                .apply { duration = 320 }

            AnimatorSet().apply {
                playTogether(fadeOut, fadeIn, scaleX, scaleY)
                start()
            }

            val email = binding.etEmail.text.toString()
            val pass = binding.etPassword.text.toString()
            viewModel.login(email, pass)
        }

        binding.tvSignup.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_signupFragment)
        }

        binding.tvForgotPassword.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_forgotPasswordFragment)
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
        }
    }
}
