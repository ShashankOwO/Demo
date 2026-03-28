.class public final Lcom/example/resume2interview/ui/home/HomeStaticState;
.super Ljava/lang/Object;
.source "HomeStaticState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/home/HomeStaticState;",
        "",
        "()V",
        "isResumeUploaded",
        "",
        "()Z",
        "setResumeUploaded",
        "(Z)V",
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
.field public static final INSTANCE:Lcom/example/resume2interview/ui/home/HomeStaticState;

.field private static isResumeUploaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/resume2interview/ui/home/HomeStaticState;

    invoke-direct {v0}, Lcom/example/resume2interview/ui/home/HomeStaticState;-><init>()V

    sput-object v0, Lcom/example/resume2interview/ui/home/HomeStaticState;->INSTANCE:Lcom/example/resume2interview/ui/home/HomeStaticState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isResumeUploaded()Z
    .locals 1

    .line 4
    sget-boolean v0, Lcom/example/resume2interview/ui/home/HomeStaticState;->isResumeUploaded:Z

    return v0
.end method

.method public final setResumeUploaded(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 4
    sput-boolean p1, Lcom/example/resume2interview/ui/home/HomeStaticState;->isResumeUploaded:Z

    return-void
.end method
