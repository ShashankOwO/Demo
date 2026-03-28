.class public final Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;
.super Ljava/lang/Object;
.source "ResumeRepository_Factory.java"

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
.field private final apiProvider:Ljavax/inject/Provider;
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
            "apiProvider"
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

    .line 27
    .local p1, "apiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/network/ApiService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;->apiProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/network/ApiService;",
            ">;)",
            "Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;"
        }
    .end annotation

    .line 37
    .local p0, "apiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/network/ApiService;>;"
    new-instance v0, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1
    .param p0, "api"    # Lcom/example/resume2interview/data/network/ApiService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "api"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/data/repository/ResumeRepository;-><init>(Lcom/example/resume2interview/data/network/ApiService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;->apiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/network/ApiService;

    invoke-static {v0}, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;->newInstance(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/data/repository/ResumeRepository_Factory;->get()Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v0

    return-object v0
.end method
