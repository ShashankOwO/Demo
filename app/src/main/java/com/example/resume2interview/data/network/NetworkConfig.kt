package com.example.resume2interview.data.network

/**
 * Central place to switch the backend URL.
 *
 * ── EMULATOR ──────────────────────────────────────────────────────────────
 *   10.0.2.2 is Android Studio's emulator alias for your PC's localhost.
 *   Use this while running on the emulator.
 *
 * ── PHYSICAL PHONE ────────────────────────────────────────────────────────
 *   Use your PC's local Wi-Fi IP (run `ipconfig` → IPv4 Address).
 *   Both the phone AND this PC must be on the same Wi-Fi network.
 *   Remember to start the backend with: python run.py  (host="0.0.0.0")
 *
 * HOW TO SWITCH: just comment/uncomment the two BASE_URL lines below.
 */
object NetworkConfig {

    // ✅ Emulator (Android Studio AVD)
    const val BASE_URL = "http://10.0.2.2:5000/"

    // ✅ Physical phone — replace with your PC's IP from ipconfig
    // const val BASE_URL = "http://192.168.1.100:5000/"
}
