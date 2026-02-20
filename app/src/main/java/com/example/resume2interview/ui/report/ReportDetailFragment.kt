package com.example.resume2interview.ui.report

import android.graphics.Color
import android.graphics.Typeface
import android.view.Gravity
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
    }

    override fun showContent(data: Any?) {
        val uiData = data as? ReportDetailUiData ?: return

        binding.tvDate.text = uiData.date
        binding.tvScore.text = uiData.score.toString()
        binding.tvEvaluation.text = uiData.evaluation
        binding.tvSummary.text = uiData.summary

        // Populate strength items — green bullet, dark text
        fillList(
            container = binding.layoutStrengths,
            items = uiData.strengths,
            bulletColor = "#2E7D32",   // dark green
            textColor = "#1A1C1E",     // near-black
            bgColor = "#F1F8F1"        // very light green tint
        )

        // Populate improvement items — red bullet, dark text
        fillList(
            container = binding.layoutImprovements,
            items = uiData.improvements,
            bulletColor = "#C62828",   // dark red
            textColor = "#1A1C1E",     // near-black
            bgColor = "#FFF5F5"        // very light red tint
        )
    }

    private fun fillList(
        container: LinearLayout,
        items: List<String>,
        bulletColor: String,
        textColor: String,
        bgColor: String
    ) {
        container.removeAllViews()
        val ctx = requireContext()
        val dp8 = (8 * resources.displayMetrics.density).toInt()
        val dp12 = (12 * resources.displayMetrics.density).toInt()
        val dp16 = (16 * resources.displayMetrics.density).toInt()

        items.forEach { item ->
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

            // Bullet dot (colored circle text "●")
            val bullet = TextView(ctx).apply {
                text = "●"
                textSize = 10f
                setTextColor(Color.parseColor(bulletColor))
                setPadding(0, 0, dp12, 0)
            }

            // Item text — dark, readable
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
        }
    }
}
