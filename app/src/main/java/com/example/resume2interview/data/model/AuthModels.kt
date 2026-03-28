package com.example.resume2interview.data.model

data class AuthRequest(
    val email: String,
    val password: String,
    val name: String? = null
)

data class AuthResponse(
    val access_token: String,
    val token_type: String
)

data class PasswordResetRequest(
    val email: String
)

data class PasswordResetConfirm(
    val email: String,
    val code: String,
    val new_password: String
)
