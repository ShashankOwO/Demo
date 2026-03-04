package com.example.resume2interview.ui.profile

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import com.example.resume2interview.databinding.FragmentHelpCenterBinding

class HelpCenterFragment : Fragment() {

    private var _binding: FragmentHelpCenterBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentHelpCenterBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }

        // Accordion toggles for all 6 FAQs
        setupAccordion(binding.layoutFaq1, binding.tvAnswer1, binding.ivExpand1)
        setupAccordion(binding.layoutFaq2, binding.tvAnswer2, binding.ivExpand2)
        setupAccordion(binding.layoutFaq3, binding.tvAnswer3, binding.ivExpand3)
        setupAccordion(binding.layoutFaq4, binding.tvAnswer4, binding.ivExpand4)
        setupAccordion(binding.layoutFaq5, binding.tvAnswer5, binding.ivExpand5)
        setupAccordion(binding.layoutFaq6, binding.tvAnswer6, binding.ivExpand6)

        // Contact Us — open email composer
        binding.btnContactUs.setOnClickListener {
            val intent = Intent(Intent.ACTION_SENDTO).apply {
                data = Uri.parse("mailto:shashankyerragunta22@gmail.com")
                putExtra(Intent.EXTRA_SUBJECT, "Support Request – Resume2Interview")
            }
            if (intent.resolveActivity(requireActivity().packageManager) != null) {
                startActivity(intent)
            }
        }
    }

    private fun setupAccordion(
        container: View,
        answerText: View,
        expandIcon: android.widget.ImageView
    ) {
        answerText.visibility = View.GONE
        expandIcon.rotation = 0f

        container.setOnClickListener {
            if (answerText.visibility == View.GONE) {
                answerText.visibility = View.VISIBLE
                expandIcon.animate().rotation(180f).setDuration(200).start()
            } else {
                answerText.visibility = View.GONE
                expandIcon.animate().rotation(0f).setDuration(200).start()
            }
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
