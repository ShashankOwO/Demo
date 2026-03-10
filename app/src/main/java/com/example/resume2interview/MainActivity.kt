package com.example.resume2interview

import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.lifecycleScope
import androidx.lifecycle.repeatOnLifecycle
import androidx.navigation.NavController
import androidx.navigation.fragment.NavHostFragment
import com.example.resume2interview.databinding.ActivityMainBinding
import com.example.resume2interview.ui.widget.PremiumBottomNavView
import com.example.resume2interview.utils.TokenManager
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {

    @Inject
    lateinit var tokenManager: TokenManager

    private lateinit var binding: ActivityMainBinding
    private lateinit var navController: NavController

    // Tab items matching bottom_nav_menu order
    private val navItems = listOf(
        PremiumBottomNavView.NavItem(R.drawable.ic_home,   "Home"),
        PremiumBottomNavView.NavItem(R.drawable.ic_mic,    "Interview"),
        PremiumBottomNavView.NavItem(R.drawable.ic_chart,  "Reports"),
        PremiumBottomNavView.NavItem(R.drawable.ic_person, "Profile")
    )

    private val tabDestinations = listOf(
        R.id.homeFragment,
        R.id.interviewFragment,
        R.id.reportsFragment,
        R.id.profileFragment
    )

    private val hiddenDestinations = setOf(
        R.id.splashFragment,
        R.id.loginFragment,
        R.id.signupFragment,
        R.id.forgotPasswordFragment,
        R.id.resetPasswordFragment,
        R.id.interviewFragment,
        R.id.interviewSuccessFragment,
        R.id.uploadResumeFragment,
        R.id.resumeSkillsFragment,
        R.id.editProfileFragment,
        R.id.reportDetailFragment,
        R.id.interviewProgressFragment,
        R.id.notificationsFragment,
        R.id.preferencesFragment,
        R.id.privacyPolicyFragment
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val navHostFragment = supportFragmentManager
            .findFragmentById(R.id.nav_host_fragment) as NavHostFragment
        navController = navHostFragment.navController

        // Wire the premium custom nav bar
        val nav = binding.premiumBottomNav
        nav.items = navItems

        nav.onTabSelected = { idx ->
            navController.navigate(
                tabDestinations[idx],
                null,
                androidx.navigation.NavOptions.Builder()
                    .setLaunchSingleTop(true)
                    .setRestoreState(true)
                    .setPopUpTo(navController.graph.startDestinationId, inclusive = false, saveState = true)
                    .build()
            )
        }

        // Keep nav bar selection indicator in sync with back stack changes
        navController.addOnDestinationChangedListener { _, destination, _ ->
            if (destination.id in hiddenDestinations) {
                nav.animate().translationY(nav.height.toFloat() + nav.translationY)
                    .setDuration(220)
                    .withEndAction { nav.visibility = View.GONE }
                    .start()
            } else {
                nav.visibility = View.VISIBLE
                nav.animate().translationY(0f).setDuration(260).start()
                // Sync selected tab without re-navigating
                val idx = tabDestinations.indexOf(destination.id)
                if (idx >= 0) nav.selectTab(idx, animate = false)
            }
        }

        // Listen for 401 Unauthorized events and force logout
        lifecycleScope.launch {
            repeatOnLifecycle(Lifecycle.State.STARTED) {
                tokenManager.unauthorizedEvent.collect {
                    if (navController.currentDestination?.id != R.id.loginFragment) {
                        navController.navigate(
                            R.id.loginFragment,
                            null,
                            androidx.navigation.NavOptions.Builder()
                                .setPopUpTo(R.id.homeFragment, true)
                                .build()
                        )
                    }
                }
            }
        }
    }
}
