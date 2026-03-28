.class final Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UploadResumeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->uploadResume(Landroid/content/Context;Landroid/net/Uri;)V
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
    c = "com.example.resume2interview.ui.resume.UploadResumeViewModel$uploadResume$1"
    f = "UploadResumeViewModel.kt"
    i = {}
    l = {
        0x37,
        0x44
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;

    iget-object v1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->label:I

    const/4 v2, 0x2

    const-string v3, "UPLOAD"

    const-string v4, "getContentResolver(...)"

    const-string v5, "UPLOAD_DEBUG"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lretrofit2/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto/16 :goto_1

    .line 104
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 92
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 88
    :catch_2
    move-exception v1

    goto/16 :goto_5

    .line 38
    .end local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, p1

    goto/16 :goto_0

    .end local v1    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 41
    .restart local v1    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v6, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "mimeType":Ljava/lang/String;
    iget-object v7, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-static {v7}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$getResumeRepository$p(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v7

    iget-object v8, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Lcom/example/resume2interview/data/repository/ResumeRepository;->getFileSize(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v7

    .line 43
    .local v7, "fileSizeBytes":J
    iget-object v9, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected URI      = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected MIME     = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v6    # "mimeType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File size (bytes) = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    .end local v7    # "fileSizeBytes":J
    if-nez v6, :cond_0

    .line 48
    const-string v0, "File size is 0 \u2014 aborting upload"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v2, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v3, "Selected file is empty"

    invoke-direct {v2, v3}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v0, v2}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    .line 50
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 54
    :cond_0
    const-string v6, "Checking backend reachability\u2026"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v6, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-static {v6}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$getResumeRepository$p(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x1

    iput v8, v1, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->label:I

    invoke-virtual {v6, v7}, Lcom/example/resume2interview/data/repository/ResumeRepository;->isBackendReachable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 38
    return-object v0

    .line 55
    :cond_1
    move-object v12, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v12

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v6, "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 56
    .local p1, "reachable":Z
    nop

    .end local p1    # "reachable":Z
    if-nez p1, :cond_2

    .line 57
    const-string p1, "Backend not reachable \u2014 aborting upload"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v0, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v2, "Backend not reachable"

    invoke-direct {v0, v2}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    invoke-static {p1, v0}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 61
    :cond_2
    const-string p1, "Backend is reachable \u2713"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    sget-object v7, Lcom/example/resume2interview/utils/UiState$Loading;->INSTANCE:Lcom/example/resume2interview/utils/UiState$Loading;

    check-cast v7, Lcom/example/resume2interview/utils/UiState;

    invoke-static {p1, v7}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    .line 67
    nop

    .line 68
    :try_start_1
    iget-object p1, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    invoke-static {p1}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$getResumeRepository$p(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;)Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-result-object p1

    .line 69
    iget-object v7, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v4, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->$uri:Landroid/net/Uri;

    move-object v8, v6

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 68
    iput v2, v6, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->label:I

    invoke-virtual {p1, v7, v4, v8}, Lcom/example/resume2interview/data/repository/ResumeRepository;->uploadResume(Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lretrofit2/HttpException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-ne p1, v0, :cond_3

    .line 38
    return-object v0

    .line 68
    :cond_3
    move-object v0, v6

    .line 38
    .end local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    :goto_1
    :try_start_2
    check-cast p1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    .line 74
    .local p1, "result":Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getTechnicalSkills()Lcom/example/resume2interview/data/model/TechnicalSkills;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/resume2interview/data/model/TechnicalSkills;->allSkills()Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "allSkills":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skills count     = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getDetectedExperienceYears()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Experience years = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getGeneratedQuestions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Questions count  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success \u2192 skills="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    const-string v6, "No skills detected in response"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v6, v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v7, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v8, "Resume processed but no skills detected"

    invoke-direct {v7, v8}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v7, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v6, v7}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    .line 83
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 86
    :cond_4
    iget-object v6, v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v7, Lcom/example/resume2interview/utils/UiState$Success;

    invoke-direct {v7, p1}, Lcom/example/resume2interview/utils/UiState$Success;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v6, v7}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lretrofit2/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v4    # "allSkills":Ljava/util/List;
    .end local p1    # "result":Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
    goto/16 :goto_6

    .line 104
    :catch_3
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto :goto_2

    .line 92
    :catch_4
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto :goto_3

    .line 88
    :catch_5
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto/16 :goto_5

    .line 104
    .end local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    :catch_6
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    .line 105
    .end local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .local v1, "e":Ljava/lang/Exception;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "Upload failed"

    .line 106
    .local v3, "msg":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v5, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    iget-object v4, v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v5, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v6, " | errorBody="

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v2, v7}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v5, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v4, v5}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    move-object v1, p1

    goto/16 :goto_6

    .line 92
    .end local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .end local v3    # "msg":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    :catch_7
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    .line 93
    .end local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .local v1, "e":Lretrofit2/HttpException;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v1}, Lretrofit2/HttpException;->code()I

    move-result v2

    .line 94
    .local v2, "code":I
    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    .end local v1    # "e":Lretrofit2/HttpException;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    const-string v1, "(no body)"

    .line 95
    .local v1, "errorBody":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "errorBody":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload failed (HTTP "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 99
    .end local v2    # "code":I
    :sswitch_0
    const-string v1, "Server error"

    goto :goto_4

    .line 98
    :sswitch_1
    const-string v1, "Invalid file format"

    .line 97
    :goto_4
    nop

    .line 102
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v3, Lcom/example/resume2interview/utils/UiState$Error;

    invoke-direct {v3, v1}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v3, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v2, v3}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    move-object v1, p1

    .end local v1    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 88
    .end local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    :catch_8
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    .line 89
    .end local v6    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .restart local v0    # "this":Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;
    .local v1, "e":Ljava/io/IOException;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iget-object v2, v0, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel$uploadResume$1;->this$0:Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;

    new-instance v3, Lcom/example/resume2interview/utils/UiState$Error;

    const-string v4, "Network error"

    invoke-direct {v3, v4}, Lcom/example/resume2interview/utils/UiState$Error;-><init>(Ljava/lang/String;)V

    check-cast v3, Lcom/example/resume2interview/utils/UiState;

    invoke-static {v2, v3}, Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;->access$setState(Lcom/example/resume2interview/ui/resume/UploadResumeViewModel;Lcom/example/resume2interview/utils/UiState;)V

    move-object v1, p1

    .line 109
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a6 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method
