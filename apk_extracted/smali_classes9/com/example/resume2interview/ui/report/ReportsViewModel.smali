.class public final Lcom/example/resume2interview/ui/report/ReportsViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "ReportsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Ljava/util/List<",
        "+",
        "Lcom/example/resume2interview/ui/report/ReportItem;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/report/ReportsViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "",
        "Lcom/example/resume2interview/ui/report/ReportItem;",
        "interviewRepository",
        "Lcom/example/resume2interview/data/repository/InterviewRepository;",
        "(Lcom/example/resume2interview/data/repository/InterviewRepository;)V",
        "loadReports",
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

    .line 20
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/example/resume2interview/ui/report/ReportsViewModel;->interviewRepository:Lcom/example/resume2interview/data/repository/InterviewRepository;

    .line 22
    nop

    .line 23
    invoke-direct {p0}, Lcom/example/resume2interview/ui/report/ReportsViewModel;->loadReports()V

    .line 24
    nop

    .line 18
    return-void
.end method

.method private final loadReports()V
    .locals 2

    .line 27
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/report/ReportsViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    .line 38
    return-void
.end method
