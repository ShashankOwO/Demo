package com.example.resume2interview

import android.app.Application
import androidx.appcompat.app.AppCompatDelegate
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class Resume2InterviewApp : Application() {
    override fun onCreate() {
        super.onCreate()
        val prefs = applicationContext.getSharedPreferences("preferences_prefs", 0)
        val isDark = prefs.getBoolean("dark_mode", false)
        if (isDark) {
            AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES)
        } else {
            AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO)
        }
    }
}
