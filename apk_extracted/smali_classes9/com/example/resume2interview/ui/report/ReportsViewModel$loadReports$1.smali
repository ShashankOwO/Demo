.class final Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReportsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/report/ReportsViewModel;->loadReports()V
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
        "Ljava/util/List<",
        "+",
        "Lcom/example/resume2interview/ui/report/ReportItem;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/example/resume2interview/ui/report/ReportItem;"
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
    c = "com.example.resume2interview.ui.report.ReportsViewModel$loadReports$1"
    f = "ReportsViewModel.kt"
    i = {}
    l = {
        0x1c
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
            "Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;",
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

    new-instance v0, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;

    invoke-direct {v0, p1}, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/example/resume2interview/ui/report/ReportItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    move-object/from16 v1, p0

    iget v2, v1, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;
    move-object/from16 v4, p1

    .line 28
    .local v4, "$result":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, v2, Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;->label:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 27
    return-object v0

    .line 28
    :cond_0
    move-object v0, v2

    move-object v2, v4

    .line 30
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/report/ReportsViewModel$loadReports$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/example/resume2interview/ui/report/ReportItem;

    new-instance v5, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v9, 0x52

    const-string v10, "Average"

    const-string v6, "1"

    const-string v7, "System Design & Scalability"

    const-string v8, "2/11/2026"

    invoke-direct/range {v5 .. v10}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 31
    new-instance v7, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v11, 0x55

    const-string v12, "Good"

    const-string v8, "2"

    const-string v9, "System Design & Scalability"

    const-string v10, "2/8/2026"

    invoke-direct/range {v7 .. v12}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v7, v4, v3

    .line 30
    nop

    .line 32
    new-instance v8, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v12, 0x48

    const-string v13, "Average"

    const-string v9, "3"

    const-string v10, "Confidence & Technical Depth"

    const-string v11, "2/1/2026"

    invoke-direct/range {v8 .. v13}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x2

    aput-object v8, v4, v3

    .line 30
    nop

    .line 33
    new-instance v9, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v13, 0x5b

    const-string v14, "Good"

    const-string v10, "4"

    const-string v11, "Response Time Management"

    const-string v12, "1/24/2026"

    invoke-direct/range {v9 .. v14}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x3

    aput-object v9, v4, v3

    .line 30
    nop

    .line 34
    new-instance v10, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v14, 0x3a

    const-string v15, "Needs Improvement"

    const-string v11, "5"

    const-string v12, "Structured Problem Solving"

    const-string v13, "1/15/2026"

    invoke-direct/range {v10 .. v15}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x4

    aput-object v10, v4, v3

    .line 30
    nop

    .line 35
    new-instance v11, Lcom/example/resume2interview/ui/report/ReportItem;

    const/16 v15, 0x43

    const-string v16, "Average"

    const-string v12, "6"

    const-string v13, "Technical Communication"

    const-string v14, "1/6/2026"

    invoke-direct/range {v11 .. v16}, Lcom/example/resume2interview/ui/report/ReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x5

    aput-object v11, v4, v3

    .line 30
    nop

    .line 29
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
