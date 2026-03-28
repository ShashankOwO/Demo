.class public final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ServiceCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ServiceCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewModelCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCBuilder;,
        Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static builder()Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;
    .locals 2

    .line 99
    new-instance v0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public static create()Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$SingletonC;
    .locals 2

    .line 103
    new-instance v0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V

    invoke-virtual {v0}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$Builder;->build()Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$SingletonC;

    move-result-object v0

    return-object v0
.end method
