.class final Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvideInterviewRepositoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;
    .locals 1

    sget-object v0, Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;

    invoke-direct {v0}, Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;-><init>()V

    sput-object v0, Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/di/AppModule_ProvideInterviewRepositoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
