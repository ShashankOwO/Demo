.class final Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;
.super Lkotlin/jvm/internal/Lambda;
.source "InterviewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/interview/InterviewFragment;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "finished",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;


# direct methods
.method constructor <init>(Lcom/example/resume2interview/ui/interview/InterviewFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;->this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 52
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;->invoke(Ljava/lang/Boolean;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "finished"    # Ljava/lang/Boolean;

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;->this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const-string v1, "Interview complete! Great job!"

    check-cast v1, Ljava/lang/CharSequence;

    .line 57
    nop

    .line 54
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$6;->this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 61
    :cond_0
    return-void
.end method
