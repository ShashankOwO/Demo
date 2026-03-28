.class final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final id:I

.field private final singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewModelCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;I)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "viewModelCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;
    .param p4, "id"    # I
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
            "viewModelCImpl",
            "id"
        }
    .end annotation

    .line 571
    .local p0, "this":Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;, "Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 573
    iput-object p2, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 574
    iput-object p3, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;

    .line 575
    iput p4, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    .line 576
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 581
    .local p0, "this":Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;, "Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider<TT;>;"
    iget v0, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    .line 621
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 619
    :pswitch_0
    new-instance v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideResumeRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;-><init>(Lcom/example/resume2interview/data/repository/ResumeRepository;)V

    return-object v0

    .line 616
    :pswitch_1
    new-instance v0, Lcom/example/resume2interview/ui/auth/SplashViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideAuthRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/SplashViewModel;-><init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V

    return-object v0

    .line 613
    :pswitch_2
    new-instance v0, Lcom/example/resume2interview/ui/auth/SignupViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideAuthRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/SignupViewModel;-><init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V

    return-object v0

    .line 610
    :pswitch_3
    new-instance v0, Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideResumeRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;-><init>(Lcom/example/resume2interview/data/repository/ResumeRepository;)V

    return-object v0

    .line 607
    :pswitch_4
    new-instance v0, Lcom/example/resume2interview/ui/auth/ResetPasswordViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideAuthRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/ResetPasswordViewModel;-><init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V

    return-object v0

    .line 604
    :pswitch_5
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportsViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideInterviewRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/InterviewRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/report/ReportsViewModel;-><init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V

    return-object v0

    .line 601
    :pswitch_6
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideInterviewRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/InterviewRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;-><init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V

    return-object v0

    .line 598
    :pswitch_7
    new-instance v0, Lcom/example/resume2interview/ui/profile/ProfileViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideUserRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/UserRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/profile/ProfileViewModel;-><init>(Lcom/example/resume2interview/data/repository/UserRepository;)V

    return-object v0

    .line 595
    :pswitch_8
    new-instance v0, Lcom/example/resume2interview/ui/auth/LoginViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideAuthRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/LoginViewModel;-><init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V

    return-object v0

    .line 592
    :pswitch_9
    new-instance v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideInterviewRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/InterviewRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;-><init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V

    return-object v0

    .line 589
    :pswitch_a
    new-instance v0, Lcom/example/resume2interview/ui/home/HomeViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideUserRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/UserRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/home/HomeViewModel;-><init>(Lcom/example/resume2interview/data/repository/UserRepository;)V

    return-object v0

    .line 586
    :pswitch_b
    new-instance v0, Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideAuthRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;-><init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V

    return-object v0

    .line 583
    :pswitch_c
    new-instance v0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    iget-object v1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetprovideUserRepositoryProvider(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/internal/Provider;

    move-result-object v1

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/data/repository/UserRepository;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;-><init>(Lcom/example/resume2interview/data/repository/UserRepository;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
