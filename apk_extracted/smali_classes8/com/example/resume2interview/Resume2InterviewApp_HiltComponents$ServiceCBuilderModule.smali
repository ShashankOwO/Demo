.class interface abstract Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ServiceCBuilderModule;
.super Ljava/lang/Object;
.source "Resume2InterviewApp_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ServiceC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lcom/example/resume2interview/Resume2InterviewApp_HiltComponents$ServiceC$Builder;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
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
