package com.example.resume2interview.ui.auth

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.res.ColorStateList
import android.graphics.Color
import android.view.View
import android.view.animation.AccelerateInterpolator
import android.view.animation.DecelerateInterpolator
import androidx.core.content.ContextCompat
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

        // ── Password focus → animated border glow ────────────────────────────────
        binding.etPassword.setOnFocusChangeListener { _, hasFocus ->
            binding.layoutPassword.setBackgroundResource(
                if (hasFocus) R.drawable.bg_input_focused
                else R.drawable.bg_input_field
            )
            if (hasFocus) glowPulse(binding.layoutPassword)
        }

        // ── Sign In tap ─────────────────────────────────────────────────────────
        binding.btnLogin.setOnClickListener {
            val email = binding.etEmail.text.toString().trim()
            val pass  = binding.etPassword.text.toString().trim()

            var valid = true

            if (email.isEmpty()) {
                highlightError(binding.etEmail)
                valid = false
            } else {
                clearError(binding.etEmail)
            }

            if (pass.isEmpty()) {
                highlightError(binding.layoutPassword)
                // Also shake the password container
                shakeView(binding.layoutPassword)
                valid = false
            } else {
                clearError(binding.layoutPassword)
            }

            if (!valid) return@setOnClickListener

            // Haptic press animation
            val fadeOut = ObjectAnimator.ofFloat(binding.btnLogin, "alpha", 1f, 0.55f)
                .apply { duration = 120; interpolator = AccelerateInterpolator() }
            val fadeIn = ObjectAnimator.ofFloat(binding.btnLogin, "alpha", 0.55f, 1f)
                .apply { duration = 200; interpolator = DecelerateInterpolator(); startDelay = 120 }
            val scaleX = ObjectAnimator.ofFloat(binding.btnLogin, "scaleX", 1f, 0.96f, 1f)
                .apply { duration = 320 }
            val scaleY = ObjectAnimator.ofFloat(binding.btnLogin, "scaleY", 1f, 0.96f, 1f)
                .apply { duration = 320 }
            AnimatorSet().apply { playTogether(fadeOut, fadeIn, scaleX, scaleY); start() }

            viewModel.login(email, pass)
        }

        // ── Tab → Sign Up with morph slide animation ─────────────────────────────
        binding.tvSignup.setOnClickListener {
            animateTabTransitionToSignup()
        }

        binding.tvForgotPassword.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_forgotPasswordFragment)
        }

        binding.btnSkip.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
        }
    }

    private fun animateTabTransitionToSignup() {
        // 1. Form fields slide up + fade out (staggered)
        binding.cardForm.animate()
            .translationY(-24f)
            .alpha(0f)
            .setDuration(220)
            .setInterpolator(AccelerateInterpolator(1.5f))
            .withEndAction {
                // Navigate; Sign Up fragment will animate itself in from below
                findNavController().navigate(R.id.action_loginFragment_to_signupFragment)
            }
            .start()
    }

    override fun showContent(data: Any?) {
        if (data as? Boolean == true) {
            findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
        }
    }

    override fun showError(message: String) {
        super.showError(message)
        if (message.contains("Email", ignoreCase = true) || message.contains("User", ignoreCase = true)) {
            highlightError(binding.etEmail)
            binding.etEmail.error = message
        } else if (message.contains("Password", ignoreCase = true)) {
            highlightError(binding.layoutPassword)
            binding.etPassword.error = message
        }
    }

    // ── Helpers ──────────────────────────────────────────────────────────────────

    /** Flash a red border glow on an invalid field */
    private fun highlightError(view: View) {
        view.setBackgroundResource(R.drawable.bg_input_error)
        val colorFrom = Color.TRANSPARENT
        val colorTo   = Color.parseColor("#1AFF3B30")   // translucent red overlay
        ValueAnimator.ofArgb(colorFrom, colorTo, colorFrom).apply {
            duration  = 600
            addUpdateListener { view.setBackgroundTintList(ColorStateList.valueOf(it.animatedValue as Int)) }
        }.start()
        shakeView(view)
    }

    /** Restore normal field style */
    private fun clearError(view: View) {
        view.backgroundTintList = null
        view.setBackgroundResource(
            if (view.id == R.id.layout_password) R.drawable.bg_input_field
            else R.drawable.bg_input_selector
        )
    }

    /** Quick lateral shake for emphasis */
    private fun shakeView(view: View) {
        ObjectAnimator.ofFloat(view, "translationX",
            0f, -12f, 12f, -8f, 8f, -4f, 4f, 0f
        ).apply { duration = 350 }.start()
    }

    /** Soft glow pulse on focus */
    private fun glowPulse(view: View) {
        ObjectAnimator.ofFloat(view, "scaleX", 1f, 1.012f, 1f).apply { duration = 180 }.start()
        ObjectAnimator.ofFloat(view, "scaleY", 1f, 1.012f, 1f).apply { duration = 180 }.start()
    }
}
