.class final Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InterviewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/interview/InterviewViewModel;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.example.resume2interview.ui.interview.InterviewViewModel$startTimer$1"
    f = "InterviewViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x64
    }
    m = "invokeSuspend"
    n = {
        "seconds"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;


# direct methods
.method constructor <init>(Lcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;

    iget-object v1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-direct {v0, v1, p2}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;-><init>(Lcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v3, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->I$0:I

    .local v3, "seconds":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;
    .end local v3    # "seconds":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 98
    .restart local v1    # "this":Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v3}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->access$get_timerSeconds$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 99
    .restart local v3    # "seconds":I
    :goto_0
    nop

    .line 100
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->I$0:I

    iput v2, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->label:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 97
    return-object v0

    .line 101
    :cond_1
    :goto_1
    add-int/2addr v3, v2

    .line 102
    iget-object v4, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v4}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->access$get_timerSeconds$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 103
    div-int/lit8 v4, v3, 0x3c

    .line 104
    .local v4, "min":I
    rem-int/lit8 v5, v3, 0x3c

    .line 105
    .local v5, "sec":I
    iget-object v6, v1, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v6}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->access$get_timerText$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02d:%02d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "format(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .end local v4    # "min":I
    .end local v5    # "sec":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
