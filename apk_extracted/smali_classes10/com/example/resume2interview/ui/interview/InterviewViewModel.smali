.class public final Lcom/example/resume2interview/ui/interview/InterviewViewModel;
.super Lcom/example/resume2interview/ui/base/BaseViewModel;
.source "InterviewViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "Lcom/example/resume2interview/ui/interview/InterviewUiData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J\u0006\u0010\u001f\u001a\u00020\u001dJ\u0008\u0010 \u001a\u00020\u001dH\u0014J\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u0006\u0010#\u001a\u00020\u001dR\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u000b0\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u000b0\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u000f0\u000f0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/interview/InterviewViewModel;",
        "Lcom/example/resume2interview/ui/base/BaseViewModel;",
        "Lcom/example/resume2interview/ui/interview/InterviewUiData;",
        "interviewRepository",
        "Lcom/example/resume2interview/data/repository/InterviewRepository;",
        "(Lcom/example/resume2interview/data/repository/InterviewRepository;)V",
        "_currentIndex",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "_isFinished",
        "",
        "_isRecording",
        "_timerSeconds",
        "_timerText",
        "",
        "currentIndex",
        "Landroidx/lifecycle/LiveData;",
        "getCurrentIndex",
        "()Landroidx/lifecycle/LiveData;",
        "isFinished",
        "isRecording",
        "questions",
        "",
        "timerJob",
        "Lkotlinx/coroutines/Job;",
        "timerText",
        "getTimerText",
        "loadQuestion",
        "",
        "index",
        "nextQuestion",
        "onCleared",
        "startTimer",
        "stopTimer",
        "toggleRecording",
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
.field private final _currentIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _isFinished:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isRecording:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _timerSeconds:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _timerText:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentIndex:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final interviewRepository:Lcom/example/resume2interview/data/repository/InterviewRepository;

.field private final isFinished:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRecording:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timerJob:Lkotlinx/coroutines/Job;

.field private final timerText:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/data/repository/InterviewRepository;)V
    .locals 6
    .param p1, "interviewRepository"    # Lcom/example/resume2interview/data/repository/InterviewRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "interviewRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->interviewRepository:Lcom/example/resume2interview/data/repository/InterviewRepository;

    .line 28
    nop

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Tell me about a time you had to handle a difficult conflict with a coworker. How did you resolve it?"

    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 29
    aput-object v1, v0, v2

    .line 30
    const-string v1, "Where do you see yourself in 5 years?"

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 29
    nop

    .line 31
    const-string v1, "What is your greatest professional strength?"

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 29
    nop

    .line 32
    const-string v1, "Describe a challenging project you worked on and how you overcame obstacles."

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 29
    nop

    .line 33
    const-string v1, "Why do you want to work at this company?"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 29
    nop

    .line 34
    const-string v1, "Tell me about a time when you showed leadership."

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 29
    nop

    .line 35
    const-string v1, "How do you handle working under pressure and tight deadlines?"

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 29
    nop

    .line 36
    const-string v1, "What is a weakness you have been actively working to improve?"

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 29
    nop

    .line 37
    const-string v1, "Describe a situation where you had to learn something quickly."

    const/16 v5, 0x8

    aput-object v1, v0, v5

    .line 29
    nop

    .line 38
    const-string v1, "Do you have any questions for us?"

    const/16 v5, 0x9

    aput-object v1, v0, v5

    .line 29
    nop

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->questions:Ljava/util/List;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_currentIndex:Landroidx/lifecycle/MutableLiveData;

    .line 42
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_currentIndex:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->currentIndex:Landroidx/lifecycle/LiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isRecording:Landroidx/lifecycle/MutableLiveData;

    .line 45
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isRecording:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isRecording:Landroidx/lifecycle/LiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerSeconds:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, "00:00"

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerText:Landroidx/lifecycle/MutableLiveData;

    .line 51
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerText:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->timerText:Landroidx/lifecycle/LiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isFinished:Landroidx/lifecycle/MutableLiveData;

    .line 54
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isFinished:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isFinished:Landroidx/lifecycle/LiveData;

    .line 56
    nop

    .line 57
    invoke-direct {p0, v2}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->loadQuestion(I)V

    .line 58
    nop

    .line 24
    return-void
.end method

.method public static final synthetic access$getQuestions$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    .line 23
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->questions:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$get_timerSeconds$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    .line 23
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerSeconds:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$get_timerText$p(Lcom/example/resume2interview/ui/interview/InterviewViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "$this"    # Lcom/example/resume2interview/ui/interview/InterviewViewModel;

    .line 23
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerText:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final loadQuestion(I)V
    .locals 2
    .param p1, "index"    # I

    .line 61
    new-instance v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$loadQuestion$1;-><init>(ILcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->launchDataLoad(Lkotlin/jvm/functions/Function1;)V

    .line 69
    return-void
.end method

.method private final startTimer()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->timerJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 97
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;

    invoke-direct {v0, p0, v1}, Lcom/example/resume2interview/ui/interview/InterviewViewModel$startTimer$1;-><init>(Lcom/example/resume2interview/ui/interview/InterviewViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->timerJob:Lkotlinx/coroutines/Job;

    .line 108
    return-void
.end method

.method private final stopTimer()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentIndex()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->currentIndex:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTimerText()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->timerText:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isFinished()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isFinished:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isRecording()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->isRecording:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final nextQuestion()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_currentIndex:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 83
    .local v0, "index":I
    invoke-direct {p0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->stopTimer()V

    .line 84
    iget-object v4, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerSeconds:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_timerText:Landroidx/lifecycle/MutableLiveData;

    const-string v4, "00:00"

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->questions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isFinished:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_currentIndex:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isRecording:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->loadQuestion(I)V

    .line 93
    :goto_0
    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/example/resume2interview/ui/base/BaseViewModel;->onCleared()V

    .line 116
    invoke-direct {p0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->stopTimer()V

    .line 117
    return-void
.end method

.method public final toggleRecording()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isRecording:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 73
    .local v0, "recording":Z
    iget-object v1, p0, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->_isRecording:Landroidx/lifecycle/MutableLiveData;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 74
    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->startTimer()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/example/resume2interview/ui/interview/InterviewViewModel;->stopTimer()V

    .line 79
    :goto_0
    return-void
.end method
