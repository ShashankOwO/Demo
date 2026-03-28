.class final Lcom/example/resume2interview/data/network/ApiClient$apiService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/data/network/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/example/resume2interview/data/network/ApiService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/example/resume2interview/data/network/ApiService;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/example/resume2interview/data/network/ApiClient$apiService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/resume2interview/data/network/ApiClient$apiService$2;

    invoke-direct {v0}, Lcom/example/resume2interview/data/network/ApiClient$apiService$2;-><init>()V

    sput-object v0, Lcom/example/resume2interview/data/network/ApiClient$apiService$2;->INSTANCE:Lcom/example/resume2interview/data/network/ApiClient$apiService$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/example/resume2interview/data/network/ApiService;
    .locals 2

    .line 31
    sget-object v0, Lcom/example/resume2interview/data/network/ApiClient;->INSTANCE:Lcom/example/resume2interview/data/network/ApiClient;

    invoke-virtual {v0}, Lcom/example/resume2interview/data/network/ApiClient;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/example/resume2interview/data/network/ApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/network/ApiService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/example/resume2interview/data/network/ApiClient$apiService$2;->invoke()Lcom/example/resume2interview/data/network/ApiService;

    move-result-object v0

    return-object v0
.end method
