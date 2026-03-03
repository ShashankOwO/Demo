package com.example.resume2interview.ui.profile

import android.app.Activity
import android.content.Intent
import android.net.Uri
import androidx.activity.result.contract.ActivityResultContracts
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import com.bumptech.glide.Glide
import com.example.resume2interview.R
import com.example.resume2interview.data.network.ApiClient
import com.example.resume2interview.databinding.FragmentEditProfileBinding
import com.example.resume2interview.ui.base.BaseFragment
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest

@AndroidEntryPoint
class EditProfileFragment : BaseFragment<FragmentEditProfileBinding, EditProfileViewModel>(
    FragmentEditProfileBinding::inflate
) {
    override val viewModel: EditProfileViewModel by viewModels()

    // Standard gallery image picker — works on all Android versions (minSdk 24+)
    private val imagePickerLauncher =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            if (result.resultCode == Activity.RESULT_OK) {
                val uri: Uri? = result.data?.data
                uri?.let {
                    // Immediately show the selected image in UI
                    Glide.with(this)
                        .load(it)
                        .circleCrop()
                        .placeholder(R.drawable.ic_user)
                        .into(binding.ivAvatar)

                    // Upload to backend
                    viewModel.uploadPhoto(it, requireContext())
                }
            }
        }

    override fun setupUI() {
        viewModel.fetchProfile()

        // Pre-populate fields from cached profile (includes signup name)
        viewLifecycleOwner.lifecycleScope.launchWhenStarted {
            viewModel.profileData.collectLatest { profile ->
                profile?.let {
                    if (binding.etName.text.isNullOrEmpty())     binding.etName.setText(it.name)
                    if (binding.etEmail.text.isNullOrEmpty())    binding.etEmail.setText(it.email)
                    if (binding.etJobTitle.text.isNullOrEmpty()) binding.etJobTitle.setText(it.title)
                    if (binding.etLocation.text.isNullOrEmpty()) binding.etLocation.setText(it.location)
                    if (binding.etBio.text.isNullOrEmpty())      binding.etBio.setText(it.bio)

                    // Load existing profile photo
                    val photoUrl = it.profilePhotoUrl
                    if (!photoUrl.isNullOrBlank()) {
                        Glide.with(this@EditProfileFragment)
                            .load("${ApiClient.BASE_URL.trimEnd('/')}$photoUrl")
                            .circleCrop()
                            .placeholder(R.drawable.ic_user)
                            .error(R.drawable.ic_user)
                            .into(binding.ivAvatar)
                    }
                }
            }
        }

        // "Change Photo" tap → open device gallery
        binding.tvChangePhoto.setOnClickListener {
            val intent = Intent(Intent.ACTION_PICK).apply {
                type = "image/*"
            }
            imagePickerLauncher.launch(intent)
        }

        binding.btnBack.setOnClickListener {
            findNavController().navigateUp()
        }

        binding.btnSave.setOnClickListener {
            viewModel.saveProfile(
                binding.etName.text.toString(),
                binding.etEmail.text.toString(),
                binding.etJobTitle.text.toString(),
                binding.etLocation.text.toString(),
                binding.etBio.text.toString()
            )
        }
    }

    override fun showContent(data: Any?) {
        val success = data as? Boolean ?: false
        if (success) {
            findNavController().navigateUp()
        }
    }
}
