.class public final Lcom/example/resume2interview/ui/auth/LoginFragment;
.super Lcom/example/resume2interview/ui/auth/Hilt_LoginFragment;
.source "LoginFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/auth/Hilt_LoginFragment<",
        "Lcom/example/resume2interview/databinding/FragmentLoginBinding;",
        "Lcom/example/resume2interview/ui/auth/LoginViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/example/resume2interview/ui/auth/LoginFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n106#2,15:69\n1#3:84\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/example/resume2interview/ui/auth/LoginFragment\n*L\n18#1:69,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/auth/LoginFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentLoginBinding;",
        "Lcom/example/resume2interview/ui/auth/LoginViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/auth/LoginViewModel;",
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
.method public static synthetic $r8$lambda$RswH01lpJqdD7fB71ryXMYF4u7c(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/auth/LoginFragment;->setupUI$lambda$7(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jxJ4GYdzLaDMF6-0S9jgSnSGsvA(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/auth/LoginFragment;->setupUI$lambda$6(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3z-mlnGRG2ZpZ8XK3g1Rfj7GeI(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/resume2interview/ui/auth/LoginFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xFbWx0jZTiFKIu7O6wHcc3cZwp0(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/auth/LoginFragment;->setupUI$lambda$8(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 15
    nop

    .line 16
    sget-object v0, Lcom/example/resume2interview/ui/auth/LoginFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/auth/LoginFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 15
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/auth/Hilt_LoginFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 18
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 69
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 70
    new-instance v1, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 69
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 71
    const/4 v2, 0x0

    .line 69
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 72
    const/4 v3, 0x0

    .line 69
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 74
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 75
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/auth/LoginViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 83
    nop

    .line 75
    new-instance v9, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/auth/LoginFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/auth/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 15
    return-void
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;Z)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/LoginFragment;
    .param p2, "hasFocus"    # Z

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object p1, p1, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->layoutPassword:Landroid/widget/FrameLayout;

    .line 25
    if-eqz p2, :cond_0

    sget v0, Lcom/example/resume2interview/R$drawable;->bg_input_focused:I

    goto :goto_0

    .line 26
    :cond_0
    sget v0, Lcom/example/resume2interview/R$drawable;->bg_input_field:I

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 28
    return-void
.end method

.method private static final setupUI$lambda$6(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 10
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/LoginFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 34
    move-object v2, v0

    .line 84
    .local v2, "$this$setupUI_u24lambda_u246_u24lambda_u241":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .line 34
    .local v4, "$i$a$-apply-LoginFragment$setupUI$2$fadeOut$1":I
    const-wide/16 v5, 0x78

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .end local v2    # "$this$setupUI_u24lambda_u246_u24lambda_u241":Landroid/animation/ObjectAnimator;
    .end local v4    # "$i$a$-apply-LoginFragment$setupUI$2$fadeOut$1":I
    nop

    .line 35
    .local v0, "fadeOut":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 36
    move-object v3, v2

    .line 84
    .local v3, "$this$setupUI_u24lambda_u246_u24lambda_u242":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .line 36
    .local v4, "$i$a$-apply-LoginFragment$setupUI$2$fadeIn$1":I
    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 35
    .end local v3    # "$this$setupUI_u24lambda_u246_u24lambda_u242":Landroid/animation/ObjectAnimator;
    .end local v4    # "$i$a$-apply-LoginFragment$setupUI$2$fadeIn$1":I
    nop

    .line 37
    .local v2, "fadeIn":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v3, v3, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_2

    const-string v6, "scaleX"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 38
    move-object v5, v3

    .line 84
    .local v5, "$this$setupUI_u24lambda_u246_u24lambda_u243":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .line 38
    .local v6, "$i$a$-apply-LoginFragment$setupUI$2$scaleX$1":I
    const-wide/16 v7, 0x140

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    .end local v5    # "$this$setupUI_u24lambda_u246_u24lambda_u243":Landroid/animation/ObjectAnimator;
    .end local v6    # "$i$a$-apply-LoginFragment$setupUI$2$scaleX$1":I
    nop

    .line 39
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v5, v5, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    new-array v6, v4, [F

    fill-array-data v6, :array_3

    const-string v9, "scaleY"

    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 40
    move-object v6, v5

    .line 84
    .local v6, "$this$setupUI_u24lambda_u246_u24lambda_u244":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x0

    .line 40
    .local v9, "$i$a$-apply-LoginFragment$setupUI$2$scaleY$1":I
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    .end local v6    # "$this$setupUI_u24lambda_u246_u24lambda_u244":Landroid/animation/ObjectAnimator;
    .end local v9    # "$i$a$-apply-LoginFragment$setupUI$2$scaleY$1":I
    nop

    .line 42
    .local v5, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .local v6, "$this$setupUI_u24lambda_u246_u24lambda_u245":Landroid/animation/AnimatorSet;
    const/4 v7, 0x0

    .line 43
    .local v7, "$i$a$-apply-LoginFragment$setupUI$2$1":I
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    aput-object v3, v8, v1

    aput-object v5, v8, v4

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 44
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 45
    nop

    .line 42
    .end local v6    # "$this$setupUI_u24lambda_u246_u24lambda_u245":Landroid/animation/AnimatorSet;
    .end local v7    # "$i$a$-apply-LoginFragment$setupUI$2$1":I
    nop

    .line 47
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v4, v4, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "pass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getViewModel()Lcom/example/resume2interview/ui/auth/LoginViewModel;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/example/resume2interview/ui/auth/LoginViewModel;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_1
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final setupUI$lambda$7(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/LoginFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_loginFragment_to_signupFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 54
    return-void
.end method

.method private static final setupUI$lambda$8(Lcom/example/resume2interview/ui/auth/LoginFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/LoginFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/example/resume2interview/R$id;->action_loginFragment_to_forgotPasswordFragment:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected getViewModel()Lcom/example/resume2interview/ui/auth/LoginViewModel;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/example/resume2interview/ui/auth/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/auth/LoginViewModel;

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getViewModel()Lcom/example/resume2interview/ui/auth/LoginViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->etPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/auth/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/auth/LoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->tvSignup:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/resume2interview/ui/auth/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentLoginBinding;->tvForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/LoginFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/resume2interview/ui/auth/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 63
    .local v0, "success":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 64
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lcom/example/resume2interview/R$id;->action_loginFragment_to_homeFragment:I

    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->navigate(I)V

    .line 66
    :cond_2
    return-void
.end method
