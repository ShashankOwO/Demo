.class public final Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "UploadResumeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
        "resumeRepository",
        "Lcom/example/resume2interview/data/repository/ResumeRepository;",
        "(Lcom/example/resume2interview/data/repository/ResumeRepository;)V",
        "uploadResume",
        "",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
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
.field private final resumeRepository:Lcom/example/resume2interview/data/repository/ResumeRepository;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/ResumeRepository;)V
    .locals 2
    .param p1, "resumeRepository"    # Lcom/example/resume2interview/data/repository/ResumeRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resumeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->resumeRepository:Lcom/example/resume2interview/data/repository/ResumeRepository;

    .line 25
    nop

    .line 28
    new-instance v0, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->setState(Lcom/example/resume2interview/utils/UiState;)V

    .line 29
    nop

    .line 21
    return-void
.end method

.method public static final synthetic access$getResumeRepository$p(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;)Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1
    .param p0, "$this"    # Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    .line 20
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->resumeRepository:Lcom/example/resume2interview/data/repository/ResumeRepository;

    return-object v0
.end method

.method public static final synthetic access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V
    .locals 0
    .param p0, "$this"    # Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;
    .param p1, "state"    # Lcom/example/resume2interview/utils/UiState;

    .line 20
    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->setState(Lcom/example/resume2interview/utils/UiState;)V

    return-void
.end method


# virtual methods
.method public final uploadResume(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    if-nez p2, :cond_0

    .line 33
    const-string v0, "UPLOAD_DEBUG"

    const-string v1, "uploadResume called with null URI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v1, "No file selected"

    invoke-direct {v0, v1}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->setState(Lcom/example/resume2interview/utils/UiState;)V

    .line 35
    return-void

    .line 38
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, p0, v2}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 110
    return-void
.end method
