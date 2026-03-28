.class final Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "time",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
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

    iput-object p1, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;->this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewFragment$setupUI$5;->this$0:Lcom/example/resume2interview/ui/interview/InterviewFragment;

    invoke-static {v0}, Lcom/example/resume2interview/ui/interview/InterviewFragment;->access$getBinding(Lcom/example/resume2interview/ui/interview/InterviewFragment;)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvTimer:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
