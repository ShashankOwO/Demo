.class public final Lcom/example/resume2interview/ui/resume/UploadResumeFragment;
.super Lcom/example/resume2interview/ui/resume/Hilt_UploadResumeFragment;
.source "UploadResumeFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/resume/Hilt_UploadResumeFragment<",
        "Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;",
        "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadResumeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadResumeFragment.kt\ncom/example/resume2interview/ui/resume/UploadResumeFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,136:1\n106#2,15:137\n*S KotlinDebug\n*F\n+ 1 UploadResumeFragment.kt\ncom/example/resume2interview/ui/resume/UploadResumeFragment\n*L\n27#1:137,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u0013H\u0014J\u0012\u0010\u0017\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0007H\u0014J\u0008\u0010\u001c\u001a\u00020\u0013H\u0014J\u0008\u0010\u001d\u001a\u00020\u0013H\u0002J\u0008\u0010\u001e\u001a\u00020\u0013H\u0002R\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/resume/UploadResumeFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;",
        "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
        "()V",
        "pdfPickerLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "pulseAnimator",
        "Landroid/animation/ObjectAnimator;",
        "uploadTriggered",
        "",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onDestroyView",
        "",
        "setLoadingState",
        "loading",
        "setupUI",
        "showContent",
        "data",
        "",
        "showError",
        "message",
        "showLoading",
        "startPulseAnimation",
        "stopPulseAnimation",
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
.field private final pdfPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pulseAnimator:Landroid/animation/ObjectAnimator;

.field private uploadTriggered:Z

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$VKidDeMT5mrsY-H82hTMQH2AWTo(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->setupUI$lambda$1(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGJuwfoNJHFoNDhgNSI4TycChE8(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->pdfPickerLauncher$lambda$0(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xu7tjdpAV4J1eDqeCIVCZcPSbfo(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->setupUI$lambda$2(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 24
    nop

    .line 25
    sget-object v0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/resume/UploadResumeFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 24
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/resume/Hilt_UploadResumeFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 137
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 138
    new-instance v1, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 137
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 139
    const/4 v2, 0x0

    .line 137
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 140
    const/4 v3, 0x0

    .line 137
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 142
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 143
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 151
    nop

    .line 143
    new-instance v9, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->pdfPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    return-void
.end method

.method private static final pdfPickerLauncher$lambda$0(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/net/Uri;)V
    .locals 3
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/resume/UploadResumeFragment;
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI received = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPLOAD_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->uploadTriggered:Z

    .line 46
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getViewModel()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->uploadResume(Landroid/content/Context;Landroid/net/Uri;)V

    .line 49
    :cond_0
    return-void
.end method

.method private final setLoadingState(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->layoutLoading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setAlpha(F)V

    .line 122
    invoke-direct {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->stopPulseAnimation()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->layoutLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setAlpha(F)V

    .line 127
    invoke-direct {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->startPulseAnimation()V

    .line 129
    :goto_0
    return-void
.end method

.method private static final setupUI$lambda$1(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/resume/UploadResumeFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 54
    return-void
.end method

.method private static final setupUI$lambda$2(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/resume/UploadResumeFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v0, "UPLOAD_DEBUG"

    const-string v1, "Picker opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->pdfPickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private final startPulseAnimation()V
    .locals 7

    .line 101
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 102
    .local v0, "scaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 103
    .local v1, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->ivUpload:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$startPulseAnimation_u24lambda_u243":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-apply-UploadResumeFragment$startPulseAnimation$1":I
    const-wide/16 v5, 0x640

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 106
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 108
    nop

    .line 103
    .end local v3    # "$this$startPulseAnimation_u24lambda_u243":Landroid/animation/ObjectAnimator;
    .end local v4    # "$i$a$-apply-UploadResumeFragment$startPulseAnimation$1":I
    iput-object v2, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->pulseAnimator:Landroid/animation/ObjectAnimator;

    .line 109
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final stopPulseAnimation()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->pulseAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->ivUpload:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 114
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getViewModel()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected getViewModel()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->stopPulseAnimation()V

    .line 133
    invoke-super {p0}, Lcom/example/resume2interview/ui/resume/Hilt_UploadResumeFragment;->onDestroyView()V

    .line 134
    return-void
.end method

.method protected setupUI()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->startPulseAnimation()V

    .line 58
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->setLoadingState(Z)V

    .line 80
    instance-of v1, p1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 82
    .local v1, "analysis":Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "json":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "analysis_json"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    move-object v3, p0

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v3

    .line 85
    sget v4, Lcom/example/resume2interview/R$id;->action_uploadResumeFragment_to_resumeSkillsFragment:I

    .line 86
    nop

    .line 84
    invoke-virtual {v3, v4, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method protected showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->setLoadingState(Z)V

    .line 93
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_1
    return-void
.end method

.method protected showLoading()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->uploadTriggered:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->setLoadingState(Z)V

    .line 76
    :cond_0
    return-void
.end method
