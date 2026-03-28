.class public abstract Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewModelC;
.super Ljava/lang/Object;
.source "Resume2InterviewApp_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ViewModelComponent;
.implements Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/example/resume2interview/ui/profile/EditProfileViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel_HiltModules$BindsModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ViewModelModule;,
        Lcom/example/resume2interview/ui/home/HomeViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/interview/InterviewViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/auth/LoginViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/profile/ProfileViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/report/ReportDetailViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/report/ReportsViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/auth/ResetPasswordViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/auth/SignupViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/auth/SplashViewModel_HiltModules$BindsModule;,
        Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_HiltModules$BindsModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewModelC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewModelC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
