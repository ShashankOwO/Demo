package com.example.resume2interview

import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.NavController
import androidx.navigation.fragment.NavHostFragment
import androidx.navigation.ui.setupWithNavController
import com.example.resume2interview.databinding.ActivityMainBinding
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var navController: NavController

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val navHostFragment = supportFragmentManager
            .findFragmentById(R.id.nav_host_fragment) as NavHostFragment
        navController = navHostFragment.navController

        binding.bottomNavigation.setupWithNavController(navController)

        // Hide bottom nav on auth/sub-page screens that have their own back button
        val hiddenDestinations = setOf(
            R.id.splashFragment,
            R.id.loginFragment,
            R.id.signupFragment,
            R.id.forgotPasswordFragment,
            R.id.resetPasswordFragment,
            R.id.interviewFragment,
            R.id.uploadResumeFragment,
            R.id.resumeSkillsFragment,
            R.id.editProfileFragment,
            R.id.reportDetailFragment
        )

        navController.addOnDestinationChangedListener { _, destination, _ ->
            val nav = binding.bottomNavigation
            if (destination.id in hiddenDestinations) {
                nav.animate().translationY(nav.height.toFloat()).setDuration(200).withEndAction {
                    nav.visibility = View.GONE
                }.start()
            } else {
                nav.visibility = View.VISIBLE
                nav.animate().translationY(0f).setDuration(250).start()
            }
        }
    }
}
