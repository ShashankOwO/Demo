package com.example.resume2interview.ui.report

import android.animation.ValueAnimator
import android.graphics.Color
import android.graphics.Typeface
import android.view.Gravity
import android.view.View
import android.view.animation.DecelerateInterpolator
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentReportDetailBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ReportDetailFragment : BaseFragment<FragmentReportDetailBinding, ReportDetailViewModel>(
    FragmentReportDetailBinding::inflate
) {
    override val viewModel: ReportDetailViewModel by viewModels()

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
        
        arguments?.getString("reportId")?.toIntOrNull()?.let { id ->
            viewModel.loadReportDetail(id)
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? ReportDetailUiData ?: return

        binding.tvDate.text = uiData.date
        binding.tvEvaluation.text = uiData.evaluation
        binding.tvSummary.text = uiData.summary

        // Score count-up animation
        if (android.animation.ValueAnimator.areAnimatorsEnabled()) {
            ValueAnimator.ofInt(0, uiData.score).apply {
                duration = 600
                interpolator = DecelerateInterpolator()
                addUpdateListener { binding.tvScore.text = it.animatedValue.toString() }
                start()
            }
            binding.tvEvaluation.alpha = 0f
            binding.tvEvaluation.animate().alpha(1f).setDuration(400).setStartDelay(200).start()
        } else {
            binding.tvScore.text = uiData.score.toString()
        }

        // Populate strength items — slide from left
        fillList(
            container = binding.layoutStrengths,
            items = uiData.strengths,
            bulletColor = "#2E7D32",
            textColor = "#1A1C1E",
            bgColor = "#F1F8F1",
            slideFromLeft = true
        )

        // Populate improvement items — slide from right
        fillList(
            container = binding.layoutImprovements,
            items = uiData.improvements,
            bulletColor = "#C62828",
            textColor = "#1A1C1E",
            bgColor = "#FFF5F5",
            slideFromLeft = false
        )

        // Populate suggestions items — slide from left
        fillList(
            container = binding.layoutSuggestions,
            items = uiData.suggestions,
            bulletColor = "#1565C0",
            textColor = "#1A1C1E",
            bgColor = "#E3F2FD",
            slideFromLeft = true
        )
    }

    private fun fillList(
        container: LinearLayout,
        items: List<String>,
        bulletColor: String,
        textColor: String,
        bgColor: String,
        slideFromLeft: Boolean = true
    ) {
        container.removeAllViews()
        val ctx = requireContext()
        val dp8 = (8 * resources.displayMetrics.density).toInt()
        val dp12 = (12 * resources.displayMetrics.density).toInt()
        val slideOffset = (40 * resources.displayMetrics.density)

        items.forEachIndexed { index, item ->
            // Row container
            val row = LinearLayout(ctx).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                setBackgroundColor(Color.parseColor(bgColor))
                setPadding(dp12, dp8, dp12, dp8)
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                ).also { it.setMargins(0, dp8, 0, 0) }
            }

            // Bullet dot
            val bullet = TextView(ctx).apply {
                text = "●"
                textSize = 10f
                setTextColor(Color.parseColor(bulletColor))
                setPadding(0, 0, dp12, 0)
            }

            // Item text
            val tv = TextView(ctx).apply {
                text = item
                textSize = 14f
                setTextColor(Color.parseColor(textColor))
                setTypeface(null, Typeface.NORMAL)
                layoutParams = LinearLayout.LayoutParams(
                    0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f
                )
                setLineSpacing(0f, 1.3f)
            }

            row.addView(bullet)
            row.addView(tv)
            container.addView(row)

            // Stagger slide-in animation
            if (ValueAnimator.areAnimatorsEnabled()) {
                row.alpha = 0f
                row.translationX = if (slideFromLeft) -slideOffset else slideOffset
                row.animate()
                    .alpha(1f)
                    .translationX(0f)
                    .setDuration(350)
                    .setStartDelay((index * 80).toLong())
                    .setInterpolator(DecelerateInterpolator())
                    .start()
            }
        }
    }
}
