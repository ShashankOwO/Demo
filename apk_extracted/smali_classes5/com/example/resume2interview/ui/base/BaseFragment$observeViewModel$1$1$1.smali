.class final Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;
.super Ljava/lang/Object;
.source "BaseFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000c\u0008\u0001\u0010\u0004*\u0006\u0012\u0002\u0008\u00030\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u008a@\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "VM",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "state",
        "Lcom/example/resume2interview/utils/UiState;",
        "",
        "emit",
        "(Lcom/example/resume2interview/utils/UiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/example/resume2interview/ui/base/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/example/resume2interview/ui/base/BaseFragment<",
            "TVB;TVM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/example/resume2interview/ui/base/BaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/ui/base/BaseFragment<",
            "TVB;TVM;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;->this$0:Lcom/example/resume2interview/ui/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/example/resume2interview/utils/UiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "state"    # Lcom/example/resume2interview/utils/UiState;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/utils/UiState<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    nop

    .line 49
    instance-of v0, p1, Lcom/example/resume2interview/utils/UiState$Loading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;->this$0:Lcom/example/resume2interview/ui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/base/BaseFragment;->showLoading()V

    goto :goto_0

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/example/resume2interview/utils/UiState$Success;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;->this$0:Lcom/example/resume2interview/ui/base/BaseFragment;

    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/utils/UiState$Success;

    invoke-virtual {v1}, Lcom/example/resume2interview/utils/UiState$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/base/BaseFragment;->showContent(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p1, Lcom/example/resume2interview/utils/UiState$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;->this$0:Lcom/example/resume2interview/ui/base/BaseFragment;

    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/utils/UiState$Error;

    invoke-virtual {v1}, Lcom/example/resume2interview/utils/UiState$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/base/BaseFragment;->showError(Ljava/lang/String;)V

    .line 53
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    invoke-virtual {p0, v0, p2}, Lcom/example/resume2interview/ui/base/BaseFragment$observeViewModel$1$1$1;->emit(Lcom/example/resume2interview/utils/UiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
