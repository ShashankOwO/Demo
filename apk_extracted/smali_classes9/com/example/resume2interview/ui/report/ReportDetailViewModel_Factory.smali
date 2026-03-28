.class public final Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;
.super Ljava/lang/Object;
.source "ReportDetailViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/ui/report/ReportDetailViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final interviewRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/InterviewRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interviewRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/InterviewRepository;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "interviewRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/InterviewRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;->interviewRepositoryProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interviewRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/InterviewRepository;",
            ">;)",
            "Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;"
        }
    .end annotation

    .line 38
    .local p0, "interviewRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/InterviewRepository;>;"
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/example/resume2interview/data/repository/InterviewRepository;)Lcom/example/resume2interview/ui/report/ReportDetailViewModel;
    .locals 1
    .param p0, "interviewRepository"    # Lcom/example/resume2interview/data/repository/InterviewRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interviewRepository"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;-><init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/ui/report/ReportDetailViewModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;->interviewRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/repository/InterviewRepository;

    invoke-static {v0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;->newInstance(Lcom/example/resume2interview/data/repository/InterviewRepository;)Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailViewModel_Factory;->get()Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    move-result-object v0

    return-object v0
.end method
