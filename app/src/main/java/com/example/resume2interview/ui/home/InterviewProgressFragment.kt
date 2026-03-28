package com.example.resume2interview.ui.home

import android.animation.ObjectAnimator
import android.graphics.Color
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.content.ContextCompat
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentInterviewProgressBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import com.github.mikephil.charting.components.XAxis
import com.github.mikephil.charting.data.BarData
import com.github.mikephil.charting.data.BarDataSet
import com.github.mikephil.charting.data.BarEntry
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import com.github.mikephil.charting.formatter.IndexAxisValueFormatter

@AndroidEntryPoint
class InterviewProgressFragment : BaseFragment<FragmentInterviewProgressBinding, InterviewProgressViewModel>(
    FragmentInterviewProgressBinding::inflate
) {
    override val viewModel: InterviewProgressViewModel by viewModels()

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            findNavController().popBackStack()
        }

        binding.toggleCharts.addOnButtonCheckedListener { _, checkedId, isChecked ->
            if (isChecked) {
                when (checkedId) {
                    R.id.btn_bar_chart -> {
                        binding.barChart.visibility = View.VISIBLE
                        binding.lineChart.visibility = View.GONE
                    }
                    R.id.btn_line_chart -> {
                        binding.barChart.visibility = View.GONE
                        binding.lineChart.visibility = View.VISIBLE
                    }
                }
            }
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? InterviewProgressUiData ?: return
        
        // 1. Set Average Score / Trend text
        binding.tvAverageScore.text = "${uiData.summary.averageScore.toInt()}%"
        
        val trend = uiData.summary.trendPercentage
        binding.tvTrendPercentage.text = if (trend > 0) "+${trend}%" else "${trend}%"
        
        val colorObj = if (trend > 0) Color.parseColor("#2E7D32") else if (trend < 0) Color.parseColor("#C62828") else Color.parseColor("#757575")
        binding.tvTrendPercentage.setTextColor(colorObj)
        
        // 2. Render 5 Graph Bars from LastFive
        bindGraph(uiData.lastFive)

        // 3. Render Top 6 Skill Progress Bars
        bindSkillBars(uiData.topSkills)
    }



    private fun bindGraph(lastFive: List<com.example.resume2interview.data.model.LastFiveEntry>) {
        val chart = binding.barChart
        if (lastFive.isEmpty()) {
            chart.clear()
            return
        }

        // Reverse to show chronologically from left to right
        val chronoSorted = lastFive.reversed()

        val entries = ArrayList<BarEntry>()
        val dateLabels = ArrayList<String>()

        val sdfIn = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
        val sdfOut = SimpleDateFormat("MMM d", Locale.getDefault())

        val scores = chronoSorted.map { it.score }
        val maxScore = scores.maxOrNull() ?: -1
        val minScore = scores.minOrNull() ?: -1
        val colors = ArrayList<Int>()

        chronoSorted.forEachIndexed { index, entry ->
            entries.add(BarEntry(index.toFloat(), entry.score.toFloat()))

            // Generate Date labels for x-axis
            try {
                val d: Date = sdfIn.parse(entry.createdAt) ?: Date()
                dateLabels.add(sdfOut.format(d))
            } catch (e: Exception) {
                dateLabels.add("--")
            }

            // Assign matching colors matching the legend layout defined in XML
            if (entry.score == maxScore) {
                colors.add(Color.parseColor("#4CAF50")) // Green
            } else if (entry.score == minScore && entry.score != maxScore) { // Don't code red if all scores are identical max
                colors.add(Color.parseColor("#F44336")) // Red
            } else {
                colors.add(Color.parseColor("#4285F4")) // Blue
            }
        }

        val dataSet = BarDataSet(entries, "Scores")
        dataSet.colors = colors
        dataSet.valueTextColor = Color.parseColor("#1A1C1E")
        dataSet.valueTextSize = 10f
        
        // Remove 'decimal' format from integer scores 
        dataSet.valueFormatter = object : com.github.mikephil.charting.formatter.ValueFormatter() {
            override fun getFormattedValue(value: Float): String {
                return value.toInt().toString()
            }
        }

        // Apply Custom View Styling
        chart.description.isEnabled = false
        chart.legend.isEnabled = false
        chart.setDrawGridBackground(false)
        chart.setTouchEnabled(false)

        val xAxis = chart.xAxis
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        xAxis.setDrawGridLines(false)
        xAxis.valueFormatter = IndexAxisValueFormatter(dateLabels)
        xAxis.granularity = 1f
        xAxis.textSize = 10f
        xAxis.textColor = Color.parseColor("#B0BEC5")

        chart.axisRight.isEnabled = false
        
        val leftAxis = chart.axisLeft
        leftAxis.textColor = Color.parseColor("#B0BEC5")
        leftAxis.axisMinimum = 0f
        leftAxis.axisMaximum = 100f
        leftAxis.setDrawGridLines(true)
        leftAxis.enableGridDashedLine(10f, 10f, 0f)

        chart.data = BarData(dataSet)
        chart.data.barWidth = 0.4f // Aesthetic thin bars
        chart.animateY(1000)

        // Setup the LineChart
        bindLineChart(entries, dateLabels, maxScore, minScore)
    }

    private fun bindLineChart(
        barEntries: List<BarEntry>,
        dateLabels: List<String>,
        maxScore: Int,
        minScore: Int
    ) {
        val lineChart = binding.lineChart
        if (barEntries.isEmpty()) {
            lineChart.clear()
            return
        }

        // Convert BarEntry to LineChart Entry and compute per-dot colors
        val entries       = ArrayList<Entry>()
        val circleColors  = ArrayList<Int>()

        val colorGreen = Color.parseColor("#4CAF50") // Highest
        val colorRed   = Color.parseColor("#F44336") // Lowest
        val colorBlue  = Color.parseColor("#4285F4") // Normal

        barEntries.forEach { barEntry ->
            entries.add(Entry(barEntry.x, barEntry.y))
            val score = barEntry.y.toInt()
            circleColors.add(
                when {
                    score == maxScore && maxScore != minScore -> colorGreen
                    score == minScore                        -> colorRed
                    else                                     -> colorBlue
                }
            )
        }

        val dataSet = LineDataSet(entries, "Trend")
        dataSet.color          = Color.parseColor("#4285F4")
        dataSet.lineWidth      = 3f
        dataSet.setDrawCircles(true)
        dataSet.circleColors   = circleColors          // Per-entry dot colors
        dataSet.circleRadius   = 6f
        dataSet.setDrawCircleHole(true)
        dataSet.circleHoleRadius = 3f
        dataSet.circleHoleColor  = Color.WHITE
        dataSet.setDrawValues(false) // Hide numbers on the line itself
        dataSet.mode = LineDataSet.Mode.CUBIC_BEZIER // Smooth curves

        // Apply Custom Styling
        lineChart.description.isEnabled = false
        lineChart.legend.isEnabled = false
        lineChart.setDrawGridBackground(false)
        lineChart.setTouchEnabled(true)
        lineChart.isHighlightPerDragEnabled = true

        val xAxis = lineChart.xAxis
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        xAxis.setDrawGridLines(false)
        xAxis.valueFormatter = IndexAxisValueFormatter(dateLabels)
        xAxis.granularity = 1f
        xAxis.textSize = 10f
        xAxis.textColor = Color.parseColor("#B0BEC5")

        lineChart.axisRight.isEnabled = false
        
        val leftAxis = lineChart.axisLeft
        leftAxis.textColor = Color.parseColor("#B0BEC5")
        leftAxis.axisMinimum = 0f
        leftAxis.axisMaximum = 100f
        leftAxis.setDrawGridLines(true)
        leftAxis.enableGridDashedLine(10f, 10f, 0f)

        lineChart.data = LineData(dataSet)
        lineChart.animateX(1200)
    }

    private fun bindSkillBars(skills: List<com.example.resume2interview.data.model.SkillPracticed>) {
        val chart = binding.skillsBarChart

        // Sort dynamically descending by sessionCount and take the top 5
        val sortedSkills = skills.sortedByDescending { it.sessionCount }.take(5)

        if (sortedSkills.isEmpty() || sortedSkills.first().sessionCount == 0) {
            chart.clear()
            return
        }

        // Dynamically set height based on number of items (approx 55dp per item, min 180dp)
        val itemCount = sortedSkills.size
        val desiredHeightDp = java.lang.Math.max(180, itemCount * 55)
        chart.layoutParams.height = dpToPx(desiredHeightDp)
        chart.requestLayout()

        // Colors matching web's skillColors palette
        val barColors = listOf(
            Color.parseColor("#818cf8"), // indigo
            Color.parseColor("#3b82f6"), // blue
            Color.parseColor("#10b981"), // green
            Color.parseColor("#f59e0b"), // amber
            Color.parseColor("#ef4444")  // red
        )

        // Horizontal bar chart draws index 0 at the bottom.
        // We want the highest session count at the top visually, so we reverse.
        val displaySkills = sortedSkills.reversed()

        val entries     = ArrayList<BarEntry>()
        val labels      = ArrayList<String>()
        val entryColors = ArrayList<Int>()

        // Use proportional values so bar widths are relative, but label = actual count
        val maxCount = sortedSkills.first().sessionCount.toFloat().coerceAtLeast(1f)

        displaySkills.forEachIndexed { index, skill ->
            val proportion = (skill.sessionCount.toFloat() / maxCount) * 100f
            entries.add(BarEntry(index.toFloat(), proportion))
            // colorIndex maps reversed position back to sorted rank
            val colorIndex = (sortedSkills.size - 1 - index) % barColors.size
            entryColors.add(barColors[colorIndex])
            labels.add(skill.category) // full name — no manual truncation
        }

        val dataSet = BarDataSet(entries, "Sessions")
        dataSet.colors = entryColors
        dataSet.valueTextColor = Color.parseColor("#B0BEC5")
        dataSet.valueTextSize = 10f

        // Show the actual session count (not %) on each bar
        val sessionCountByProportion: Map<Float, Int> = displaySkills
            .mapIndexed { index, skill ->
                val proportion = (skill.sessionCount.toFloat() / maxCount) * 100f
                proportion to skill.sessionCount
            }.toMap()

        dataSet.valueFormatter = object : com.github.mikephil.charting.formatter.ValueFormatter() {
            override fun getFormattedValue(value: Float): String {
                // Round to nearest 0.1 to handle floating-point imprecision
                val rounded = (value * 10).toInt().toFloat() / 10
                return sessionCountByProportion.entries
                    .minByOrNull { kotlin.math.abs(it.key - rounded) }
                    ?.value?.toString() ?: value.toInt().toString()
            }
        }

        chart.description.isEnabled = false
        chart.legend.isEnabled = false
        chart.setDrawGridBackground(false)
        chart.setTouchEnabled(false)
        chart.setExtraOffsets(0f, 0f, 40f, 0f)

        val xAxis = chart.xAxis
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        xAxis.setDrawGridLines(false)
        xAxis.valueFormatter = IndexAxisValueFormatter(labels)
        xAxis.granularity = 1f
        xAxis.textSize = 10f
        xAxis.textColor = Color.parseColor("#1A1C1E")
        xAxis.setDrawAxisLine(true)

        chart.axisRight.isEnabled = false

        val leftAxis = chart.axisLeft
        leftAxis.textColor = Color.parseColor("#B0BEC5")
        leftAxis.axisMinimum = 0f
        leftAxis.axisMaximum = 100f
        leftAxis.granularity = 10f
        leftAxis.setDrawGridLines(false)
        leftAxis.setDrawLabels(false)
        leftAxis.setDrawAxisLine(false)

        val data = BarData(dataSet)
        data.barWidth = 0.5f

        chart.data = data
        chart.animateY(1000)
    }


    private fun dpToPx(dp: Int): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, 
            dp.toFloat(), 
            resources.displayMetrics
        ).toInt()
    }
}
