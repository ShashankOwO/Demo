.class final Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/home/HomeViewModel;->loadHomeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/example/resume2interview/ui/home/HomeUiData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/example/resume2interview/ui/home/HomeUiData;"
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
    c = "com.example.resume2interview.ui.home.HomeViewModel$loadHomeData$1"
    f = "HomeViewModel.kt"
    i = {}
    l = {
        0x1e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;

    invoke-direct {v0, p1}, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/ui/home/HomeUiData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 30
    .local v1, "this":Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 29
    return-object v0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    .end local v1    # "this":Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/home/HomeViewModel$loadHomeData$1;
    :goto_0
    sget-object v1, Lcom/example/resume2interview/ui/home/HomeStaticState;->INSTANCE:Lcom/example/resume2interview/ui/home/HomeStaticState;

    invoke-virtual {v1}, Lcom/example/resume2interview/ui/home/HomeStaticState;->isResumeUploaded()Z

    move-result v1

    .line 32
    .local v1, "isUploaded":Z
    new-instance v3, Lcom/example/resume2interview/ui/home/HomeUiData;

    .line 33
    nop

    .line 34
    if-eqz v1, :cond_1

    const-string v4, "Active"

    goto :goto_1

    :cond_1
    const-string v4, "Action Needed"

    :goto_1
    move-object v5, v4

    .line 35
    if-eqz v1, :cond_2

    const/4 v4, 0x6

    goto :goto_2

    :cond_2
    const/4 v4, 0x5

    :goto_2
    move v6, v4

    .line 36
    if-eqz v1, :cond_3

    const/16 v4, 0x52

    goto :goto_3

    :cond_3
    const/16 v4, 0x55

    :goto_3
    move v7, v4

    .line 37
    const-string v4, "Edge case handling"

    const/4 v8, 0x2

    const/4 v9, 0x0

    new-array v8, v8, [Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v10, "System scalability"

    aput-object v10, v8, v9

    aput-object v4, v8, v2

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_4
    const-string v10, "System design scalability"

    aput-object v10, v8, v9

    aput-object v4, v8, v2

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_4
    move-object v8, v4

    .line 32
    nop

    .line 38
    if-eqz v1, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    move v10, v9

    .line 32
    .end local v1    # "isUploaded":Z
    :goto_5
    const/16 v11, 0x20

    const/4 v12, 0x0

    const-string v4, "Alex"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/example/resume2interview/ui/home/HomeUiData;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
