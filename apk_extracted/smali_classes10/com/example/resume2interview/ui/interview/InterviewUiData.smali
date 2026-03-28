.class public final Lcom/example/resume2interview/ui/interview/InterviewUiData;
.super Ljava/lang/Object;
.source "InterviewViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003JE\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/interview/InterviewUiData;",
        "",
        "currentQuestionIndex",
        "",
        "totalQuestions",
        "questionText",
        "",
        "isRecording",
        "",
        "timerText",
        "transcribedText",
        "(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
        "getCurrentQuestionIndex",
        "()I",
        "()Z",
        "getQuestionText",
        "()Ljava/lang/String;",
        "getTimerText",
        "getTotalQuestions",
        "getTranscribedText",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final currentQuestionIndex:I

.field private final isRecording:Z

.field private final questionText:Ljava/lang/String;

.field private final timerText:Ljava/lang/String;

.field private final totalQuestions:I

.field private final transcribedText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentQuestionIndex"    # I
    .param p2, "totalQuestions"    # I
    .param p3, "questionText"    # Ljava/lang/String;
    .param p4, "isRecording"    # Z
    .param p5, "timerText"    # Ljava/lang/String;
    .param p6, "transcribedText"    # Ljava/lang/String;

    const-string v0, "questionText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transcribedText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    .line 16
    iput p2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    .line 17
    iput-object p3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    .line 19
    iput-object p5, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 14
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 18
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 14
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 19
    const-string p5, "00:00"

    move-object v5, p5

    goto :goto_1

    .line 14
    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 20
    const-string p6, ""

    move-object v6, p6

    goto :goto_2

    .line 14
    :cond_2
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/example/resume2interview/ui/interview/InterviewUiData;-><init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/resume2interview/ui/interview/InterviewUiData;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/example/resume2interview/ui/interview/InterviewUiData;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/example/resume2interview/ui/interview/InterviewUiData;->copy(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/example/resume2interview/ui/interview/InterviewUiData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/example/resume2interview/ui/interview/InterviewUiData;
    .locals 8

    const-string v0, "questionText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transcribedText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/example/resume2interview/ui/interview/InterviewUiData;-><init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;

    iget v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    iget v4, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    iget v4, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    iget-object v4, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    iget-boolean v4, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    iget-object v4, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    iget-object v1, v1, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCurrentQuestionIndex()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    return v0
.end method

.method public final getQuestionText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimerText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalQuestions()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    return v0
.end method

.method public final getTranscribedText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isRecording()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->currentQuestionIndex:I

    iget v1, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->totalQuestions:I

    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->questionText:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->isRecording:Z

    iget-object v4, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->timerText:Ljava/lang/String;

    iget-object v5, p0, Lcom/example/resume2interview/ui/interview/InterviewUiData;->transcribedText:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterviewUiData(currentQuestionIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", totalQuestions="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", questionText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transcribedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
