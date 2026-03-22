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

        // 1. Arrow zigzag upward immediately
        val arrowAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.arrow_zigzag)
        binding.ivArrow.startAnimation(arrowAnim)   // ✅ matches id="@+id/ivArrow" in XML

        // 2. Logo reveals after arrow reaches top
        val logoReveal = AnimationUtils.loadAnimation(requireContext(), R.anim.logo_reveal)
        binding.ivLogo.startAnimation(logoReveal)

        // 3. App name + tagline slide up
        val textAnim = AnimationUtils.loadAnimation(requireContext(), R.anim.splash_text_enter)
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.tvAppName.startAnimation(textAnim)
                binding.tvTagline.startAnimation(textAnim)
            }
        }, 1200)

        // 4. Fade out arrow once logo is visible
        Handler(Looper.getMainLooper()).postDelayed({
            if (isAdded) {
                binding.ivArrow.animate()
                    .alpha(0f)
                    .setDuration(300)
                    .start()
            }
        }, 1100)
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