.class public final Lcom/example/resume2interview/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/resume2interview/di/AppModule;",
        "",
        "()V",
        "provideApiService",
        "Lcom/example/resume2interview/data/network/ApiService;",
        "provideAuthRepository",
        "Lcom/example/resume2interview/data/repository/AuthRepository;",
        "provideInterviewRepository",
        "Lcom/example/resume2interview/data/repository/InterviewRepository;",
        "provideResumeRepository",
        "Lcom/example/resume2interview/data/repository/ResumeRepository;",
        "apiService",
        "provideUserRepository",
        "Lcom/example/resume2interview/data/repository/UserRepository;",
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


# static fields
.field public static final INSTANCE:Lcom/example/resume2interview/di/AppModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/resume2interview/di/AppModule;

    invoke-direct {v0}, Lcom/example/resume2interview/di/AppModule;-><init>()V

    sput-object v0, Lcom/example/resume2interview/di/AppModule;->INSTANCE:Lcom/example/resume2interview/di/AppModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApiService()Lcom/example/resume2interview/data/network/ApiService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 21
    sget-object v0, Lcom/example/resume2interview/data/network/ApiClient;->INSTANCE:Lcom/example/resume2interview/data/network/ApiClient;

    invoke-virtual {v0}, Lcom/example/resume2interview/data/network/ApiClient;->getApiService()Lcom/example/resume2interview/data/network/ApiService;

    move-result-object v0

    return-object v0
.end method

.method public final provideAuthRepository()Lcom/example/resume2interview/data/repository/AuthRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 26
    new-instance v0, Lcom/example/resume2interview/data/repository/AuthRepository;

    invoke-direct {v0}, Lcom/example/resume2interview/data/repository/AuthRepository;-><init>()V

    return-object v0
.end method

.method public final provideInterviewRepository()Lcom/example/resume2interview/data/repository/InterviewRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 44
    new-instance v0, Lcom/example/resume2interview/data/repository/InterviewRepository;

    invoke-direct {v0}, Lcom/example/resume2interview/data/repository/InterviewRepository;-><init>()V

    return-object v0
.end method

.method public final provideResumeRepository(Lcom/example/resume2interview/data/network/ApiService;)Lcom/example/resume2interview/data/repository/ResumeRepository;
    .locals 1
    .param p1, "apiService"    # Lcom/example/resume2interview/data/network/ApiService;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-direct {v0, p1}, Lcom/example/resume2interview/data/repository/ResumeRepository;-><init>(Lcom/example/resume2interview/data/network/ApiService;)V

    return-object v0
.end method

.method public final provideUserRepository()Lcom/example/resume2interview/data/repository/UserRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 32
    new-instance v0, Lcom/example/resume2interview/data/repository/UserRepository;

    invoke-direct {v0}, Lcom/example/resume2interview/data/repository/UserRepository;-><init>()V

    return-object v0
.end method
