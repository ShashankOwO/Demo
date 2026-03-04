package com.example.resume2interview.data.repository

import com.example.resume2interview.data.model.AnalyticsSummary
import com.example.resume2interview.data.model.LastFiveEntry
import com.example.resume2interview.data.model.SkillPracticed
import com.example.resume2interview.data.network.ApiService
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class AnalyticsRepository @Inject constructor(
    private val api: ApiService
) {

    /** GET /analytics/summary → average, highest, lowest, trend */
    suspend fun getSummary(): Result<AnalyticsSummary> = runCatching {
        val response = api.getAnalyticsSummary()
        if (response.isSuccessful && response.body() != null) {
            response.body()!!
        } else {
            error("Analytics summary failed: ${response.code()}")
        }
    }

    /** GET /analytics/last-five → last 5 interview scores with dates */
    suspend fun getLastFive(): Result<List<LastFiveEntry>> = runCatching {
        val response = api.getLastFive()
        if (response.isSuccessful && response.body() != null) {
            response.body()!!
        } else {
            error("Last-five failed: ${response.code()}")
        }
    }

    /** GET /analytics/skills-practiced → per-category session count */
    suspend fun getSkillsPracticed(): Result<List<SkillPracticed>> = runCatching {
        val response = api.getSkillsPracticed()
        if (response.isSuccessful && response.body() != null) {
            response.body()!!
        } else {
            error("Skills practiced failed: ${response.code()}")
        }
    }

    /** GET /analytics/category-performance → category performance and weakest/strongest */
    suspend fun getCategoryPerformance(): Result<com.example.resume2interview.data.model.CategoryPerformanceResponse> = runCatching {
        val response = api.getCategoryPerformance()
        if (response.isSuccessful && response.body() != null) {
            response.body()!!
        } else {
            error("Category performance failed: ${response.code()}")
        }
    }
}
