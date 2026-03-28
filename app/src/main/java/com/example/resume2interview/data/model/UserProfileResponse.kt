package com.example.resume2interview.data.model

import com.google.gson.annotations.SerializedName

data class UserProfileResponse(
    @SerializedName("name")              val name: String?,
    @SerializedName("email")             val email: String?,
    @SerializedName("title")             val title: String?,
    @SerializedName("location")          val location: String?,
    @SerializedName("bio")               val bio: String?,
    @SerializedName("profile_photo_url") val profilePhotoUrl: String?  = null,
    // Additional fields returned by GET /profile/me
    @SerializedName("skills_json")       val skillsJson: String?        = null,
    @SerializedName("experience_level")  val experienceLevel: String?   = null,
    @SerializedName("target_role")       val targetRole: String?        = null,
    @SerializedName("experience_years")      val experienceYears: Int?        = null,
    @SerializedName("preferred_difficulty")   val preferredDifficulty: String? = null,
)
