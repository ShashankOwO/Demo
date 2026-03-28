.class public final Lcom/example/resume2interview/databinding/ItemReportBinding;
.super Ljava/lang/Object;
.source "ItemReportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvIdBadge:Landroid/widget/TextView;

.field public final tvScore:Landroid/widget/TextView;

.field public final tvStatus:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final vAccent:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "tvDate"    # Landroid/widget/TextView;
    .param p3, "tvIdBadge"    # Landroid/widget/TextView;
    .param p4, "tvScore"    # Landroid/widget/TextView;
    .param p5, "tvStatus"    # Landroid/widget/TextView;
    .param p6, "tvTitle"    # Landroid/widget/TextView;
    .param p7, "vAccent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "tvDate",
            "tvIdBadge",
            "tvScore",
            "tvStatus",
            "tvTitle",
            "vAccent"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 44
    iput-object p2, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvDate:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvIdBadge:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvScore:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvStatus:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->tvTitle:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->vAccent:Landroid/view/View;

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/ItemReportBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 79
    sget v0, Lcom/example/resume2interview/R$id;->tv_date:I

    .line 80
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "tvDate":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 85
    sget v0, Lcom/example/resume2interview/R$id;->tv_id_badge:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 87
    .local v5, "tvIdBadge":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 91
    sget v0, Lcom/example/resume2interview/R$id;->tv_score:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 93
    .local v6, "tvScore":Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 97
    sget v0, Lcom/example/resume2interview/R$id;->tv_status:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 99
    .local v7, "tvStatus":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 103
    sget v0, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 105
    .local v8, "tvTitle":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 109
    sget v0, Lcom/example/resume2interview/R$id;->v_accent:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 111
    .local v9, "vAccent":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 115
    new-instance v2, Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v2 .. v9}, Lcom/example/resume2interview/databinding/ItemReportBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v2

    .line 112
    :cond_0
    goto :goto_0

    .line 106
    .end local v9    # "vAccent":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 100
    .end local v8    # "tvTitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 94
    .end local v7    # "tvStatus":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 88
    .end local v6    # "tvScore":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 82
    .end local v5    # "tvIdBadge":Landroid/widget/TextView;
    :cond_5
    nop

    .line 118
    .end local v4    # "tvDate":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/ItemReportBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/ItemReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/ItemReportBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 66
    sget v0, Lcom/example/resume2interview/R$layout;->item_report:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/ItemReportBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/ItemReportBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/ItemReportBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/example/resume2interview/databinding/ItemReportBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
