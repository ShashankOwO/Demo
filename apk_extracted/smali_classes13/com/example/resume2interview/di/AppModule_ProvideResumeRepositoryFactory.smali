.class public final Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideResumeRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/data/repository/ResumeRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/network/ApiService;",
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
            "apiServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/network/ApiService;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "apiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/network/ApiService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;->apiServiceProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/network/ApiService;",
            ">;)",
            "Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;"
        }
    .end annotation

    .line 40
    .local p0, "apiServiceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/network/ApiService;>;"
    new-instance v0, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideResumeRepository(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1
    .param p0, "apiService"    # Lcom/example/resume2interview/data/network/ApiService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiService"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/example/resume2interview/di/AppModule;->INSTANCE:Lcom/example/resume2interview/di/AppModule;

    invoke-virtual {v0, p0}, Lcom/example/resume2interview/di/AppModule;->provideResumeRepository(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/repository/ResumeRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;->apiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/network/ApiService;

    invoke-static {v0}, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;->provideResumeRepository(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/example/resume2interview/di/AppModule_ProvideResumeRepositoryFactory;->get()Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v0

    return-object v0
.end method
