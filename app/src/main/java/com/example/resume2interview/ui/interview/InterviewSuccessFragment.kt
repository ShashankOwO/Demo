package com.example.resume2interview.ui.interview

import android.animation.ValueAnimator
import android.view.View
import android.view.animation.DecelerateInterpolator
import androidx.navigation.fragment.findNavController
import com.airbnb.lottie.LottieAnimationView
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentInterviewSuccessBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.example.resume2interview.ui.base.BaseViewModel
import androidx.fragment.app.viewModels
import dagger.hilt.android.AndroidEntryPoint
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

/** Minimal ViewModel required by BaseFragment — no data loading needed. */
@HiltViewModel
class InterviewSuccessViewModel @Inject constructor() : BaseViewModel<Unit>()

@AndroidEntryPoint
class InterviewSuccessFragment : BaseFragment<FragmentInterviewSuccessBinding, InterviewSuccessViewModel>(
    FragmentInterviewSuccessBinding::inflate
) {
    override val viewModel: InterviewSuccessViewModel by viewModels()

    override fun setupUI() {
        // Play success Lottie then stagger in the text and buttons
        binding.lottieSuccess.addAnimatorListener(object : android.animation.Animator.AnimatorListener {
            override fun onAnimationStart(p0: android.animation.Animator) {}
            override fun onAnimationCancel(p0: android.animation.Animator) {}
            override fun onAnimationRepeat(p0: android.animation.Animator) {}
            override fun onAnimationEnd(p0: android.animation.Animator) {
                // Once success anim finishes, fade-in the text and buttons
                if (ValueAnimator.areAnimatorsEnabled()) {
                    animateIn(binding.tvSuccessTitle, 0)
                    animateIn(binding.tvSuccessSubtitle, 120)
                    animateIn(binding.btnViewReports, 240)
                    animateIn(binding.btnGoHome, 360)
                } else {
                    binding.tvSuccessTitle.alpha = 1f
                    binding.tvSuccessSubtitle.alpha = 1f
                    binding.btnViewReports.alpha = 1f
                    binding.btnGoHome.alpha = 1f
                }
            }
        })

        // If Lottie doesn't fire end (e.g., loop=false but very short), also schedule a fallback
        binding.lottieSuccess.postDelayed({
            if (binding.tvSuccessTitle.alpha == 0f) {
                animateIn(binding.tvSuccessTitle, 0)
                animateIn(binding.tvSuccessSubtitle, 120)
                animateIn(binding.btnViewReports, 240)
                animateIn(binding.btnGoHome, 360)
            }
        }, 2000)

        binding.btnViewReports.setOnClickListener {
            // Navigate to reports tab — pop all the way back to home first
            findNavController().popBackStack(R.id.homeFragment, false)
        }

        binding.btnGoHome.setOnClickListener {
            findNavController().popBackStack(R.id.homeFragment, false)
        }
    }

    // Success screen has no loading/error states — suppress base behaviour
    override fun showLoading() {}
    override fun showError(message: String) {}
    override fun showContent(data: Any?) {}

    private fun animateIn(view: View, delayMs: Long) {
        view.animate()
            .alpha(1f)
            .translationY(0f)
            .setDuration(350)
            .setStartDelay(delayMs)
            .setInterpolator(DecelerateInterpolator())
            .start()
    }
}
