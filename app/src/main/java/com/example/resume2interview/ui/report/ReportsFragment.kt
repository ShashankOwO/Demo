package com.example.resume2interview.ui.report

import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.resume2interview.R
import com.example.resume2interview.databinding.FragmentReportsBinding
import android.annotation.SuppressLint
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.widget.addTextChangedListener
import androidx.recyclerview.widget.RecyclerView
import com.example.resume2interview.databinding.ItemReportBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
@AndroidEntryPoint
class ReportsFragment : BaseFragment<FragmentReportsBinding, ReportsViewModel>(
    FragmentReportsBinding::inflate
) {
    private var reportAdapter: ReportAdapter? = null

    override val viewModel: ReportsViewModel by viewModels()

    override fun setupUI() {
        super.setupUI()
        binding.etSearch.addTextChangedListener { text ->
            viewModel.filterReports(text?.toString().orEmpty())
        }
    }

    override fun showContent(data: Any?) {
        val reports = data as? List<ReportItem> ?: return
        
        val isSearchActive = binding.etSearch.text.toString().isNotEmpty()
        
        if (reports.isEmpty()) {
            binding.rvReports.visibility = View.GONE
            if (isSearchActive) {
                binding.tvNoSearchResults.visibility = View.VISIBLE
                binding.layoutEmptyReports.visibility = View.GONE
            } else {
                binding.layoutEmptyReports.visibility = View.VISIBLE
                binding.tvNoSearchResults.visibility = View.GONE
                binding.etSearch.visibility = View.GONE
            }
        } else {
            binding.rvReports.visibility = View.VISIBLE
            binding.layoutEmptyReports.visibility = View.GONE
            binding.tvNoSearchResults.visibility = View.GONE
            binding.etSearch.visibility = View.VISIBLE
        }

        // Always re-attach the adapter since the RecyclerView is recreated on
        // view destruction (back-navigation recreates the binding but the field survives)
        if (reportAdapter == null) {
            reportAdapter = ReportAdapter(reports) { reportId ->
                val bundle = android.os.Bundle().apply {
                    putString("reportId", reportId)
                }
                findNavController().navigate(R.id.action_reportsFragment_to_reportDetailFragment, bundle)
            }
        } else {
            reportAdapter?.updateData(reports)
        }
        // Always assign the adapter to the current RecyclerView instance
        if (binding.rvReports.adapter !== reportAdapter) {
            binding.rvReports.layoutManager = LinearLayoutManager(context)
            binding.rvReports.adapter = reportAdapter
        }
    }

    override fun onDestroyView() {
        // Null the adapter so the next showContent() creates a fresh one
        // tied to the new RecyclerView instance
        reportAdapter = null
        super.onDestroyView()
    }

    class ReportAdapter(
        private var items: List<ReportItem>,
        private val onClick: (String) -> Unit
    ) : RecyclerView.Adapter<ReportAdapter.ViewHolder>() {

        @SuppressLint("NotifyDataSetChanged")
        fun updateData(newItems: List<ReportItem>) {
            this.items = newItems
            notifyDataSetChanged()
        }

        inner class ViewHolder(val binding: ItemReportBinding) : RecyclerView.ViewHolder(binding.root)

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val binding = ItemReportBinding.inflate(LayoutInflater.from(parent.context), parent, false)
            return ViewHolder(binding)
        }

        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val item = items[position]
            holder.binding.tvIdBadge.text = "#${position + 1}"
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
