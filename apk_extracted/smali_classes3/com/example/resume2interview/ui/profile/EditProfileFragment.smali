.class public final Lcom/example/resume2interview/ui/profile/EditProfileFragment;
.super Lcom/example/resume2interview/ui/profile/Hilt_EditProfileFragment;
.source "EditProfileFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/profile/Hilt_EditProfileFragment<",
        "Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;",
        "Lcom/example/resume2interview/ui/profile/EditProfileViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProfileFragment.kt\ncom/example/resume2interview/ui/profile/EditProfileFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,38:1\n106#2,15:39\n*S KotlinDebug\n*F\n+ 1 EditProfileFragment.kt\ncom/example/resume2interview/ui/profile/EditProfileFragment\n*L\n13#1:39,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/profile/EditProfileFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;",
        "Lcom/example/resume2interview/ui/profile/EditProfileViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;",
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
.method public static synthetic $r8$lambda$673MnsWenanm-45kp4HyP0IFVTE(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->setupUI$lambda$1(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uiai9wo76_7qTCvIMlAZkN63qfo(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 10
    nop

    .line 11
    sget-object v0, Lcom/example/resume2interview/ui/profile/EditProfileFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/profile/EditProfileFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 10
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/profile/Hilt_EditProfileFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 13
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 39
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 40
    new-instance v1, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 39
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 41
    const/4 v2, 0x0

    .line 39
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 42
    const/4 v3, 0x0

    .line 39
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 44
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 45
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 53
    nop

    .line 45
    new-instance v9, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 13
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 10
    return-void
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/EditProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 18
    return-void
.end method

.method private static final setupUI$lambda$1(Lcom/example/resume2interview/ui/profile/EditProfileFragment;Landroid/view/View;)V
    .locals 7
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/EditProfileFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getViewModel()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etJobTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etLocation:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etBio:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;->saveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getViewModel()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected getViewModel()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/EditProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/profile/EditProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->btnSave:Landroid/widget/TextView;

    new-instance v1, Lcom/example/resume2interview/ui/profile/EditProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/EditProfileFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/profile/EditProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 32
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

    .line 33
    .local v0, "success":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 36
    :cond_2
    return-void
.end method
