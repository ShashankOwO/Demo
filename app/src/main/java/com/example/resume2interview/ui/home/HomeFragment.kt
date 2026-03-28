package com.example.resume2interview.ui.home

import android.graphics.Color
import android.widget.TextView
import androidx.core.view.isVisible
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import com.airbnb.lottie.LottieAnimationView
import com.airbnb.lottie.LottieDrawable
import com.bumptech.glide.Glide
import com.example.resume2interview.R
import com.example.resume2interview.data.network.ApiClient
import com.example.resume2interview.data.repository.ProfileRepository
import com.example.resume2interview.databinding.FragmentHomeBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.inject.Inject

@AndroidEntryPoint
class HomeFragment : BaseFragment<FragmentHomeBinding, HomeViewModel>(
    FragmentHomeBinding::inflate
) {
    override val viewModel: HomeViewModel by viewModels()

    @Inject
    lateinit var profileRepository: ProfileRepository

    // Live tip list updated from generatedTips when showContent() fires
    private var liveTips: List<String> = emptyList()

    override fun onResume() {
        super.onResume()
        viewModel.loadHomeData()
    }

    override fun setupUI() {

        // Navigation click listeners
        binding.frameAvatar.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_profileFragment)
        }
        binding.cardProgress.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewProgressFragment)
        }
        binding.cardUpdateResume.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
        }
        binding.cardStartInterview.setOnClickListener {
            findNavController().navigate(R.id.action_homeFragment_to_interviewFragment)
        }

        // Real-time profile/avatar observer
        viewLifecycleOwner.lifecycleScope.launchWhenStarted {
            profileRepository.cachedProfile.collectLatest { profile ->
                profile?.let {
                    val name = it.name?.takeIf { n -> n.isNotBlank() }
                        ?: it.email?.substringBefore('@')
                        ?: "User"
                    binding.tvWelcome.text = HomeTipEngine().greeting(name)
                    binding.tvAvatar.text = name.firstOrNull()?.uppercaseChar()?.toString() ?: "U"

                    val photoUrl = it.profilePhotoUrl
                    if (!photoUrl.isNullOrBlank()) {
                        val fullUrl = "${ApiClient.BASE_URL.trimEnd('/')}$photoUrl"
                        Glide.with(this@HomeFragment)
                            .load(fullUrl)
                            .circleCrop()
                            .placeholder(R.drawable.ic_user)
                            .error(R.drawable.ic_user)
                            .into(binding.ivAvatar)
                        binding.ivAvatar.isVisible = true
                        binding.tvAvatar.isVisible = false
                    } else {
                        binding.ivAvatar.isVisible = false
                        binding.tvAvatar.isVisible = true
                    }
                }
            }
        }

        // ── Animated Tip Rotation ───────────────────────────
        var tipIndex = 0
        binding.sparkleIcon.alpha = 1f // Initialize sparkle to be visible
        
        viewLifecycleOwner.lifecycleScope.launch {
            while (isActive) {
                val tips = liveTips.ifEmpty { listOf("Let's get you job-ready today") }
                val tip  = tips[tipIndex % tips.size]
                
                // Type text out (suspends until finished)
                // Sparkle animation blinks during typing and stops afterwards
                typeWriter(binding.tvSubtitle, binding.sparkleIcon, tip)
                
                // Wait 5 seconds AFTER typing finishes
                delay(5000)
                
                tipIndex++
            }
        }
    }

    // ── Animation Helpers ─────────────────────────────────────────────────────

    /** Types text character by character while keeping sparkle stable, then blinks after. */
    private suspend fun typeWriter(textView: TextView, lottie: LottieAnimationView, text: String) {
        textView.text = ""
        
        // Stable while typing
        lottie.pauseAnimation()
        lottie.progress = 0f 
        
        text.forEachIndexed { index, _ ->
            delay(38)
            textView.text = text.substring(0, index + 1)
        }
        
        // Blink during the 5 second wait
        lottie.repeatCount = LottieDrawable.INFINITE
        lottie.playAnimation()
    }

    // ── Content Binding ───────────────────────────────────────────────────────

    override fun showContent(data: Any?) {
        val uiData = data as? HomeUiData ?: return

        // Time-aware greeting (fallback if profile observer hasn't fired yet)
        if (profileRepository.cachedProfile.value == null) {
            binding.tvWelcome.text = uiData.greeting
            binding.tvAvatar.text = uiData.userName.firstOrNull()?.uppercaseChar()?.toString() ?: "A"
        }

        // Push analytics-generated tips into the rotation list
        if (uiData.generatedTips.isNotEmpty()) {
            liveTips = uiData.generatedTips
        }

        binding.cardStartInterview.setCardBackgroundColor(Color.parseColor("#1976D2"))
        binding.ivStartInterviewIcon.setColorFilter(Color.WHITE)
        binding.tvStartInterview.setTextColor(Color.WHITE)

        if (uiData.isResumeActive) {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_resumeSkillsFragment)
            }
            binding.tvStatusBadge.text = "✓ Active"
            binding.tvStatusBadge.setTextColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.accent_emerald))
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_green)
            binding.cardResumeStatus.setCardBackgroundColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.bg_white))
            val skillCount = uiData.extractedSkills
            binding.tvResumeStatus.text = if (skillCount > 0) "$skillCount skills extracted" else "Resume active"
            binding.tvResumeStatus.setTextColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.text_secondary))
            binding.tvLastUpdated.isVisible = true
            val sdf = SimpleDateFormat("M/dd/yyyy", Locale.getDefault())
            val displayDate = uiData.resumeUploadedAt?.let {
                try {
                    val iso = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
                    sdf.format(iso.parse(it) ?: Date())
                } catch (e: Exception) { sdf.format(Date()) }
            } ?: sdf.format(Date())
            binding.tvLastUpdated.text = "Last updated:   $displayDate"
        } else {
            binding.cardResumeStatus.setOnClickListener {
                findNavController().navigate(R.id.action_homeFragment_to_uploadResumeFragment)
            }
            binding.tvStatusBadge.text = "⚠ Action Needed"
            binding.tvStatusBadge.setTextColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.accent_amber))
            binding.tvStatusBadge.setBackgroundResource(R.drawable.bg_badge_orange)
            binding.cardResumeStatus.setCardBackgroundColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.bg_white))
            binding.tvResumeStatus.text = "Upload your resume to generate personalized interview questions."
            binding.tvResumeStatus.setTextColor(androidx.core.content.ContextCompat.getColor(requireContext(), R.color.text_secondary))
            binding.tvLastUpdated.isVisible = false
        }

        binding.tvSessionCount.text = uiData.interviewSessionCount.toString()
        binding.tvLatestScore.text  = if (uiData.interviewSessionCount > 0) "${uiData.latestScore}/100" else "--/100"

        val tvTrend = view?.findViewById<TextView>(R.id.tv_trend_percentage)
        if (tvTrend != null) {
            tvTrend.isVisible = false
        }

        // Last session date
        val sdfOut = SimpleDateFormat("M/d/yyyy", Locale.getDefault())
        val sdfIn  = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.getDefault())
        val dateStr = uiData.lastSessionDate?.let {
            try { sdfOut.format(sdfIn.parse(it) ?: Date()) }
            catch (e: Exception) { null }
        }
        val tvDate = view?.findViewById<TextView>(R.id.tv_last_session_date)
        tvDate?.text = dateStr ?: "--"
        tvDate?.isVisible = dateStr != null

        // Focus areas
        val tvFocusTitle = view?.findViewById<TextView>(R.id.tv_focus_title)
        val tvFocus1 = view?.findViewById<TextView>(R.id.tv_focus_1)
        val tvFocus2 = view?.findViewById<TextView>(R.id.tv_focus_2)
        val tvFocus3 = view?.findViewById<TextView>(R.id.tv_focus_3)

        if (uiData.focusAreas.isEmpty()) {
            tvFocusTitle?.text = "Focus Areas — complete an interview to see your weak spots!"
            binding.cardFocus1.isVisible = false
            binding.cardFocus2.isVisible = false
            view?.findViewById<androidx.cardview.widget.CardView>(R.id.card_focus_3)?.isVisible = false
        } else {
            tvFocusTitle?.text = "Focus Areas"
            binding.cardFocus1.isVisible = true
            tvFocus1?.text = uiData.focusAreas.getOrNull(0) ?: ""
            if (uiData.focusAreas.size > 1) {
                tvFocus2?.text = uiData.focusAreas[1]
                binding.cardFocus2.isVisible = true
            } else {
                binding.cardFocus2.isVisible = false
            }
            val cardFocus3 = view?.findViewById<androidx.cardview.widget.CardView>(R.id.card_focus_3)
            if (uiData.focusAreas.size > 2) {
                tvFocus3?.text = uiData.focusAreas[2]
                cardFocus3?.isVisible = true
            } else {
                cardFocus3?.isVisible = false
            }
        }


        // ── Practice Streak Binding ──────────────────────────────────────────
        binding.tvStreakTitle.text = "${uiData.currentStreak} Day Streak"
        if (uiData.currentStreak > 0) {
            // Pulse animation on the flame
            binding.sparkleStreakIcon.animate()
                .scaleX(1.3f)
                .scaleY(1.3f)
                .setDuration(250)
                .withEndAction {
                    binding.sparkleStreakIcon.animate()
                        .scaleX(1.0f)
                        .scaleY(1.0f)
                        .setDuration(250)
                        .start()
                }.start()
        }

        val weekIds = listOf(
            R.id.streak_day_1, R.id.streak_day_2, R.id.streak_day_3,
            R.id.streak_day_4, R.id.streak_day_5, R.id.streak_day_6, R.id.streak_day_7
        )

        val rootView = view ?: return

        if (uiData.weekActivity.size == 7) {
            for (i in 0 until 7) {
                val dayView = rootView.findViewById<android.view.View>(weekIds[i])
                val tvDayLabel = dayView.findViewById<TextView>(R.id.tv_day_label)
                val viewCircleBg = dayView.findViewById<android.view.View>(R.id.view_circle_bg)
                val tvDayStatus = dayView.findViewById<TextView>(R.id.tv_day_status)
                val viewTodayRing = dayView.findViewById<android.view.View>(R.id.view_today_ring)

                val dayData = uiData.weekActivity[i]
                tvDayLabel.text = dayData.day

                // Show today ring for today (last box)
                viewTodayRing.visibility = if (i == 6) android.view.View.VISIBLE else android.view.View.INVISIBLE

                if (dayData.completed) {
                    viewCircleBg.setBackgroundResource(R.drawable.bg_circle_filled_green)
                    tvDayStatus.text = "✓"
                    tvDayStatus.setTextColor(Color.WHITE)
                    tvDayStatus.textSize = 15f
                } else {
                    viewCircleBg.setBackgroundResource(R.drawable.bg_circle_empty)
                    tvDayStatus.text = "✕"
                    tvDayStatus.setTextColor(Color.parseColor("#9E9E9E")) // Muted
                    tvDayStatus.textSize = 13f
                }
            }
        }

        // ── Recent Activity ──────────────────────────────────────
        showRecentActivity(uiData.recentActivity.take(3))
    }

    // ── Recent Activity ───────────────────────────────────────────────────────

    private fun showRecentActivity(
        items: List<com.example.resume2interview.data.model.RecentActivityItem>
    ) {
        val container = binding.llRecentActivity
        val emptyState = binding.tvActivityEmpty

        container.removeAllViews()

        if (items.isEmpty()) {
            emptyState.isVisible = true
            return
        }
        emptyState.isVisible = false

        val inflater = layoutInflater
        val sdfIn  = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", java.util.Locale.getDefault())
        val sdfOut = java.text.SimpleDateFormat("MMM d, yyyy", java.util.Locale.getDefault())

        for (item in items) {
            val dateStr = item.date?.let {
                try { sdfOut.format(sdfIn.parse(it) ?: java.util.Date()) }
                catch (e: Exception) { item.date }
            } ?: "—"

            if (item.type == "interview") {
                val row = inflater.inflate(R.layout.item_activity_interview, container, false)

                row.findViewById<TextView>(R.id.tv_activity_title).text = "Interview"
                row.findViewById<TextView>(R.id.tv_activity_role).text =
                    item.roleAppliedFor?.takeIf { it.isNotBlank() } ?: "General"
                row.findViewById<TextView>(R.id.tv_activity_date).text = dateStr
                val score = item.score
                row.findViewById<TextView>(R.id.tv_score_pill).text =
                    if (score != null) "$score/100" else "--/100"

                row.setOnClickListener {
                    item.interviewId?.let { id ->
                        val bundle = androidx.core.os.bundleOf("reportId" to id.toString())
                        findNavController().navigate(R.id.action_homeFragment_to_reportDetailFragment, bundle)
                    } ?: run {
                        findNavController().navigate(R.id.action_homeFragment_to_reportsFragment)
                    }
                }
                container.addView(row)

            } else if (item.type == "resume") {
                val row = inflater.inflate(R.layout.item_activity_resume, container, false)

                row.findViewById<TextView>(R.id.tv_resume_activity_date).text = dateStr
                container.addView(row)
            }
        }
    }
}
