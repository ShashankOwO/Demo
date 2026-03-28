.class public final Lcom/example/resume2interview/ui/interview/InterviewFragment;
.super Lcom/example/resume2interview/ui/interview/Hilt_InterviewFragment;
.source "InterviewFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/interview/Hilt_InterviewFragment<",
        "Lcom/example/resume2interview/databinding/FragmentInterviewBinding;",
        "Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterviewFragment.kt\ncom/example/resume2interview/ui/interview/InterviewFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,83:1\n106#2,15:84\n*S KotlinDebug\n*F\n+ 1 InterviewFragment.kt\ncom/example/resume2interview/ui/interview/InterviewFragment\n*L\n15#1:84,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/interview/InterviewFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentInterviewBinding;",
        "Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
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
.method public static synthetic $r8$lambda$JzwdbI3y2-k7CCfG6Brj94Bl8ws(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OqnZY-BFzydT5Hbl5J_PYuo-wjc(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->setupUI$lambda$1(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z96AhXBly1rEKfuF7Ks3DdwXRxM(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->setupUI$lambda$2(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 12
    nop

    .line 13
    sget-object v0, Lcom/example/resume2interview/ui/interview/InterviewFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/interview/InterviewFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 12
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/interview/Hilt_InterviewFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 15
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 84
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 85
    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 84
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 86
    const/4 v2, 0x0

    .line 84
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 87
    const/4 v3, 0x0

    .line 84
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 90
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 98
    nop

    .line 90
    new-instance v9, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/interview/InterviewFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 15
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 12
    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/example/resume2interview/ui/interview/InterviewFragment;)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;
    .locals 1
    .param p0, "$this"    # Lcom/example/resume2interview/ui/interview/InterviewFragment;

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    return-object v0
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/interview/InterviewFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 21
    return-void
.end method

.method private static final setupUI$lambda$1(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/interview/InterviewFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->toggleRecording()V

    .line 26
    return-void
.end method

.method private static final setupUI$lambda$2(Lcom/example/resume2interview/ui/interview/InterviewFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/interview/InterviewFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->nextQuestion()V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnMic:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnNext:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isRecording()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$4;

    invoke-direct {v2, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$4;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 47
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->getTimerText()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;

    invoke-direct {v2, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 52
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewModel()Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isFinished()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;

    invoke-direct {v2, p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;-><init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/example/resume2interview/ui/interview/InterviewFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 62
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p1, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 66
    .local v0, "uiData":Lcom/example/resume2interview/ui/interview/InterviewUiData;
    :cond_1
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvQuestionCounter:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getCurrentQuestionIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getTotalQuestions()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Question "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvQuestion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getQuestionText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u201c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u201d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvTimer:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getTimerText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getTotalQuestions()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 73
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getCurrentQuestionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getCurrentQuestionIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->getTotalQuestions()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnNext:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "Finish Interview"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnNext:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "Next Question"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    return-void
.end method
