.class public final Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "ResumeSkillsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Lcom/example/resume2interview/ui/resume/SkillsUiData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResumeSkillsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResumeSkillsViewModel.kt\ncom/example/resume2interview/ui/resume/ResumeSkillsViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1549#2:57\n1620#2,3:58\n*S KotlinDebug\n*F\n+ 1 ResumeSkillsViewModel.kt\ncom/example/resume2interview/ui/resume/ResumeSkillsViewModel\n*L\n35#1:57\n35#1:58,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "Lcom/example/resume2interview/ui/resume/SkillsUiData;",
        "resumeRepository",
        "Lcom/example/resume2interview/data/repository/ResumeRepository;",
        "(Lcom/example/resume2interview/data/repository/ResumeRepository;)V",
        "loadFallbackSkills",
        "",
        "loadFromApiResponse",
        "analysis",
        "Lcom/example/resume2interview/data/model/ResumeAnalysisOut;",
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
.field private final resumeRepository:Lcom/example/resume2interview/data/repository/ResumeRepository;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/ResumeRepository;)V
    .locals 1
    .param p1, "resumeRepository"    # Lcom/example/resume2interview/data/repository/ResumeRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resumeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;->resumeRepository:Lcom/example/resume2interview/data/repository/ResumeRepository;

    .line 19
    return-void
.end method


# virtual methods
.method public final loadFallbackSkills()V
    .locals 9

    .line 45
    nop

    .line 46
    new-instance v0, Lcom/example/resume2interview/utils/UiState$Success;

    .line 47
    new-instance v1, Lcom/example/resume2interview/ui/resume/SkillsUiData;

    .line 48
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Python"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "FastAPI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "SQL"

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 47
    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/example/resume2interview/ui/resume/SkillsUiData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-direct {v0, v1}, Lcom/example/resume2interview/utils/UiState$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    .line 45
    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;->setState(Lcom/example/resume2interview/utils/UiState;)V

    .line 54
    return-void
.end method

.method public final loadFromApiResponse(Lcom/example/resume2interview/data/model/ResumeAnalysisOut;)V
    .locals 13
    .param p1, "analysis"    # Lcom/example/resume2interview/data/model/ResumeAnalysisOut;

    const-string v0, "analysis"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 31
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getTechnicalSkills()Lcom/example/resume2interview/data/model/TechnicalSkills;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/data/model/TechnicalSkills;->allSkills()Ljava/util/List;

    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getSoftSkills()Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getToolsFrameworks()Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getDetectedExperienceYears()I

    move-result v5

    .line 35
    invoke-virtual {p1}, Lcom/example/resume2interview/data/model/ResumeAnalysisOut;->getGeneratedQuestions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v0

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 58
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 59
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lcom/example/resume2interview/data/model/InterviewQuestion;

    .local v11, "it":Lcom/example/resume2interview/data/model/InterviewQuestion;
    const/4 v12, 0x0

    .line 35
    .local v12, "$i$a$-map-ResumeSkillsViewModel$loadFromApiResponse$1":I
    invoke-virtual {v11}, Lcom/example/resume2interview/data/model/InterviewQuestion;->getQuestion()Ljava/lang/String;

    move-result-object v11

    .line 59
    .end local v11    # "it":Lcom/example/resume2interview/data/model/InterviewQuestion;
    .end local v12    # "$i$a$-map-ResumeSkillsViewModel$loadFromApiResponse$1":I
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 57
    nop

    .line 30
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    new-instance v1, Lcom/example/resume2interview/ui/resume/SkillsUiData;

    invoke-direct/range {v1 .. v6}, Lcom/example/resume2interview/ui/resume/SkillsUiData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 29
    new-instance v0, Lcom/example/resume2interview/utils/UiState$Success;

    invoke-direct {v0, v1}, Lcom/example/resume2interview/utils/UiState$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/example/resume2interview/utils/UiState;

    .line 28
    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/resume/ResumeSkillsViewModel;->setState(Lcom/example/resume2interview/utils/UiState;)V

    .line 39
    return-void
.end method
