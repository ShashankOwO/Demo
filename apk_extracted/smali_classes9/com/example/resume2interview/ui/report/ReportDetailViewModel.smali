.class public final Lcom/example/resume2interview/ui/report/ReportDetailViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "ReportDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Lcom/example/resume2interview/ui/report/ReportDetailUiData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/report/ReportDetailViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "Lcom/example/resume2interview/ui/report/ReportDetailUiData;",
        "interviewRepository",
        "Lcom/example/resume2interview/data/repository/InterviewRepository;",
        "(Lcom/example/resume2interview/data/repository/InterviewRepository;)V",
        "loadReportDetail",
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
.field private final interviewRepository:Lcom/example/resume2interview/data/repository/InterviewRepository;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V
    .locals 1
    .param p1, "interviewRepository"    # Lcom/example/resume2interview/data/repository/InterviewRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "interviewRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;->interviewRepository:Lcom/example/resume2interview/data/repository/InterviewRepository;

    .line 25
    nop

    .line 26
    invoke-direct {p0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;->loadReportDetail()V

    .line 27
    nop

    .line 21
    return-void
.end method

.method private final loadReportDetail()V
    .locals 2

    .line 30
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel$loadReportDetail$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel$loadReportDetail$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    .line 43
    return-void
.end method
