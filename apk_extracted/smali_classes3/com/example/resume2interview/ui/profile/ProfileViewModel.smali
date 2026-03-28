.class public final Lcom/example/resume2interview/ui/profile/ProfileViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "ProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Lcom/example/resume2interview/ui/profile/UserProfile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/profile/ProfileViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "Lcom/example/resume2interview/ui/profile/UserProfile;",
        "userRepository",
        "Lcom/example/resume2interview/data/repository/UserRepository;",
        "(Lcom/example/resume2interview/data/repository/UserRepository;)V",
        "loadProfile",
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
.field private final userRepository:Lcom/example/resume2interview/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/UserRepository;)V
    .locals 1
    .param p1, "userRepository"    # Lcom/example/resume2interview/data/repository/UserRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "userRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/example/resume2interview/ui/profile/ProfileViewModel;->userRepository:Lcom/example/resume2interview/data/repository/UserRepository;

    .line 25
    nop

    .line 26
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/ProfileViewModel;->loadProfile()V

    .line 27
    nop

    .line 21
    return-void
.end method

.method private final loadProfile()V
    .locals 2

    .line 30
    new-instance v0, Lcom/example/resume2interview/ui/profile/ProfileViewModel$loadProfile$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/ui/profile/ProfileViewModel$loadProfile$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/profile/ProfileViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    .line 43
    return-void
.end method
