.class public final Lcom/example/resume2interview/data/repository/ResumeRepository;
.super Ljava/lang/Object;
.source "ResumeRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/example/resume2interview/data/repository/ResumeRepository;",
        "",
        "api",
        "Lcom/example/resume2interview/data/network/ApiService;",
        "(Lcom/example/resume2interview/data/network/ApiService;)V",
        "getFileSize",
        "",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "uri",
        "Landroid/net/Uri;",
        "isBackendReachable",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadResume",
        "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
        "(Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final api:Lcom/example/resume2interview/data/network/ApiService;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/network/ApiService;)V
    .locals 1
    .param p1, "api"    # Lcom/example/resume2interview/data/network/ApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/example/resume2interview/data/repository/ResumeRepository;->api:Lcom/example/resume2interview/data/network/ApiService;

    .line 16
    return-void
.end method


# virtual methods
.method public final getFileSize(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "_size"

    aput-object v7, v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 34
    const-wide/16 v3, -0x1

    if-eqz p1, :cond_1

    .line 33
    check-cast p1, Ljava/io/Closeable;

    .line 34
    :try_start_0
    move-object p2, p1

    check-cast p2, Landroid/database/Cursor;

    .local p2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-use-ResumeRepository$getFileSize$1":I
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "sizeIndex":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ltz v5, :cond_0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v0    # "$i$a$-use-ResumeRepository$getFileSize$1":I
    .end local v5    # "sizeIndex":I
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    move-object p2, v0

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 37
    :cond_1
    nop

    .line 33
    :goto_0
    return-wide v3
.end method

.method public final isBackendReachable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;

    iget v1, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;

    invoke-direct {v0, p0, p1}, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;-><init>(Lcom/example/resume2interview/data/repository/ResumeRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p1, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_1

    .line 25
    :catch_0
    move-exception v1

    goto :goto_2

    .line 23
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 24
    .local v2, "this":Lcom/example/resume2interview/data/repository/ResumeRepository;
    :try_start_1
    iget-object v3, v2, Lcom/example/resume2interview/data/repository/ResumeRepository;->api:Lcom/example/resume2interview/data/network/ApiService;

    const/4 v4, 0x1

    iput v4, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    invoke-interface {v3, v0}, Lcom/example/resume2interview/data/network/ApiService;->health(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v2    # "this":Lcom/example/resume2interview/data/repository/ResumeRepository;
    if-ne v3, v1, :cond_1

    .line 23
    return-object v1

    .line 24
    :cond_1
    :goto_1
    check-cast v3, Lretrofit2/Response;

    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 26
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 27
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final uploadResume(Landroid/content/ContentResolver;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;

    iget v2, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;-><init>(Lcom/example/resume2interview/data/repository/ResumeRepository;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 50
    iget v4, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    goto :goto_1

    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lcom/example/resume2interview/data/repository/ResumeRepository;
    move-object/from16 v5, p2

    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v6, p1

    .line 55
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    if-eqz v6, :cond_6

    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v6

    check-cast v7, Ljava/io/InputStream;

    .local v7, "stream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 56
    .local v8, "$i$a$-use-ResumeRepository$uploadResume$bytes$1":I
    invoke-static {v7}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v7    # "stream":Ljava/io/InputStream;
    .end local v8    # "$i$a$-use-ResumeRepository$uploadResume$bytes$1":I
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v9, :cond_6

    .end local v5    # "uri":Landroid/net/Uri;
    move-object v11, v9

    .line 60
    .local v11, "bytes":[B
    sget-object v10, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v6, "application/pdf"

    invoke-virtual {v5, v6}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 61
    .end local v11    # "bytes":[B
    .local v5, "requestBody":Lokhttp3/RequestBody;
    sget-object v6, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 61
    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    const-string v7, "file"

    const-string v8, "resume.pdf"

    invoke-virtual {v6, v7, v8, v5}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v5

    .line 67
    .local v5, "part":Lokhttp3/MultipartBody$Part;
    iget-object v6, v4, Lcom/example/resume2interview/data/repository/ResumeRepository;->api:Lcom/example/resume2interview/data/network/ApiService;

    const/4 v7, 0x1

    iput v7, v1, Lcom/example/resume2interview/data/repository/ResumeRepository$uploadResume$1;->label:I

    invoke-interface {v6, v5, v1}, Lcom/example/resume2interview/data/network/ApiService;->uploadResume(Lokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "this":Lcom/example/resume2interview/data/repository/ResumeRepository;
    .end local v5    # "part":Lokhttp3/MultipartBody$Part;
    if-ne v4, v0, :cond_1

    .line 50
    return-object v0

    :cond_1
    :goto_1
    move-object v0, v4

    check-cast v0, Lretrofit2/Response;

    .line 69
    .local v0, "response":Lretrofit2/Response;
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_4

    .line 70
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v4

    .line 71
    .local v4, "code":I
    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    .end local v0    # "response":Lretrofit2/Response;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "(no body)"

    .line 72
    .local v0, "errorBody":Ljava/lang/String;
    :cond_3
    sparse-switch v4, :sswitch_data_0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload failed (HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_2

    .line 74
    .end local v4    # "code":I
    :sswitch_0
    const-string v4, "Server error"

    goto :goto_2

    .line 73
    :sswitch_1
    const-string v4, "Invalid file format"

    .line 72
    :goto_2
    nop

    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | errorBody="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    .end local v4    # "msg":Ljava/lang/String;
    .local v0, "response":Lretrofit2/Response;
    :cond_4
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    if-eqz v4, :cond_5

    return-object v4

    .line 82
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Empty response body from server"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    .end local v0    # "response":Lretrofit2/Response;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 57
    .local v5, "uri":Landroid/net/Uri;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open InputStream for URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a6 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method
