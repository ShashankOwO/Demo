package com.example.resume2interview.ui.resume

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.ArrayAdapter
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.R
import com.example.resume2interview.data.model.ResumeAnalysisOut
import com.example.resume2interview.databinding.FragmentResumeSkillsBinding
import com.example.resume2interview.ui.base.BaseFragment
import com.example.resume2interview.ui.home.HomeStaticState
import com.google.android.material.chip.Chip
import com.google.gson.Gson
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ResumeSkillsFragment : BaseFragment<FragmentResumeSkillsBinding, ResumeSkillsViewModel>(
    FragmentResumeSkillsBinding::inflate
) {
    companion object {
        const val ARG_ANALYSIS_JSON = "analysis_json"
    }

    override val viewModel: ResumeSkillsViewModel by viewModels()

    override fun setupUI() {
        binding.btnBack.setOnClickListener {
            HomeStaticState.isResumeUploaded = true
            findNavController().popBackStack(R.id.homeFragment, false)
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

        // Load data: prefer real analysis from upload, fall back to defaults
        val json = arguments?.getString(ARG_ANALYSIS_JSON)
        if (!json.isNullOrBlank()) {
            try {
                val analysis = Gson().fromJson(json, ResumeAnalysisOut::class.java)
                viewModel.loadFromApiResponse(analysis)
            } catch (e: Exception) {
                viewModel.loadFallbackSkills()
            }
        } else {
            viewModel.loadFallbackSkills()
        }
    }

    override fun showContent(data: Any?) {
        val uiData = data as? SkillsUiData ?: return

        // Technical Skills — all extracted_skills from backend
        binding.chipGroupTech.removeAllViews()
        uiData.techSkills.forEach { skill ->
            addChipToGroup(skill, binding.chipGroupTech)
        }

        // Soft Skills — empty unless backend categorises
        binding.chipGroupSoft.removeAllViews()
        uiData.softSkills.forEach { skill ->
            addChipToGroup(skill, binding.chipGroupSoft)
        }

        // Tools — empty unless backend categorises
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
