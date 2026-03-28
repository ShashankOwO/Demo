.class final Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ResumeRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/data/repository/ResumeRepository;->isBackendReachable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.example.resume2interview.data.repository.ResumeRepository"
    f = "ResumeRepository.kt"
    i = {}
    l = {
        0x18
    }
    m = "isBackendReachable"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/example/resume2interview/data/repository/ResumeRepository;


# direct methods
.method constructor <init>(Lcom/example/resume2interview/data/repository/ResumeRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/data/repository/ResumeRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->this$0:Lcom/example/resume2interview/data/repository/ResumeRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->label:I

    iget-object v0, p0, Lcom/example/resume2interview/data/repository/ResumeRepository$isBackendReachable$1;->this$0:Lcom/example/resume2interview/data/repository/ResumeRepository;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lcom/example/resume2interview/data/repository/ResumeRepository;->isBackendReachable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
