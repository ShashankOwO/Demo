.class final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;
.super Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewC;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;


# direct methods
.method private constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "viewParam"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "viewParam"
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewC;-><init>()V

    .line 433
    iput-object p0, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;->viewCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;

    .line 437
    iput-object p1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 438
    iput-object p2, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;->activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 439
    iput-object p3, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;->activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 442
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewCImpl;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V

    return-void
.end method
