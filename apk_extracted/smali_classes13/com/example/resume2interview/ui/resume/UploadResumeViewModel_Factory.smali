.class public final Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;
.super Ljava/lang/Object;
.source "UploadResumeViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final resumeRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/ResumeRepository;",
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
            "resumeRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/ResumeRepository;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "resumeRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/ResumeRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;->resumeRepositoryProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resumeRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/ResumeRepository;",
            ">;)",
            "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;"
        }
    .end annotation

    .line 38
    .local p0, "resumeRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/ResumeRepository;>;"
    new-instance v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/example/resume2interview/data/repository/ResumeRepository;)Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;
    .locals 1
    .param p0, "resumeRepository"    # Lcom/example/resume2interview/data/repository/ResumeRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resumeRepository"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;-><init>(Lcom/example/resume2interview/data/repository/ResumeRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;->resumeRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-static {v0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;->newInstance(Lcom/example/resume2interview/data/repository/ResumeRepository;)Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel_Factory;->get()Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    move-result-object v0

    return-object v0
.end method
