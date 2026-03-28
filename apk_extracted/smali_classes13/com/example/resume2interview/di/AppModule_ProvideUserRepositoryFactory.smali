.class public final Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideUserRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/data/repository/UserRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;
    .locals 1

    .line 31
    invoke-static {}, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideUserRepository()Lcom/example/resume2interview/data/repository/UserRepository;
    .locals 1

    .line 35
    sget-object v0, Lcom/example/resume2interview/di/AppModule;->INSTANCE:Lcom/example/resume2interview/di/AppModule;

    invoke-virtual {v0}, Lcom/example/resume2interview/di/AppModule;->provideUserRepository()Lcom/example/resume2interview/data/repository/UserRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/repository/UserRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/data/repository/UserRepository;
    .locals 1

    .line 27
    invoke-static {}, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;->provideUserRepository()Lcom/example/resume2interview/data/repository/UserRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;->get()Lcom/example/resume2interview/data/repository/UserRepository;

    move-result-object v0

    return-object v0
.end method
