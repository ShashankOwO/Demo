.class Lcom/example/resume2interview/Hilt_Resume2InterviewApp$1;
.super Ljava/lang/Object;
.source "Hilt_Resume2InterviewApp.java"

# interfaces
.implements Ldagger/hilt/android/internal/managers/ComponentSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/Hilt_Resume2InterviewApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/resume2interview/Hilt_Resume2InterviewApp;


# direct methods
.method constructor <init>(Lcom/example/resume2interview/Hilt_Resume2InterviewApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/resume2interview/Hilt_Resume2InterviewApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/example/resume2interview/Hilt_Resume2InterviewApp$1;->this$0:Lcom/example/resume2interview/Hilt_Resume2InterviewApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 24
    invoke-static {}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;->builder()Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, p0, Lcom/example/resume2interview/Hilt_Resume2InterviewApp$1;->this$0:Lcom/example/resume2interview/Hilt_Resume2InterviewApp;

    invoke-direct {v1, v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;->applicationContextModule(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;->build()Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$SingletonC;

    move-result-object v0

    .line 24
    return-object v0
.end method
