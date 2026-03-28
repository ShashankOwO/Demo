.class public final Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;
.super Ljava/lang/Object;
.source "FragmentReportDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final cardImprovements:Landroidx/cardview/widget/CardView;

.field public final cardScore:Landroidx/cardview/widget/CardView;

.field public final cardStrengths:Landroidx/cardview/widget/CardView;

.field public final layoutImprovements:Landroid/widget/LinearLayout;

.field public final layoutStrengths:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvEvaluation:Landroid/widget/TextView;

.field public final tvScore:Landroid/widget/TextView;

.field public final tvSummary:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnBack"    # Landroid/widget/ImageView;
    .param p3, "cardImprovements"    # Landroidx/cardview/widget/CardView;
    .param p4, "cardScore"    # Landroidx/cardview/widget/CardView;
    .param p5, "cardStrengths"    # Landroidx/cardview/widget/CardView;
    .param p6, "layoutImprovements"    # Landroid/widget/LinearLayout;
    .param p7, "layoutStrengths"    # Landroid/widget/LinearLayout;
    .param p8, "tvDate"    # Landroid/widget/TextView;
    .param p9, "tvEvaluation"    # Landroid/widget/TextView;
    .param p10, "tvScore"    # Landroid/widget/TextView;
    .param p11, "tvSummary"    # Landroid/widget/TextView;
    .param p12, "tvTitle"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "btnBack",
            "cardImprovements",
            "cardScore",
            "cardStrengths",
            "layoutImprovements",
            "layoutStrengths",
            "tvDate",
            "tvEvaluation",
            "tvScore",
            "tvSummary",
            "tvTitle"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 65
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->btnBack:Landroid/widget/ImageView;

    .line 66
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->cardImprovements:Landroidx/cardview/widget/CardView;

    .line 67
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->cardScore:Landroidx/cardview/widget/CardView;

    .line 68
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->cardStrengths:Landroidx/cardview/widget/CardView;

    .line 69
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->layoutImprovements:Landroid/widget/LinearLayout;

    .line 70
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->layoutStrengths:Landroid/widget/LinearLayout;

    .line 71
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvDate:Landroid/widget/TextView;

    .line 72
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvEvaluation:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvScore:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvSummary:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvTitle:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;
    .locals 15
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 105
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 106
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 107
    .local v4, "btnBack":Landroid/widget/ImageView;
    if-eqz v4, :cond_a

    .line 111
    sget v0, Lcom/example/resume2interview/R$id;->card_improvements:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 113
    .local v5, "cardImprovements":Landroidx/cardview/widget/CardView;
    if-eqz v5, :cond_9

    .line 117
    sget v0, Lcom/example/resume2interview/R$id;->card_score:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 119
    .local v6, "cardScore":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_8

    .line 123
    sget v0, Lcom/example/resume2interview/R$id;->card_strengths:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/cardview/widget/CardView;

    .line 125
    .local v7, "cardStrengths":Landroidx/cardview/widget/CardView;
    if-eqz v7, :cond_7

    .line 129
    sget v0, Lcom/example/resume2interview/R$id;->layout_improvements:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    .line 131
    .local v8, "layoutImprovements":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_6

    .line 135
    sget v0, Lcom/example/resume2interview/R$id;->layout_strengths:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    .line 137
    .local v9, "layoutStrengths":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_5

    .line 141
    sget v0, Lcom/example/resume2interview/R$id;->tv_date:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 143
    .local v10, "tvDate":Landroid/widget/TextView;
    if-eqz v10, :cond_4

    .line 147
    sget v0, Lcom/example/resume2interview/R$id;->tv_evaluation:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 149
    .local v11, "tvEvaluation":Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 153
    sget v0, Lcom/example/resume2interview/R$id;->tv_score:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 155
    .local v12, "tvScore":Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 159
    sget v0, Lcom/example/resume2interview/R$id;->tv_summary:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 161
    .local v13, "tvSummary":Landroid/widget/TextView;
    if-eqz v13, :cond_1

    .line 165
    sget v0, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    .line 167
    .local v14, "tvTitle":Landroid/widget/TextView;
    if-eqz v14, :cond_0

    .line 171
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v14}, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 168
    :cond_0
    goto :goto_0

    .line 162
    .end local v14    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 156
    .end local v13    # "tvSummary":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 150
    .end local v12    # "tvScore":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 144
    .end local v11    # "tvEvaluation":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 138
    .end local v10    # "tvDate":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 132
    .end local v9    # "layoutStrengths":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 126
    .end local v8    # "layoutImprovements":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 120
    .end local v7    # "cardStrengths":Landroidx/cardview/widget/CardView;
    :cond_8
    goto :goto_0

    .line 114
    .end local v6    # "cardScore":Landroidx/cardview/widget/CardView;
    :cond_9
    goto :goto_0

    .line 108
    .end local v5    # "cardImprovements":Landroidx/cardview/widget/CardView;
    :cond_a
    nop

    .line 175
    .end local v4    # "btnBack":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;
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

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;
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

    .line 92
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_report_detail:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
