.class public final Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReportsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/resume2interview/ui/report/ReportsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0014B\'\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\r\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u001c\u0010\u0010\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;",
        "items",
        "",
        "Lcom/example/resume2interview/ui/report/ReportItem;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "ViewHolder",
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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/resume2interview/ui/report/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private final onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7N-qgRI-QilLniU59osINBZ0mHg(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/ui/report/ReportItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->onBindViewHolder$lambda$0(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/ui/report/ReportItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/resume2interview/ui/report/ReportItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->items:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    .line 32
    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/ui/report/ReportItem;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;
    .param p1, "$item"    # Lcom/example/resume2interview/ui/report/ReportItem;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->onBindViewHolder(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/report/ReportItem;

    .line 46
    .local v0, "item":Lcom/example/resume2interview/ui/report/ReportItem;
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvIdBadge:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportItem;->getDate()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportItem;->getScore()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Score: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "#F57F17"

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v2, "needs improvement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    sget v2, Lcom/example/resume2interview/R$drawable;->bg_badge_red:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    const-string v2, "#C62828"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 52
    :sswitch_1
    const-string v2, "good"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    sget v2, Lcom/example/resume2interview/R$drawable;->bg_badge_green:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    const-string v2, "#2E7D32"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 52
    :sswitch_2
    const-string v2, "average"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    sget v2, Lcom/example/resume2interview/R$drawable;->bg_badge_yellow:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    sget v2, Lcom/example/resume2interview/R$drawable;->bg_badge_yellow:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {p1}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->getBinding()Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    :goto_2
    iget-object v1, p1, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/ui/report/ReportItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a321e3 -> :sswitch_2
        0x3080bd -> :sswitch_1
        0x65091fd3 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/example/resume2interview/databinding/ItemReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .local v0, "binding":Lcom/example/resume2interview/databinding/ItemReportBinding;
    new-instance v1, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter$ViewHolder;-><init>(Lcom/example/resume2interview/ui/report/ReportsFragment$ReportAdapter;Lcom/example/resume2interview/databinding/ItemReportBinding;)V

    return-object v1
.end method
