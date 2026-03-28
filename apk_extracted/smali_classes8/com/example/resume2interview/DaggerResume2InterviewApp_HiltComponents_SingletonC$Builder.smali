.class public final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;
.super Ljava/lang/Object;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public applicationContextModule(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;
    .locals 0
    .param p1, "applicationContextModule"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModule"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public build()Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$SingletonC;
    .locals 2

    .line 120
    new-instance v0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
