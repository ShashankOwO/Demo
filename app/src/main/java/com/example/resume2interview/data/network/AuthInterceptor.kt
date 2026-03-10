package com.example.resume2interview.data.network

import com.example.resume2interview.utils.TokenManager
import kotlinx.coroutines.runBlocking
import okhttp3.Interceptor
import okhttp3.Response
import javax.inject.Inject

class AuthInterceptor @Inject constructor(
    private val tokenManager: TokenManager
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        val requestBuilder = chain.request().newBuilder()

        // Fetch token synchronously from memory for OkHttp interceptor
        val token = tokenManager.getCachedToken()
        if (!token.isNullOrEmpty()) {
            requestBuilder.addHeader("Authorization", "Bearer $token")
        }

        val request = requestBuilder.build()
        val response = chain.proceed(request)

        if (response.code == 401) {
            runBlocking {
                tokenManager.clearToken()
                tokenManager.triggerUnauthorized()
            }
        }

        return response
    }
}
