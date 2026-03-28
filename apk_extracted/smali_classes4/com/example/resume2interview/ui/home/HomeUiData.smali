.class public final Lcom/example/resume2interview/ui/home/HomeUiData;
.super Ljava/lang/Object;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000cH\u00c6\u0003JU\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010 \u001a\u00020\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0006H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/home/HomeUiData;",
        "",
        "userName",
        "",
        "resumeStatus",
        "interviewSessionCount",
        "",
        "latestScore",
        "focusAreas",
        "",
        "extractedSkills",
        "isResumeActive",
        "",
        "(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)V",
        "getExtractedSkills",
        "()I",
        "getFocusAreas",
        "()Ljava/util/List;",
        "getInterviewSessionCount",
        "()Z",
        "getLatestScore",
        "getResumeStatus",
        "()Ljava/lang/String;",
        "getUserName",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
.field private final extractedSkills:I

.field private final focusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final interviewSessionCount:I

.field private final isResumeActive:Z

.field private final latestScore:I

.field private final resumeStatus:Ljava/lang/String;

.field private final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "resumeStatus"    # Ljava/lang/String;
    .param p3, "interviewSessionCount"    # I
    .param p4, "latestScore"    # I
    .param p5, "focusAreas"    # Ljava/util/List;
    .param p6, "extractedSkills"    # I
    .param p7, "isResumeActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "userName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumeStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusAreas"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    .line 13
    iput p4, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    .line 14
    iput-object p5, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    .line 15
    iput p6, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    .line 16
    iput-boolean p7, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 9
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 15
    const/16 p6, 0xc

    move v6, p6

    goto :goto_0

    .line 9
    :cond_0
    move v6, p6

    :goto_0
    and-int/lit8 p6, p8, 0x40

    if-eqz p6, :cond_1

    .line 16
    const/4 p6, 0x0

    move v7, p6

    goto :goto_1

    .line 9
    :cond_1
    move v7, p7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/example/resume2interview/ui/home/HomeUiData;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)V

    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/resume2interview/ui/home/HomeUiData;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZILjava/lang/Object;)Lcom/example/resume2interview/ui/home/HomeUiData;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget p3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget p6, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-boolean p7, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    :cond_6
    move p8, p6

    move p9, p7

    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/example/resume2interview/ui/home/HomeUiData;->copy(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)Lcom/example/resume2interview/ui/home/HomeUiData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)Lcom/example/resume2interview/ui/home/HomeUiData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lcom/example/resume2interview/ui/home/HomeUiData;"
        }
    .end annotation

    const-string v0, "userName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumeStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusAreas"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/resume2interview/ui/home/HomeUiData;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/example/resume2interview/ui/home/HomeUiData;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/resume2interview/ui/home/HomeUiData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/ui/home/HomeUiData;

    iget-object v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    iget-object v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    iget-object v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    iget v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    iget v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    iget-object v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    iget v4, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    iget-boolean v1, v1, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    if-eq v3, v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getExtractedSkills()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    return v0
.end method

.method public final getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    return-object v0
.end method

.method public final getInterviewSessionCount()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    return v0
.end method

.method public final getLatestScore()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    return v0
.end method

.method public final getResumeStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isResumeActive()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->resumeStatus:Ljava/lang/String;

    iget v2, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->interviewSessionCount:I

    iget v3, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->latestScore:I

    iget-object v4, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->focusAreas:Ljava/util/List;

    iget v5, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->extractedSkills:I

    iget-boolean v6, p0, Lcom/example/resume2interview/ui/home/HomeUiData;->isResumeActive:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HomeUiData(userName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", resumeStatus="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interviewSessionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latestScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focusAreas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extractedSkills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isResumeActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
