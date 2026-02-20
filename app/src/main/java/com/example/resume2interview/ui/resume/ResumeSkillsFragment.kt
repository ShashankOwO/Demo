package com.example.resume2interview.ui.resume

import android.view.LayoutInflater
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentResumeSkillsBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.google.android.material.chip.Chip
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ResumeSkillsFragment : BaseFragment<FragmentResumeSkillsBinding, ResumeSkillsViewModel>(
    FragmentResumeSkillsBinding::inflate
) {
    override val viewModel: ResumeSkillsViewModel by viewModels()

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? SkillsUiData ?: return
        
        binding.chipGroupTech.removeAllViews()
        uiData.techSkills.forEach { skill ->
            val chip = Chip(context).apply {
                text = skill
                isCheckable = false
            }
            binding.chipGroupTech.addView(chip)
        }

        binding.chipGroupSoft.removeAllViews()
        uiData.softSkills.forEach { skill ->
             val chip = Chip(context).apply {
                text = skill
                isCheckable = false
            }
            binding.chipGroupSoft.addView(chip)
        }
        
        binding.chipGroupTools.removeAllViews()
        uiData.tools.forEach { skill ->
             val chip = Chip(context).apply {
                text = skill
                isCheckable = false
            }
            binding.chipGroupTools.addView(chip)
        }
    }
}
