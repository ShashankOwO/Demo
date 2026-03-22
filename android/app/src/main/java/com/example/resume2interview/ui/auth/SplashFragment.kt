package com.example.resume2interview.ui.auth

import android.os.Handler
import android.os.Looper
import android.view.animation.AnimationUtils
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

        // Everything hidden at start
        binding.ivLogo.alpha = 0f
        binding.tvAppName.alpha = 0f
        binding.tvTagline.alpha = 0f

        // ── 1. Arrow zigzags up from bottom (0ms → 2000ms) ─────────────────
        val arrowAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.arrow_zigzag)
        binding.ivArrow.startAnimation(arrowAnim)

        // ── 2. Full R2I logo fades in — arrow is now inside the logo (2200ms)
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.ivLogo.alpha = 1f
                val logoAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.logo_reveal)
                binding.ivLogo.startAnimation(logoAnim)
            }
        }, 2200)

        // ── 3. Standalone arrow fades out — logo arrow takes over (2400ms) ──
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.ivArrow.animate()
                    .alpha(0f)
                    .setDuration(300)
                    .start()
            }
        }, 2400)

        // ── 4. App name slides up (2800ms) ──────────────────────────────────
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.tvAppName.alpha = 1f
                val textAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.splash_text_enter)
                binding.tvAppName.startAnimation(textAnim)
            }
        }, 2800)

        // ── 5. Tagline slides up (3000ms) ────────────────────────────────────
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.tvTagline.alpha = 1f
                val textAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.splash_text_enter)
                binding.tvTagline.startAnimation(textAnim)
            }
        }, 3000)
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