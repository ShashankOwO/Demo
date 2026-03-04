package com.example.resume2interview.data.network

/**
 * ─── HOW TO SWITCH BACKEND TARGET ────────────────────────────────────────────
 *
 * EMULATOR (Android Studio AVD)
 *   10.0.2.2 is Android's loopback alias for your PC's localhost.
 *   Use this while running on the emulator. Backend: python run.py
 *
 * PHYSICAL PHONE
 *   1. Run `ipconfig` in PowerShell → find IPv4 Address under your Wi-Fi adapter
 *      e.g.  192.168.1.105
 *   2. Comment out the EMULATOR line below and uncomment + update PHONE line.
 *   3. Phone must be on the SAME Wi-Fi network as your PC.
 *   4. Start backend with:  flask run --host=0.0.0.0 --port=5000
 *
 * ─────────────────────────────────────────────────────────────────────────────
 */
object NetworkConfig {

    // ✅ EMULATOR — Android Studio AVD
    const val BASE_URL = "http://10.0.2.2:5000/"

    // ✅ PHYSICAL PHONE — replace IP with your PC's Wi-Fi IPv4 address (run `ipconfig`)
    // const val BASE_URL = "http://192.168.x.x:5000/"
}
