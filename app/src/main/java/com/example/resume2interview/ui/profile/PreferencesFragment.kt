package com.example.resume2interview.ui.profile

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentPreferencesBinding

class PreferencesFragment : Fragment() {

    private var _binding: FragmentPreferencesBinding? = null
    private val binding get() = _binding!!

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

        binding.btnBack.setOnClickListener {
            findNavController().popBackStack()
        }

        // Restore saved difficulty preference
        val prefs = requireContext().getSharedPreferences("preferences_prefs", 0)
        val saved = prefs.getString("difficulty", "intermediate")
        when (saved) {
            "beginner" -> binding.rgDifficulty.check(binding.rbBeginner.id)
            "advanced" -> binding.rgDifficulty.check(binding.rbAdvanced.id)
            else -> binding.rgDifficulty.check(binding.rbIntermediate.id)
        }

        binding.btnSavePreferences.setOnClickListener {
            val selected = when (binding.rgDifficulty.checkedRadioButtonId) {
                binding.rbBeginner.id -> "beginner"
                binding.rbAdvanced.id -> "advanced"
                else -> "intermediate"
            }
            prefs.edit().putString("difficulty", selected).apply()
            Toast.makeText(requireContext(), "Preferences saved!", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
