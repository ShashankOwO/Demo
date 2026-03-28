.class public final Lcom/example/resume2interview/ui/auth/ResetPasswordViewModel_HiltModules$KeyModule;
.super Ljava/lang/Object;
.source "ResetPasswordViewModel_HiltModules.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/ui/auth/ResetPasswordViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyModule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static provide()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoSet;
    .end annotation

    .line 49
    const-string v0, "com.example.resume2interview.ui.auth.ResetPasswordViewModel"

    return-object v0
.end method
