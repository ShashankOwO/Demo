package com.example.resume2interview.data.model

import com.google.gson.annotations.SerializedName

data class ProfilePhotoResponse(
    @SerializedName("profile_photo_url") val profilePhotoUrl: String?
)
