package com.example.resume2interview.ui.auth

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.res.ColorStateList
import android.graphics.Color
import android.view.View
import android.view.animation.AccelerateInterpolator
import android.view.animation.DecelerateInterpolator
import android.view.animation.OvershootInterpolator
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

        // ── Slide-in entrance animation when arriving from Login tab ─────────────
        binding.cardForm.apply {
            translationY = 40f
            alpha = 0f
            animate()
                .translationY(0f)
                .alpha(1f)
                .setDuration(380)
                .setStartDelay(80)
                .setInterpolator(OvershootInterpolator(1.1f))
                .start()
        }

        // ── Password focus → animated border glow ────────────────────────────────
        binding.etPassword.setOnFocusChangeListener { _, hasFocus ->
            binding.layoutPassword.setBackgroundResource(
                if (hasFocus) R.drawable.bg_input_focused
                else R.drawable.bg_input_field
            )
            if (hasFocus) glowPulse(binding.layoutPassword)
        }

        // ── Log In tab: slide card down + navigate ────────────────────────────────
        binding.tvLogin.setOnClickListener {
            binding.cardForm.animate()
                .translationY(24f)
                .alpha(0f)
                .setDuration(200)
                .setInterpolator(AccelerateInterpolator(1.5f))
                .withEndAction {
                    findNavController().navigate(R.id.action_signupFragment_to_loginFragment)
                }
                .start()
        }

        // ── Create Account ────────────────────────────────────────────────────────
        binding.btnCreateAccount.setOnClickListener {
            val name  = binding.etFullName.text.toString().trim()
            val email = binding.etEmail.text.toString().trim()
            val pass  = binding.etPassword.text.toString().trim()

            var valid = true
            var firstInvalid: View? = null

            if (name.isEmpty()) {
                highlightError(binding.etFullName)
                valid = false
                if (firstInvalid == null) firstInvalid = binding.etFullName
            } else clearError(binding.etFullName)

            if (email.isEmpty()) {
                highlightError(binding.etEmail)
                valid = false
                if (firstInvalid == null) firstInvalid = binding.etEmail
            } else clearError(binding.etEmail)

            if (pass.isEmpty()) {
                highlightError(binding.layoutPassword)
                valid = false
            } else if (pass.length < 6) {
                highlightError(binding.layoutPassword)
                binding.etPassword.error = "At least 6 characters required"
                valid = false
            } else clearError(binding.layoutPassword)

            if (!valid) {
                firstInvalid?.requestFocus()
                return@setOnClickListener
            }

            // Haptic-style press animation
            val scaleX = ObjectAnimator.ofFloat(binding.btnCreateAccount, "scaleX", 1f, 0.96f, 1f).apply { duration = 300 }
            val scaleY = ObjectAnimator.ofFloat(binding.btnCreateAccount, "scaleY", 1f, 0.96f, 1f).apply { duration = 300 }
            val fade   = ObjectAnimator.ofFloat(binding.btnCreateAccount, "alpha", 1f, 0.6f, 1f).apply { duration = 300 }
            AnimatorSet().apply { playTogether(scaleX, scaleY, fade); start() }

            viewModel.signup(name, email, pass)
        }
    }

    override fun showContent(data: Any?) {
        if (data as? Boolean == true) {
            findNavController().navigate(R.id.action_signupFragment_to_homeFragment)
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

    /** Flash a red border + shake on invalid field */
    private fun highlightError(view: View) {
        view.setBackgroundResource(R.drawable.bg_input_error)
        val colorFrom = Color.TRANSPARENT
        val colorTo   = Color.parseColor("#1AFF3B30")
        ValueAnimator.ofArgb(colorFrom, colorTo, colorFrom).apply {
            duration  = 600
            addUpdateListener { view.setBackgroundTintList(ColorStateList.valueOf(it.animatedValue as Int)) }
        }.start()
        shakeView(view)
    }

    private fun clearError(view: View) {
        view.backgroundTintList = null
        view.setBackgroundResource(
            if (view.id == R.id.layout_password) R.drawable.bg_input_field
            else R.drawable.bg_input_selector
        )
    }

    private fun shakeView(view: View) {
        ObjectAnimator.ofFloat(view, "translationX",
            0f, -12f, 12f, -8f, 8f, -4f, 4f, 0f
        ).apply { duration = 350 }.start()
    }

    private fun glowPulse(view: View) {
        ObjectAnimator.ofFloat(view, "scaleX", 1f, 1.012f, 1f).apply { duration = 180 }.start()
        ObjectAnimator.ofFloat(view, "scaleY", 1f, 1.012f, 1f).apply { duration = 180 }.start()
    }
}
