.class public final Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
.super Ljava/lang/Object;
.source "ApiModels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\u000f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005H\u00c6\u0003JM\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
        "",
        "technicalSkills",
        "Lcom/example/resume2interview/data/model/TechnicalSkills;",
        "toolsFrameworks",
        "",
        "",
        "softSkills",
        "detectedExperienceYears",
        "",
        "generatedQuestions",
        "Lcom/example/resume2interview/data/model/InterviewQuestion;",
        "(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V",
        "getDetectedExperienceYears",
        "()I",
        "getGeneratedQuestions",
        "()Ljava/util/List;",
        "getSoftSkills",
        "getTechnicalSkills",
        "()Lcom/example/resume2interview/data/model/TechnicalSkills;",
        "getToolsFrameworks",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
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
.field private final detectedExperienceYears:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detected_experience_years"
    .end annotation
.end field

.field private final generatedQuestions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "generated_questions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/resume2interview/data/model/InterviewQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private final softSkills:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soft_skills"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "technical_skills"
    .end annotation
.end field

.field private final toolsFrameworks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tools_frameworks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 1
    .param p1, "technicalSkills"    # Lcom/example/resume2interview/data/model/TechnicalSkills;
    .param p2, "toolsFrameworks"    # Ljava/util/List;
    .param p3, "softSkills"    # Ljava/util/List;
    .param p4, "detectedExperienceYears"    # I
    .param p5, "generatedQuestions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/data/model/TechnicalSkills;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/example/resume2interview/data/model/InterviewQuestion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "technicalSkills"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsFrameworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softSkills"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generatedQuestions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    .line 42
    iput-object p2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    .line 44
    iput p4, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    .line 45
    iput-object p5, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    .line 40
    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 40
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    move-object v2, p2

    goto :goto_0

    .line 40
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_1

    .line 40
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 44
    const/4 p4, 0x0

    move v4, p4

    goto :goto_2

    .line 40
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    move-object v5, p5

    goto :goto_3

    .line 40
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;-><init>(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 46
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/resume2interview/data/model/ResumeAnalysisOut;Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;ILjava/lang/Object;)Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->copy(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/example/resume2interview/data/model/TechnicalSkills;
    .locals 1

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/resume2interview/data/model/InterviewQuestion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)Lcom/example/resume2interview/data/model/ResumeAnalysisOut;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/data/model/TechnicalSkills;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/example/resume2interview/data/model/InterviewQuestion;",
            ">;)",
            "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;"
        }
    .end annotation

    const-string v0, "technicalSkills"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsFrameworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softSkills"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generatedQuestions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;-><init>(Lcom/example/resume2interview/data/model/TechnicalSkills;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    iget-object v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    iget-object v4, v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    iget-object v4, v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    iget-object v4, v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    iget v4, v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    iget-object v1, v1, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDetectedExperienceYears()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    return v0
.end method

.method public final getGeneratedQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/resume2interview/data/model/InterviewQuestion;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    return-object v0
.end method

.method public final getSoftSkills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    return-object v0
.end method

.method public final getTechnicalSkills()Lcom/example/resume2interview/data/model/TechnicalSkills;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    return-object v0
.end method

.method public final getToolsFrameworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    invoke-virtual {v0}, Lcom/example/resume2interview/data/model/TechnicalSkills;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->technicalSkills:Lcom/example/resume2interview/data/model/TechnicalSkills;

    iget-object v1, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->toolsFrameworks:Ljava/util/List;

    iget-object v2, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->softSkills:Ljava/util/List;

    iget v3, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->detectedExperienceYears:I

    iget-object v4, p0, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->generatedQuestions:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResumeAnalysisOut(technicalSkills="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", toolsFrameworks="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softSkills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedExperienceYears="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", generatedQuestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
