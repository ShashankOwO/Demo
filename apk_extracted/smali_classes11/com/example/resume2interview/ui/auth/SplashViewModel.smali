.class public final Lcom/example/resume2interview/ui/auth/SplashViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "SplashViewModel.kt"


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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/auth/SplashViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "",
        "authRepository",
        "Lcom/example/resume2interview/data/repository/AuthRepository;",
        "(Lcom/example/resume2interview/data/repository/AuthRepository;)V",
        "checkSession",
        "",
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

    .line 14
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/example/resume2interview/ui/auth/SplashViewModel;->authRepository:Lcom/example/resume2interview/data/repository/AuthRepository;

    .line 16
    nop

    .line 17
    invoke-direct {p0}, Lcom/example/resume2interview/ui/auth/SplashViewModel;->checkSession()V

    .line 18
    nop

    .line 12
    return-void
.end method

.method public static final synthetic access$launchDataLoad(Lcom/example/resume2interview/ui/auth/SplashViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Lcom/example/resume2interview/ui/auth/SplashViewModel;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;

    .line 11
    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/auth/SplashViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final checkSession()V
    .locals 7

    .line 21
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/example/resume2interview/ui/auth/SplashViewModel$checkSession$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/example/resume2interview/ui/auth/SplashViewModel$checkSession$1;-><init>(Lcom/example/resume2interview/ui/auth/SplashViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    return-void
.end method
