package com.example.resume2interview.ui.profile

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.appcompat.app.AppCompatDelegate
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.data.model.UpdateProfileRequest
import com.example.resume2interview.data.network.ApiService
import com.example.resume2interview.databinding.FragmentPreferencesBinding
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

@AndroidEntryPoint
class PreferencesFragment : Fragment() {

    private var _binding: FragmentPreferencesBinding? = null
    private val binding get() = _binding!!

    @Inject lateinit var apiService: ApiService

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentPreferencesBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnBack.setOnClickListener { findNavController().popBackStack() }

        val prefs = requireContext().getSharedPreferences("preferences_prefs", 0)

        // ── Dark mode ────────────────────────────────
        val isDark = prefs.getBoolean("dark_mode", false)
        binding.switchDarkMode.isChecked = isDark
        binding.switchDarkMode.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("dark_mode", isChecked).apply()
            AppCompatDelegate.setDefaultNightMode(
                if (isChecked) AppCompatDelegate.MODE_NIGHT_YES else AppCompatDelegate.MODE_NIGHT_NO
            )
        }

        // ── Restore difficulty locally (default: beginner) ──────────────
        val localDifficulty = prefs.getString("difficulty", "beginner") ?: "beginner"
        applyDifficulty(localDifficulty)

        // Fetch from backend and override
        CoroutineScope(Dispatchers.IO).launch {
            try {
                val response = apiService.getProfile()
                val backendDiff = response.body()?.preferredDifficulty ?: "beginner"
                prefs.edit().putString("difficulty", backendDiff).apply()
                withContext(Dispatchers.Main) { applyDifficulty(backendDiff) }
            } catch (_: Exception) { /* keep local */ }
        }

        // ── Save ────────────────────────────────────────────────────────
        binding.btnSavePreferences.setOnClickListener {
            val selected = when (binding.rgDifficulty.checkedRadioButtonId) {
                binding.rbBeginner.id     -> "beginner"
                binding.rbAdvanced.id     -> "advanced"
                binding.rbIntermediate.id -> "intermediate"
                else -> "beginner"
            }
            prefs.edit().putString("difficulty", selected).apply()
            CoroutineScope(Dispatchers.IO).launch {
                try {
                    apiService.updateProfile(UpdateProfileRequest(preferredDifficulty = selected))
                    withContext(Dispatchers.Main) {
                        Toast.makeText(requireContext(), "Preferences saved!", Toast.LENGTH_SHORT).show()
                    }
                } catch (_: Exception) {
                    withContext(Dispatchers.Main) {
                        Toast.makeText(requireContext(), "Saved locally (offline)", Toast.LENGTH_SHORT).show()
                    }
                }
            }
        }
    }

    private fun applyDifficulty(value: String) {
        when (value) {
            "beginner"     -> binding.rgDifficulty.check(binding.rbBeginner.id)
            "advanced"     -> binding.rgDifficulty.check(binding.rbAdvanced.id)
            "intermediate" -> binding.rgDifficulty.check(binding.rbIntermediate.id)
            else           -> binding.rgDifficulty.check(binding.rbBeginner.id)
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
