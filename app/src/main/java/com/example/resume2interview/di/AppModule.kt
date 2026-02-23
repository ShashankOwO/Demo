package com.example.resume2interview.di

import com.example.resume2interview.data.repository.AuthRepository
import com.example.resume2interview.data.repository.InterviewRepository
import com.example.resume2interview.data.repository.ResumeRepository
import com.example.resume2interview.data.repository.UserRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {


    @Provides
    @Singleton
    fun provideAuthRepository(): AuthRepository {
        return AuthRepository()
    }

    @Provides
    @Singleton
    fun provideUserRepository(): UserRepository {
        return UserRepository()
    }

    @Provides
    @Singleton
    fun provideResumeRepository(): ResumeRepository {
        return ResumeRepository()
    }
    
    @Provides
    @Singleton
    fun provideInterviewRepository(): InterviewRepository {
        return InterviewRepository()
    }
}
