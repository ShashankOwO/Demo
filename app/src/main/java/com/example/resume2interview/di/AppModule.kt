package com.example.resume2interview.di

import com.example.resume2interview.data.network.ApiService
import com.example.resume2interview.data.network.AuthInterceptor
import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.data.repository.UserRepository
import com.example.resume2interview.utils.TokenManager
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    private const val BASE_URL = "http://10.0.2.2:5000/"

    @Provides
    @Singleton
    fun provideAuthInterceptor(tokenManager: TokenManager): AuthInterceptor {
        return AuthInterceptor(tokenManager)
    }

    @Provides
    @Singleton
    fun provideOkHttpClient(authInterceptor: AuthInterceptor): OkHttpClient {
        val loggingInterceptor = HttpLoggingInterceptor().apply {
            level = HttpLoggingInterceptor.Level.BODY
        }
        return OkHttpClient.Builder()
            .addInterceptor(loggingInterceptor)
            .addInterceptor(authInterceptor)
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .build()
    }

    @Provides
    @Singleton
    fun provideRetrofit(okHttpClient: OkHttpClient): Retrofit {
        return Retrofit.Builder()
            .baseUrl(BASE_URL)
            .client(okHttpClient)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }

    @Provides
    @Singleton
    fun provideApiService(retrofit: Retrofit): ApiService {
        return retrofit.create(ApiService::class.java)
    }

    @Provides
    @Singleton
    fun provideAuthRepository(apiService: ApiService, tokenManager: TokenManager): AuthRepository {
        return AuthRepository(apiService, tokenManager)
    }

    @Provides
    @Singleton
    fun provideUserRepository(): UserRepository {
        return UserRepository()
    }

    @Provides
    @Singleton
    fun provideResumeRepository(apiService: ApiService): ResumeRepository {
        return ResumeRepository(apiService)
    }

    @Provides
    @Singleton
    fun provideInterviewRepository(): InterviewRepository {
        return InterviewRepository()
    }
}
