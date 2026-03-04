package com.example.resume2interview.ui.auth

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.res.ColorStateList
import android.graphics.Color
import android.view.View
import android.view.ViewGroup
import android.view.animation.AccelerateInterpolator
import android.view.animation.DecelerateInterpolator
import android.view.animation.OvershootInterpolator
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentLoginBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

/**
 * Single-fragment auth component with two internal states: LOGIN and SIGNUP.
 * NO navigation happens when toggling tabs — the card stays mounted and
 * animates its contents using height interpolation + spring physics.
 */
@AndroidEntryPoint
class LoginFragment : BaseFragment<FragmentLoginBinding, LoginViewModel>(
    FragmentLoginBinding::inflate
) {
    override val viewModel: LoginViewModel by viewModels()

    private enum class AuthState { LOGIN, SIGNUP }
    private var currentState = AuthState.LOGIN

    // Stored expanded heights so we measure once and cache
    private var nameContainerHeight = 0

    override fun setupUI() {

        // ── Measure collapsed containers on first layout ────────────────────────
        binding.containerName.post {
            // Make visible with WRAP_CONTENT temporarily to measure
            binding.containerName.layoutParams.height = ViewGroup.LayoutParams.WRAP_CONTENT
            binding.containerName.visibility = View.INVISIBLE
            binding.containerName.measure(
                View.MeasureSpec.makeMeasureSpec(binding.containerName.width, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED)
            )
            nameContainerHeight = binding.containerName.measuredHeight
            // Collapse back
            binding.containerName.layoutParams.height = 0
            binding.containerName.visibility = View.GONE
        }

        // ── Tab sizing: pill must fill exactly half the inner width ─────────────
        binding.layoutTab.post {
            val hPadding = binding.layoutTab.paddingStart + binding.layoutTab.paddingEnd
            val w = (binding.layoutTab.width - hPadding) / 2
            
            binding.tabPill.layoutParams.width = w
            binding.tabPill.requestLayout()
            
            binding.tvTabLogin.layoutParams.width = w
            binding.tvTabSignup.layoutParams.width = w
            binding.tvTabLogin.requestLayout()
            binding.tvTabSignup.requestLayout()
        }

        // ── Password focus glow ─────────────────────────────────────────────────
        binding.etPassword.setOnFocusChangeListener { _, hasFocus ->
            binding.layoutPassword.setBackgroundResource(
                if (hasFocus) R.drawable.bg_input_focused
                else R.drawable.bg_input_field
            )
            if (hasFocus) pulseScale(binding.layoutPassword)
        }

        // ── Eye icon toggle ─────────────────────────────────────────────────────
        binding.ivEye.setOnClickListener {
            val et = binding.etPassword
            et.inputType = if (et.inputType == android.text.InputType.TYPE_CLASS_TEXT or
                android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
            ) {
                android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD
            } else {
                android.text.InputType.TYPE_CLASS_TEXT or android.text.InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
            }
            et.setSelection(et.text.length)
        }

        // ── Tab taps ────────────────────────────────────────────────────────────
        binding.tvTabLogin.setOnClickListener  { if (currentState != AuthState.LOGIN)  switchState(AuthState.LOGIN) }
        binding.tvTabSignup.setOnClickListener { if (currentState != AuthState.SIGNUP) switchState(AuthState.SIGNUP) }

        // ── Forgot password ─────────────────────────────────────────────────────
        binding.tvForgotPassword.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_forgotPasswordFragment)
        }

        // ── Skip ────────────────────────────────────────────────────────────────
        binding.btnSkip.setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
        }

        // ── Primary button ──────────────────────────────────────────────────────
        binding.btnAuth.setOnClickListener {
            if (currentState == AuthState.LOGIN) doLogin()
            else doSignup()
        }
    }

    // ─────────────────────────────────────────────────────────────────────────────
    // STATE SWITCH ENGINE
    // ─────────────────────────────────────────────────────────────────────────────

    private fun switchState(target: AuthState) {
        currentState = target
        val toSignup = target == AuthState.SIGNUP

        // 1. Spring-slide the pill tab indicator
        animatePill(toSignup)

        // 2. Morph tab label colors
        animateTabLabels(toSignup)

        // 3. Expand / collapse the Name field container
        if (toSignup) expandView(binding.containerName, nameContainerHeight)
        else collapseView(binding.containerName)

        // 4. Fade the forgot password link
        binding.tvForgotPassword.animate()
            .alpha(if (toSignup) 0f else 1f)
            .setDuration(220)
            .start()
        binding.tvForgotPassword.isClickable = !toSignup

        // 5. Morph the button text with a tiny fade-crossfade
        morphButtonText(if (toSignup) "Create Account" else "Sign In")

        // 6. Update the screen title/subtitle
        binding.tvTitle.animate()
            .alpha(0f).setDuration(120).withEndAction {
                binding.tvTitle.text = if (toSignup) "Create account" else "Welcome back"
                binding.tvSubtitle.text = if (toSignup) "Start your journey to success"
                                          else "Sign in to continue your preparation"
                binding.tvTitle.animate().alpha(1f).setDuration(180).start()
            }.start()
    }

    // ─────────────────────────────────────────────────────────────────────────────
    // ANIMATION HELPERS
    // ─────────────────────────────────────────────────────────────────────────────

    /** Slide the pill background to left (login) or right (signup) */
    private fun animatePill(toRight: Boolean) {
        val targetX = if (toRight) binding.tabPill.width.toFloat() else 0f
        ObjectAnimator.ofFloat(binding.tabPill, "translationX", binding.tabPill.translationX, targetX)
            .apply {
                duration    = 380
                interpolator = OvershootInterpolator(1.2f)
            }.start()
    }

    /** Smoothly interpolate text colours of both tab labels */
    private fun animateTabLabels(toSignup: Boolean) {
        val activeColor   = Color.WHITE
        val inactiveColor = requireContext().getColor(R.color.text_secondary)

        fun animateColor(fromColor: Int, toColor: Int, tv: android.widget.TextView) {
            ValueAnimator.ofArgb(fromColor, toColor).apply {
                duration = 260
                addUpdateListener { tv.setTextColor(it.animatedValue as Int) }
            }.start()
        }
        animateColor(
            if (toSignup) activeColor else inactiveColor,
            if (toSignup) inactiveColor else activeColor,
            binding.tvTabLogin
        )
        animateColor(
            if (toSignup) inactiveColor else activeColor,
            if (toSignup) activeColor else inactiveColor,
            binding.tvTabSignup
        )
    }

    /**
     * Expand a view from 0 → targetHeight using a ValueAnimator so it feels
     * like an iOS expanding settings cell (spring eased).
     */
    private fun expandView(view: View, targetHeight: Int) {
        if (targetHeight == 0) {
            // Not measured yet — make visible and let animateLayoutChanges handle it
            view.visibility = View.VISIBLE
            view.layoutParams.height = ViewGroup.LayoutParams.WRAP_CONTENT
            view.requestLayout()
            return
        }
        view.layoutParams.height = 0
        view.visibility = View.VISIBLE
        view.alpha = 0f

        ValueAnimator.ofInt(0, targetHeight).apply {
            duration     = 400
            interpolator = DecelerateInterpolator(2f)
            addUpdateListener { anim ->
                view.layoutParams.height = anim.animatedValue as Int
                view.requestLayout()
            }
        }.start()

        // Staggered fade-in (40ms delay)
        view.animate().alpha(1f).setStartDelay(40).setDuration(300).start()
    }

    /** Collapse a view from its current height → 0 */
    private fun collapseView(view: View) {
        val startH = view.height
        view.animate().alpha(0f).setDuration(160).start()
        ValueAnimator.ofInt(startH, 0).apply {
            duration     = 320
            interpolator = AccelerateInterpolator(1.8f)
            addUpdateListener { anim ->
                view.layoutParams.height = anim.animatedValue as Int
                view.requestLayout()
            }
            addListener(object : android.animation.AnimatorListenerAdapter() {
                override fun onAnimationEnd(animation: android.animation.Animator) {
                    view.visibility = View.GONE
                }
            })
        }.start()
    }

    /** Cross-fade the button label text without rebuilding the button */
    private fun morphButtonText(newText: String) {
        binding.btnAuth.animate()
            .alpha(0f).setDuration(120).withEndAction {
                binding.btnAuth.text = newText
                binding.btnAuth.animate().alpha(1f).setDuration(180).start()
            }.start()
    }

    /** Subtle scale pulse for focus emphasis */
    private fun pulseScale(view: View) {
        ObjectAnimator.ofFloat(view, "scaleX", 1f, 1.012f, 1f).apply { duration = 200 }.start()
        ObjectAnimator.ofFloat(view, "scaleY", 1f, 1.012f, 1f).apply { duration = 200 }.start()
    }

    /** Red border + shake on invalid field */
    private fun highlightError(view: View) {
        view.setBackgroundResource(R.drawable.bg_input_error)
        ValueAnimator.ofArgb(Color.TRANSPARENT, Color.parseColor("#22FF3B30"), Color.TRANSPARENT).apply {
            duration = 700
            addUpdateListener {
                view.setBackgroundTintList(ColorStateList.valueOf(it.animatedValue as Int))
            }
        }.start()
        ObjectAnimator.ofFloat(view, "translationX", 0f, -10f, 10f, -6f, 6f, -3f, 3f, 0f)
            .apply { duration = 360 }.start()
    }

    private fun clearError(view: View) {
        view.backgroundTintList = null
        view.setBackgroundResource(
            if (view.id == R.id.layout_password) R.drawable.bg_input_field
            else R.drawable.bg_input_selector
        )
    }

    /** Standard press animation for the button */
    private fun pressButton(view: View) {
        AnimatorSet().apply {
            playTogether(
                ObjectAnimator.ofFloat(view, "scaleX", 1f, 0.96f, 1f).apply { duration = 300 },
                ObjectAnimator.ofFloat(view, "scaleY", 1f, 0.96f, 1f).apply { duration = 300 },
                ObjectAnimator.ofFloat(view, "alpha",  1f, 0.6f,  1f).apply { duration = 300 }
            )
            start()
        }
    }

    // ─────────────────────────────────────────────────────────────────────────────
    // AUTH ACTIONS
    // ─────────────────────────────────────────────────────────────────────────────

    private fun doLogin() {
        val email = binding.etEmail.text.toString().trim()
        val pass  = binding.etPassword.text.toString().trim()
        var valid = true

        if (email.isEmpty()) { highlightError(binding.etEmail);        valid = false } else clearError(binding.etEmail)
        if (pass.isEmpty())  { highlightError(binding.layoutPassword); valid = false } else clearError(binding.layoutPassword)

        if (!valid) return
        pressButton(binding.btnAuth)
        viewModel.login(email, pass)
    }

    private fun doSignup() {
        val name  = binding.etFullName.text.toString().trim()
        val email = binding.etEmail.text.toString().trim()
        val pass  = binding.etPassword.text.toString().trim()
        var valid = true

        if (name.isEmpty())  { highlightError(binding.etFullName);     valid = false } else clearError(binding.etFullName)
        if (email.isEmpty()) { highlightError(binding.etEmail);        valid = false } else clearError(binding.etEmail)
        if (pass.isEmpty() || pass.length < 6) {
            highlightError(binding.layoutPassword)
            if (pass.isNotEmpty()) binding.etPassword.error = "At least 6 characters"
            valid = false
        } else clearError(binding.layoutPassword)

        if (!valid) return
        pressButton(binding.btnAuth)
        viewModel.signup(name, email, pass)
    }

    // ─────────────────────────────────────────────────────────────────────────────
    // BASE OVERRIDES
    // ─────────────────────────────────────────────────────────────────────────────

    override fun showContent(data: Any?) {
        if (data as? Boolean == true) {
            findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
        }
    }

    override fun showError(message: String) {
        super.showError(message)
        when {
            message.contains("Email", ignoreCase = true) ||
            message.contains("User",  ignoreCase = true) -> {
                highlightError(binding.etEmail)
                binding.etEmail.error = message
            }
            message.contains("Password", ignoreCase = true) -> {
                highlightError(binding.layoutPassword)
                binding.etPassword.error = message
            }
        }
    }
}
