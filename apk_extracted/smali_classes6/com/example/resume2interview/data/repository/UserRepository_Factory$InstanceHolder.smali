.class final Lcom/example/resume2interview/data/repository/UserRepository_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "UserRepository_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/data/repository/UserRepository_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/example/resume2interview/data/repository/UserRepository_Factory;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/example/resume2interview/data/repository/UserRepository_Factory;
    .locals 1

    sget-object v0, Lcom/example/resume2interview/data/repository/UserRepository_Factory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/data/repository/UserRepository_Factory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/example/resume2interview/data/repository/UserRepository_Factory;

    invoke-direct {v0}, Lcom/example/resume2interview/data/repository/UserRepository_Factory;-><init>()V

    sput-object v0, Lcom/example/resume2interview/data/repository/UserRepository_Factory$InstanceHolder;->INSTANCE:Lcom/example/resume2interview/data/repository/UserRepository_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
