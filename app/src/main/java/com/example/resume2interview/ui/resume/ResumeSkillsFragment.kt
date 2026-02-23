package com.example.resume2interview.ui.resume

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.ArrayAdapter
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentResumeSkillsBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.example.resume2interview.ui.home.HomeStaticState
import com.google.android.material.chip.Chip
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ResumeSkillsFragment : BaseFragment<FragmentResumeSkillsBinding, ResumeSkillsViewModel>(
    FragmentResumeSkillsBinding::inflate
) {
    override val viewModel: ResumeSkillsViewModel by viewModels()

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            HomeStaticState.isResumeUploaded = true
            // Also need to pop the upload resume fragment if it's in the back stack, or just navigate to Home
            // If we are at ResumeSkills -> UploadResume -> Home, navigateUp goes to UploadResume.
            // But user prompt asks to "make the back button work properly" and navigate contextually.
            // To ensure we go to Home, we can pop back to HomeFragment.
            findNavController().popBackStack(com.example.resume2interview.R.id.homeFragment, false)
        }

        val expLevels = arrayOf("Fresher", "Junior", "Mid-Level", "Senior")
        val expAdapter = ArrayAdapter(requireContext(), android.R.layout.simple_dropdown_item_1line, expLevels)
        binding.dropdownExperienceLevel.setAdapter(expAdapter)

        val roles = arrayOf("Backend Developer", "Frontend Developer", "Full Stack Developer", "Data Analyst", "Android Developer", "Custom")
        val roleAdapter = ArrayAdapter(requireContext(), android.R.layout.simple_dropdown_item_1line, roles)
        binding.dropdownTargetRole.setAdapter(roleAdapter)
        
        binding.dropdownTargetRole.setOnItemClickListener { _, _, position, _ ->
            val selected = roles[position]
            binding.etCustomRole.isVisible = (selected == "Custom")
        }

        binding.btnAddTechSkill.setOnClickListener {
            binding.layoutAddTechSkill.isVisible = true
            binding.btnAddTechSkill.isVisible = false
            binding.etNewTechSkill.requestFocus()
        }

        binding.btnSaveTechSkill.setOnClickListener {
            val skill = binding.etNewTechSkill.text.toString().trim()
            if (skill.isNotEmpty()) {
                addChipToGroup(skill, binding.chipGroupTech)
                binding.etNewTechSkill.text.clear()
            }
            binding.layoutAddTechSkill.isVisible = false
            binding.btnAddTechSkill.isVisible = true
        }

        binding.btnAddSoftSkill.setOnClickListener {
            binding.layoutAddSoftSkill.isVisible = true
            binding.btnAddSoftSkill.isVisible = false
            binding.etNewSoftSkill.requestFocus()
        }

        binding.btnSaveSoftSkill.setOnClickListener {
            val skill = binding.etNewSoftSkill.text.toString().trim()
            if (skill.isNotEmpty()) {
                addChipToGroup(skill, binding.chipGroupSoft)
                binding.etNewSoftSkill.text.clear()
            }
            binding.layoutAddSoftSkill.isVisible = false
            binding.btnAddSoftSkill.isVisible = true
        }

        binding.btnAddToolSkill.setOnClickListener {
            binding.layoutAddToolSkill.isVisible = true
            binding.btnAddToolSkill.isVisible = false
            binding.etNewToolSkill.requestFocus()
        }

        binding.btnSaveToolSkill.setOnClickListener {
            val skill = binding.etNewToolSkill.text.toString().trim()
            if (skill.isNotEmpty()) {
                addChipToGroup(skill, binding.chipGroupTools)
                binding.etNewToolSkill.text.clear()
            }
            binding.layoutAddToolSkill.isVisible = false
            binding.btnAddToolSkill.isVisible = true
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? SkillsUiData ?: return
        
        binding.chipGroupTech.removeAllViews()
        uiData.techSkills.forEach { skill ->
            addChipToGroup(skill, binding.chipGroupTech)
        }

        binding.chipGroupSoft.removeAllViews()
        uiData.softSkills.forEach { skill ->
            addChipToGroup(skill, binding.chipGroupSoft)
        }
        
        binding.chipGroupTools.removeAllViews()
        uiData.tools.forEach { skill ->
            addChipToGroup(skill, binding.chipGroupTools)
        }
    }

    private fun addChipToGroup(text: String, chipGroup: com.google.android.material.chip.ChipGroup) {
        val chip = Chip(requireContext()).apply {
            this.text = text
            isCloseIconVisible = true
            isCheckable = false
            setOnCloseIconClickListener {
                chipGroup.removeView(this)
            }
        }
        chipGroup.addView(chip)
    }
}
