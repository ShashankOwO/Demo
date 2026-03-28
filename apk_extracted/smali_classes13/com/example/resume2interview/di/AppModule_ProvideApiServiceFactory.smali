.class public final Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideApiServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/data/network/ApiService;",
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

.method public static create()Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory;
    .locals 1

    .line 31
    invoke-static {}, Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideApiService()Lcom/example/resume2interview/data/network/ApiService;
    .locals 1

    .line 35
    sget-object v0, Lcom/example/resume2interview/di/AppModule;->INSTANCE:Lcom/example/resume2interview/di/AppModule;

    invoke-virtual {v0}, Lcom/example/resume2interview/di/AppModule;->provideApiService()Lcom/example/resume2interview/data/network/ApiService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/network/ApiService;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/data/network/ApiService;
    .locals 1

    .line 27
    invoke-static {}, Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory;->provideApiService()Lcom/example/resume2interview/data/network/ApiService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/di/AppModule_ProvideApiServiceFactory;->get()Lcom/example/resume2interview/data/network/ApiService;

    move-result-object v0

    return-object v0
.end method
