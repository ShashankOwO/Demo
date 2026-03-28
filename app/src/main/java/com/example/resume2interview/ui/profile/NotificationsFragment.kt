package com.example.resume2interview.ui.profile

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentNotificationsBinding

class NotificationsFragment : Fragment() {

    private var _binding: FragmentNotificationsBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentNotificationsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnBack.setOnClickListener {
            findNavController().popBackStack()
        }

        // Persist toggle states with SharedPreferences
        val prefs = requireContext().getSharedPreferences("notifications_prefs", 0)

        binding.switchPushNotifications.isChecked = prefs.getBoolean("push_notifications", true)
        binding.switchInterviewReminders.isChecked = prefs.getBoolean("interview_reminders", true)
        binding.switchEmailAlerts.isChecked = prefs.getBoolean("email_alerts", true)
        binding.switchWeeklySummary.isChecked = prefs.getBoolean("weekly_summary", false)
        binding.switchProductUpdates.isChecked = prefs.getBoolean("product_updates", false)

        binding.switchPushNotifications.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("push_notifications", isChecked).apply()
        }
        binding.switchInterviewReminders.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("interview_reminders", isChecked).apply()
        }
        binding.switchEmailAlerts.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("email_alerts", isChecked).apply()
        }
        binding.switchWeeklySummary.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("weekly_summary", isChecked).apply()
        }
        binding.switchProductUpdates.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit().putBoolean("product_updates", isChecked).apply()
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
