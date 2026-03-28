.class final Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;
.super Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewWithFragmentC;
.source "DaggerResume2InterviewApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWithFragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewWithFragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;


# direct methods
.method private constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "fragmentCImpl"    # Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;
    .param p5, "viewParam"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl",
            "viewParam"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ViewWithFragmentC;-><init>()V

    .line 330
    iput-object p0, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;->viewWithFragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;

    .line 335
    iput-object p1, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;->singletonCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 336
    iput-object p2, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;->activityRetainedCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 337
    iput-object p3, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;->activityCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 338
    iput-object p4, p0, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;->fragmentCImpl:Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;Landroid/view/View;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;-><init>(Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/example/resume2interview/DaggerResume2InterviewApp_HiltComponents_SingletonC$FragmentCImpl;Landroid/view/View;)V

    return-void
.end method
