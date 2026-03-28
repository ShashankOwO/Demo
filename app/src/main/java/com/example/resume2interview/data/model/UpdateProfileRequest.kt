package com.example.resume2interview.data.model

import com.google.gson.annotations.SerializedName

data class UpdateProfileRequest(
    @SerializedName("name") val name: String? = null,
    @SerializedName("email") val email: String? = null,
    @SerializedName("title") val title: String? = null,
    @SerializedName("location") val location: String? = null,
    @SerializedName("bio") val bio: String? = null,
    @SerializedName("preferred_difficulty") val preferredDifficulty: String? = null
)

