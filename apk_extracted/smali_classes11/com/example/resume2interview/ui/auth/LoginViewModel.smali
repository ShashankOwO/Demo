.class public final Lcom/example/resume2interview/ui/auth/LoginViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/auth/LoginViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "",
        "authRepository",
        "Lcom/example/resume2interview/data/repository/AuthRepository;",
        "(Lcom/example/resume2interview/data/repository/AuthRepository;)V",
        "login",
        "",
        "email",
        "",
        "pass",
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


# instance fields
.field private final authRepository:Lcom/example/resume2interview/data/repository/AuthRepository;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/example/resume2interview/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/example/resume2interview/ui/auth/LoginViewModel;->authRepository:Lcom/example/resume2interview/data/repository/AuthRepository;

    .line 10
    return-void
.end method


# virtual methods
.method public final login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/example/resume2interview/ui/auth/LoginViewModel$login$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/auth/LoginViewModel$login$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/auth/LoginViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    .line 20
    return-void
.end method
