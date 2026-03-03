package com.example.resume2interview.data.model

import com.google.gson.annotations.SerializedName

data class UserProfileResponse(
    @SerializedName("name") val name: String?,
    @SerializedName("email") val email: String?,
    @SerializedName("title") val title: String?,
    @SerializedName("location") val location: String?,
    @SerializedName("bio") val bio: String?,
    @SerializedName("profile_photo_url") val profilePhotoUrl: String? = null
)
