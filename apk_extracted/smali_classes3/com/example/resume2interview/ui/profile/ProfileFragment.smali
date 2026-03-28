.class public final Lcom/example/resume2interview/ui/profile/ProfileFragment;
.super Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;
.source "ProfileFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<",
        "Lcom/example/resume2interview/databinding/FragmentProfileBinding;",
        "Lcom/example/resume2interview/ui/profile/ProfileViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\ncom/example/resume2interview/ui/profile/ProfileFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,48:1\n106#2,15:49\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\ncom/example/resume2interview/ui/profile/ProfileFragment\n*L\n14#1:49,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/profile/ProfileFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentProfileBinding;",
        "Lcom/example/resume2interview/ui/profile/ProfileViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/profile/ProfileViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "setupUI",
        "",
        "showContent",
        "data",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1fgtBehGb2XDpWE6B5JiUm1tRaI(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->setupUI$lambda$4(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRFOvfUsHTNzkVK3j4XPSSy3Wrc(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->setupUI$lambda$3(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVdYkrPhyHrUF5kDnvs4gjX-3S4(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->setupUI$lambda$1(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoHbiq63NISUJCABc9knN8nhZOA(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->setupUI$lambda$2(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7_T2WMTJbOt7X8DnKo7FYLnRq4(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 11
    nop

    .line 12
    sget-object v0, Lcom/example/resume2interview/ui/profile/ProfileFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/profile/ProfileFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 11
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 14
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 49
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 50
    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 49
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 51
    const/4 v2, 0x0

    .line 49
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 52
    const/4 v3, 0x0

    .line 49
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 54
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 55
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/profile/ProfileViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 63
    nop

    .line 55
    new-instance v9, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/profile/ProfileFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 14
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/ProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 11
    return-void
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_profileFragment_to_editProfileFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 19
    return-void
.end method

.method private static final setupUI$lambda$1(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_profileFragment_to_loginFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 23
    return-void
.end method

.method private static final setupUI$lambda$2(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_profileFragment_to_notificationsFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 27
    return-void
.end method

.method private static final setupUI$lambda$3(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_profileFragment_to_preferencesFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 31
    return-void
.end method

.method private static final setupUI$lambda$4(Lcom/example/resume2interview/ui/profile/ProfileFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/ProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_profileFragment_to_privacyPolicyFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getViewModel()Lcom/example/resume2interview/ui/profile/ProfileViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected getViewModel()Lcom/example/resume2interview/ui/profile/ProfileViewModel;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/ProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/profile/ProfileViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->btnEditProfile:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->btnSignOut:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvNotifications:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvPreferences:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment$$ExternalSyntheticLambda4;-><init>(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lcom/example/resume2interview/ui/profile/UserProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/ui/profile/UserProfile;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 41
    .local v0, "user":Lcom/example/resume2interview/ui/profile/UserProfile;
    :cond_1
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/profile/UserProfile;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/profile/UserProfile;->getEmail()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatInterviews:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/profile/UserProfile;->getInterviewsCompleted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/profile/UserProfile;->getAvgScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/ProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatResumes:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/profile/UserProfile;->getResumesUploaded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
