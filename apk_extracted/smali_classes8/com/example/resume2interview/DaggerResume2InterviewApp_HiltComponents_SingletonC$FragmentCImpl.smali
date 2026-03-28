.class final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;
.super Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$FragmentC;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "fragmentParam"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$FragmentC;-><init>()V

    .line 351
    iput-object p0, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;

    .line 356
    iput-object p1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 357
    iput-object p2, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 358
    iput-object p3, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 361
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;->getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public injectEditProfileFragment(Lcom/example/resume2interview/ui/profile/EditProfileFragment;)V
    .locals 0
    .param p1, "editProfileFragment"    # Lcom/example/resume2interview/ui/profile/EditProfileFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editProfileFragment"
        }
    .end annotation

    .line 393
    return-void
.end method

.method public injectForgotPasswordFragment(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;)V
    .locals 0
    .param p1, "forgotPasswordFragment"    # Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forgotPasswordFragment"
        }
    .end annotation

    .line 365
    return-void
.end method

.method public injectHomeFragment(Lcom/example/resume2interview/ui/home/HomeFragment;)V
    .locals 0
    .param p1, "homeFragment"    # Lcom/example/resume2interview/ui/home/HomeFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFragment"
        }
    .end annotation

    .line 385
    return-void
.end method

.method public injectInterviewFragment(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V
    .locals 0
    .param p1, "interviewFragment"    # Lcom/example/resume2interview/ui/interview/InterviewFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interviewFragment"
        }
    .end annotation

    .line 389
    return-void
.end method

.method public injectLoginFragment(Lcom/example/resume2interview/ui/auth/LoginFragment;)V
    .locals 0
    .param p1, "loginFragment"    # Lcom/example/resume2interview/ui/auth/LoginFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginFragment"
        }
    .end annotation

    .line 369
    return-void
.end method

.method public injectProfileFragment(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V
    .locals 0
    .param p1, "profileFragment"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileFragment"
        }
    .end annotation

    .line 397
    return-void
.end method

.method public injectReportDetailFragment(Lcom/example/resume2interview/ui/report/ReportDetailFragment;)V
    .locals 0
    .param p1, "reportDetailFragment"    # Lcom/example/resume2interview/ui/report/ReportDetailFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reportDetailFragment"
        }
    .end annotation

    .line 401
    return-void
.end method

.method public injectReportsFragment(Lcom/example/resume2interview/ui/report/ReportsFragment;)V
    .locals 0
    .param p1, "reportsFragment"    # Lcom/example/resume2interview/ui/report/ReportsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reportsFragment"
        }
    .end annotation

    .line 405
    return-void
.end method

.method public injectResetPasswordFragment(Lcom/example/resume2interview/ui/auth/ResetPasswordFragment;)V
    .locals 0
    .param p1, "resetPasswordFragment"    # Lcom/example/resume2interview/ui/auth/ResetPasswordFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resetPasswordFragment"
        }
    .end annotation

    .line 373
    return-void
.end method

.method public injectResumeSkillsFragment(Lcom/example/resume2interview/ui/resume/ResumeSkillsFragment;)V
    .locals 0
    .param p1, "resumeSkillsFragment"    # Lcom/example/resume2interview/ui/resume/ResumeSkillsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resumeSkillsFragment"
        }
    .end annotation

    .line 409
    return-void
.end method

.method public injectSignupFragment(Lcom/example/resume2interview/ui/auth/SignupFragment;)V
    .locals 0
    .param p1, "signupFragment"    # Lcom/example/resume2interview/ui/auth/SignupFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signupFragment"
        }
    .end annotation

    .line 377
    return-void
.end method

.method public injectSplashFragment(Lcom/example/resume2interview/ui/auth/SplashFragment;)V
    .locals 0
    .param p1, "splashFragment"    # Lcom/example/resume2interview/ui/auth/SplashFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splashFragment"
        }
    .end annotation

    .line 381
    return-void
.end method

.method public injectUploadResumeFragment(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;)V
    .locals 0
    .param p1, "uploadResumeFragment"    # Lcom/example/resume2interview/ui/resume/UploadResumeFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadResumeFragment"
        }
    .end annotation

    .line 413
    return-void
.end method

.method public viewWithFragmentComponentBuilder()Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 6

    .line 422
    new-instance v0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
