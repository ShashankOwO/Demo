.class interface abstract Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ActivityCBuilderModule;
.super Ljava/lang/Object;
.source "Resume2InterviewApp_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ActivityC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ActivityCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ActivityC$Builder;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method
