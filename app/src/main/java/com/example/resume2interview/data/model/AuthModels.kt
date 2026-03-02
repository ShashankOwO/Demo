package com.example.resume2interview.data.model

data class AuthRequest(
    val email: String,
    val password: String
)

data class AuthResponse(
    val access_token: String,
    val token_type: String
)
