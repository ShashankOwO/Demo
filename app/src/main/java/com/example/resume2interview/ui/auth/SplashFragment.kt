package com.example.resume2interview.ui.auth

import android.os.Handler
import android.os.Looper
import android.view.animation.AnimationUtils
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentSplashBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.example.resume2interview.utils.UiState
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SplashFragment : BaseFragment<FragmentSplashBinding, SplashViewModel>(
    FragmentSplashBinding::inflate
) {
    override val viewModel: SplashViewModel by viewModels()

    override fun setupUI() {
        // ── Run entrance animations ─────────────────────────────────────────
        val logoAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.splash_logo_enter)
        val textAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.splash_text_enter)

        // Logo icon card
        binding.ivLogo.startAnimation(logoAnim)

        // App name + tagline slide up
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.tvAppName.startAnimation(textAnim)
                binding.tvTagline.startAnimation(textAnim)
            }
        }, 100)
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
