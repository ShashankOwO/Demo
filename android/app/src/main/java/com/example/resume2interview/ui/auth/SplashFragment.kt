package com.example.resume2interview.ui.auth

import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.os.Handler
import android.os.Looper
import android.view.animation.DecelerateInterpolator
import android.view.animation.OvershootInterpolator
import android.view.animation.AccelerateDecelerateInterpolator
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentSplashBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SplashFragment : BaseFragment<FragmentSplashBinding, SplashViewModel>(
    FragmentSplashBinding::inflate
) {
    override val viewModel: SplashViewModel by viewModels()

    override fun setupUI() {
        val handler = Handler(Looper.getMainLooper())

        // ── Initial state: everything invisible, arrow starts 600dp below its resting position ──
        binding.ivArrow.alpha    = 0f
        binding.ivLogo.alpha     = 0f
        binding.tvAppName.alpha  = 0f
        binding.tvTagline.alpha  = 0f

        // Push the arrow way down before it starts (below screen)
        binding.ivArrow.translationY = 650f

        // ── Phase 1: Arrow fades in and rises (0ms → 1000ms) ─────────────────────────────────
        binding.ivArrow.animate()
            .alpha(1f)
            .translationY(0f)
            .setDuration(1000)
            .setStartDelay(200)
            .setInterpolator(DecelerateInterpolator(1.8f))
            .withEndAction {
                // ── Phase 2: Crossfade — logo in, arrow out (1200ms → 1700ms) ────────────────
                if (isAdded) {
                    // Scale the arrow up slightly then fade it out (feels like it "bursts" into the logo)
                    binding.ivArrow.animate()
                        .alpha(0f)
                        .scaleX(1.4f)
                        .scaleY(1.4f)
                        .setDuration(400)
                        .setInterpolator(AccelerateDecelerateInterpolator())
                        .start()

                    // Logo fades in with a gentle overshoot scale from 0.7 → 1.0
                    binding.ivLogo.scaleX = 0.7f
                    binding.ivLogo.scaleY = 0.7f
                    binding.ivLogo.animate()
                        .alpha(1f)
                        .scaleX(1f)
                        .scaleY(1f)
                        .setDuration(500)
                        .setStartDelay(80)   // slight delay so arrow starts fading just before logo appears
                        .setInterpolator(OvershootInterpolator(1.2f))
                        .start()
                }
            }
            .start()

        // ── Phase 3: App name slides up (1800ms) ─────────────────────────────────────────────
        handler.postDelayed({
            if (isAdded) {
                binding.tvAppName.translationY = 30f
                binding.tvAppName.animate()
                    .alpha(1f)
                    .translationY(0f)
                    .setDuration(450)
                    .setInterpolator(DecelerateInterpolator())
                    .start()
            }
        }, 1800)

        // ── Phase 4: Tagline slides up (2050ms) ──────────────────────────────────────────────
        handler.postDelayed({
            if (isAdded) {
                binding.tvTagline.translationY = 20f
                binding.tvTagline.animate()
                    .alpha(1f)
                    .translationY(0f)
                    .setDuration(400)
                    .setInterpolator(DecelerateInterpolator())
                    .start()
            }
        }, 2050)
    }

    override fun showContent(data: Any?) {
        val isLoggedIn = data as? Boolean ?: false
        if (isLoggedIn) {
            findNavController().navigate(R.id.action_splashFragment_to_homeFragment)
        } else {
            findNavController().navigate(R.id.action_splashFragment_to_loginFragment)
        }
    }
}