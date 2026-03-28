.class final Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InterviewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/interview/InterviewViewModel;->loadQuestion(I)V
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
        "Lcom/example/resume2interview/ui/interview/InterviewUiData;",
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
        "Lcom/example/resume2interview/ui/interview/InterviewUiData;"
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
    c = "com.example.resume2interview.ui.interview.InterviewViewModel$loadQuestion$1"
    f = "InterviewViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $index:I

.field label:I

.field final synthetic this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;


# direct methods
.method constructor <init>(ILcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->$index:I

    iput-object p2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;

    iget v1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->$index:I

    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;-><init>(ILcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/example/resume2interview/ui/interview/InterviewUiData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 61
    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 62
    .local v0, "this":Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;
    .local p1, "$result":Ljava/lang/Object;
    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    .line 63
    iget v2, v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->$index:I

    add-int/lit8 v2, v2, 0x1

    .line 64
    iget-object v3, v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v3}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->access$getQuestions$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 65
    iget-object v4, v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->this$0:Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    invoke-static {v4}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->access$getQuestions$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Ljava/util/List;

    move-result-object v4

    iget v5, v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;->$index:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    nop

    .line 66
    nop

    .line 62
    const/16 v8, 0x28

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "00:00"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/example/resume2interview/ui/interview/InterviewUiData;-><init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
