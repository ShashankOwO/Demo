.class public final synthetic Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/example/resume2interview/ui/resume/UploadResumeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda2;->f$0:Lcom/example/resume2interview/ui/resume/UploadResumeFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/example/resume2interview/ui/resume/UploadResumeFragment$$ExternalSyntheticLambda2;->f$0:Lcom/example/resume2interview/ui/resume/UploadResumeFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/example/resume2interview/ui/resume/UploadResumeFragment;->$r8$lambda$mGJuwfoNJHFoNDhgNSI4TycChE8(Lcom/example/resume2interview/ui/resume/UploadResumeFragment;Landroid/net/Uri;)V

    return-void
.end method
