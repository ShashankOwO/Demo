.class public final Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;
.super Lcom/example/resume2interview/ui/auth/Hilt_ForgotPasswordFragment;
.source "ForgotPasswordFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/auth/Hilt_ForgotPasswordFragment<",
        "Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;",
        "Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgotPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgotPasswordFragment.kt\ncom/example/resume2interview/ui/auth/ForgotPasswordFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,34:1\n106#2,15:35\n*S KotlinDebug\n*F\n+ 1 ForgotPasswordFragment.kt\ncom/example/resume2interview/ui/auth/ForgotPasswordFragment\n*L\n14#1:35,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;",
        "Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;",
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
.method public static synthetic $r8$lambda$DegmeDBBsyCdXoCm4r3XdNvnM4w(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->setupUI$lambda$1(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2sduuU8UGIXsAKCLja0BjThSM0(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 11
    nop

    .line 12
    sget-object v0, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 11
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/auth/Hilt_ForgotPasswordFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 14
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 35
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 36
    new-instance v1, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 35
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 37
    const/4 v2, 0x0

    .line 35
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 38
    const/4 v3, 0x0

    .line 35
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 40
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 41
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 49
    nop

    .line 41
    new-instance v9, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

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
    iput-object v0, p0, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 11
    return-void
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->getViewModel()Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;->sendResetCode(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private static final setupUI$lambda$1(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 24
    return-void
.end method


# virtual methods
.method protected getViewModel()Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->getViewModel()Lcom/example/resume2interview/ui/auth/ForgotPasswordViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->btnSendCode:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/auth/ForgotPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 28
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

    .line 29
    .local v0, "success":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 30
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lcom/example/resume2interview/R$id;->action_forgotPasswordFragment_to_resetPasswordFragment:I

    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->navigate(I)V

    .line 32
    :cond_2
    return-void
.end method
