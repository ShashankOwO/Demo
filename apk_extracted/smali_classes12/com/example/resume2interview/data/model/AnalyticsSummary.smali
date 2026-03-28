.class public final Lcom/example/resume2interview/data/model/AnalyticsSummary;
.super Ljava/lang/Object;
.source "ApiModels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/example/resume2interview/data/model/AnalyticsSummary;",
        "",
        "averageScore",
        "",
        "highestScore",
        "",
        "lowestScore",
        "trendPercentage",
        "(FIIF)V",
        "getAverageScore",
        "()F",
        "getHighestScore",
        "()I",
        "getLowestScore",
        "getTrendPercentage",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final averageScore:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "average_score"
    .end annotation
.end field

.field private final highestScore:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "highest_score"
    .end annotation
.end field

.field private final lowestScore:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lowest_score"
    .end annotation
.end field

.field private final trendPercentage:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trend_percentage"
    .end annotation
.end field


# direct methods
.method public constructor <init>(FIIF)V
    .locals 0
    .param p1, "averageScore"    # F
    .param p2, "highestScore"    # I
    .param p3, "lowestScore"    # I
    .param p4, "trendPercentage"    # F

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    .line 100
    iput p2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    .line 101
    iput p3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    .line 102
    iput p4, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    .line 98
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/resume2interview/data/model/AnalyticsSummary;FIIFILjava/lang/Object;)Lcom/example/resume2interview/data/model/AnalyticsSummary;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/example/resume2interview/data/model/AnalyticsSummary;->copy(FIIF)Lcom/example/resume2interview/data/model/AnalyticsSummary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    return v0
.end method

.method public final copy(FIIF)Lcom/example/resume2interview/data/model/AnalyticsSummary;
    .locals 1

    new-instance v0, Lcom/example/resume2interview/data/model/AnalyticsSummary;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/example/resume2interview/data/model/AnalyticsSummary;-><init>(FIIF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/resume2interview/data/model/AnalyticsSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/data/model/AnalyticsSummary;

    iget v3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    iget v4, v1, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    iget v4, v1, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    iget v4, v1, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    iget v1, v1, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAverageScore()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    return v0
.end method

.method public final getHighestScore()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    return v0
.end method

.method public final getLowestScore()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    return v0
.end method

.method public final getTrendPercentage()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->averageScore:F

    iget v1, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->highestScore:I

    iget v2, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->lowestScore:I

    iget v3, p0, Lcom/example/resume2interview/data/model/AnalyticsSummary;->trendPercentage:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalyticsSummary(averageScore="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", highestScore="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowestScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trendPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
