package com.example.resume2interview.ui.report

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentReportsBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.example.resume2interview.databinding.ItemReportBinding
import android.view.ViewGroup
import android.view.LayoutInflater
import androidx.recyclerview.widget.RecyclerView
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ReportsFragment : BaseFragment<FragmentReportsBinding, ReportsViewModel>(
    FragmentReportsBinding::inflate
) {
    override val viewModel: ReportsViewModel by viewModels()

    override fun showContent(data: Any?) {
        val reports = data as? List<ReportItem> ?: return
        
        val adapter = ReportAdapter(reports) { reportId ->
            // Pass argument normally, simplifying
            findNavController().navigate(R.id.action_reportsFragment_to_reportDetailFragment)
        }
        binding.rvReports.layoutManager = LinearLayoutManager(context)
        binding.rvReports.adapter = adapter
    }

    class ReportAdapter(
        private val items: List<ReportItem>,
        private val onClick: (String) -> Unit
    ) : RecyclerView.Adapter<ReportAdapter.ViewHolder>() {

        inner class ViewHolder(val binding: ItemReportBinding) : RecyclerView.ViewHolder(binding.root)

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val binding = ItemReportBinding.inflate(LayoutInflater.from(parent.context), parent, false)
            return ViewHolder(binding)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val item = items[position]
            holder.binding.tvTitle.text = item.title
            holder.binding.tvDate.text = item.date
            holder.binding.tvScore.text = "Score: ${item.score}/100"
            holder.binding.tvStatus.text = item.status
            
            when (item.status.lowercase()) {
                "good" -> {
                    holder.binding.tvStatus.setBackgroundResource(R.drawable.bg_badge_green)
                    holder.binding.tvStatus.setTextColor(android.graphics.Color.parseColor("#2E7D32"))
                }
                "average" -> {
                    holder.binding.tvStatus.setBackgroundResource(R.drawable.bg_badge_yellow)
                    holder.binding.tvStatus.setTextColor(android.graphics.Color.parseColor("#F57F17"))
                }
                "needs improvement" -> {
                    holder.binding.tvStatus.setBackgroundResource(R.drawable.bg_badge_red)
                    holder.binding.tvStatus.setTextColor(android.graphics.Color.parseColor("#C62828"))
                }
                else -> {
                    holder.binding.tvStatus.setBackgroundResource(R.drawable.bg_badge_yellow)
                    holder.binding.tvStatus.setTextColor(android.graphics.Color.parseColor("#F57F17"))
                }
            }
            
            holder.itemView.setOnClickListener { onClick(item.id) }
        }

        override fun getItemCount() = items.size
    }
}
