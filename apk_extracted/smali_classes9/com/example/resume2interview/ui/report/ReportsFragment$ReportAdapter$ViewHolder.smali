.class public final Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/example/resume2interview/databinding/ItemReportBinding;",
        "(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/databinding/ItemReportBinding;)V",
        "getBinding",
        "()Lcom/example/resume2interview/databinding/ItemReportBinding;",
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
.field private final binding:Lcom/example/resume2interview/databinding/ItemReportBinding;

.field final synthetic this$0:Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;


# direct methods
.method public constructor <init>(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/databinding/ItemReportBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;
    .param p2, "binding"    # Lcom/example/resume2interview/databinding/ItemReportBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/resume2interview/databinding/ItemReportBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->this$0:Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;

    invoke-virtual {p2}, Lcom/example/resume2interview/databinding/ItemReportBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->binding:Lcom/example/resume2interview/databinding/ItemReportBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->binding:Lcom/example/resume2interview/databinding/ItemReportBinding;

    return-object v0
.end method
