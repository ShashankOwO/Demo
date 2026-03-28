.class final Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvideUserRepositoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;
    .locals 1

    sget-object v0, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;

    invoke-direct {v0}, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;-><init>()V

    sput-object v0, Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideUserRepositoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
