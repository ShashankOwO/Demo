.class public final Lcom/example/resume2interview/ui/home/InterviewProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "InterviewProgressFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\tH\u0016J\u001a\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/home/InterviewProgressFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;",
        "binding",
        "getBinding",
        "()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;",
        "animateProgressBar",
        "",
        "bar",
        "Landroid/widget/ProgressBar;",
        "target",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
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
.field private _binding:Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;


# direct methods
.method public static synthetic $r8$lambda$HggrkZtRwsSQDz0Ropa2Oj94M5A(Lcom/example/resume2interview/ui/home/InterviewProgressFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->onViewCreated$lambda$0(Lcom/example/resume2interview/ui/home/InterviewProgressFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final animateProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 4
    .param p1, "bar"    # Landroid/widget/ProgressBar;
    .param p2, "target"    # I

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    const-string v1, "progress"

    filled-new-array {v0, p2}, [I

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "$this$animateProgressBar_u24lambda_u241":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$a$-apply-InterviewProgressFragment$animateProgressBar$1":I
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 47
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 48
    nop

    .line 44
    .end local v0    # "$this$animateProgressBar_u24lambda_u241":Landroid/animation/ObjectAnimator;
    .end local v1    # "$i$a$-apply-InterviewProgressFragment$animateProgressBar$1":I
    nop

    .line 49
    return-void
.end method

.method private final getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/example/resume2interview/ui/home/InterviewProgressFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/home/InterviewProgressFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 32
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    .line 24
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    .line 54
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/home/InterviewProgressFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/home/InterviewProgressFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbCommunication:Landroid/widget/ProgressBar;

    const-string v1, "pbCommunication"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->animateProgressBar(Landroid/widget/ProgressBar;I)V

    .line 36
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbProblemSolving:Landroid/widget/ProgressBar;

    const-string v1, "pbProblemSolving"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->animateProgressBar(Landroid/widget/ProgressBar;I)V

    .line 37
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbSystemDesign:Landroid/widget/ProgressBar;

    const-string v1, "pbSystemDesign"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->animateProgressBar(Landroid/widget/ProgressBar;I)V

    .line 38
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbTechnical:Landroid/widget/ProgressBar;

    const-string v1, "pbTechnical"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->animateProgressBar(Landroid/widget/ProgressBar;I)V

    .line 39
    invoke-direct {p0}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbBehavioral:Landroid/widget/ProgressBar;

    const-string v1, "pbBehavioral"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/example/resume2interview/ui/home/InterviewProgressFragment;->animateProgressBar(Landroid/widget/ProgressBar;I)V

    .line 40
    return-void
.end method
