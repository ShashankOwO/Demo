.class public final Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;
.super Ljava/lang/Object;
.source "FragmentUploadResumeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageButton;

.field public final btnBrowse:Lcom/google/android/material/button/MaterialButton;

.field public final ivUpload:Landroid/widget/ImageView;

.field public final layoutLoading:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tipsContainer:Landroid/widget/LinearLayout;

.field public final tvFileHint:Landroid/widget/TextView;

.field public final tvTipsTitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvUploadDesc:Landroid/widget/TextView;

.field public final tvUploadTitle:Landroid/widget/TextView;

.field public final uploadContainer:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ImageButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "btnBack"    # Landroid/widget/ImageButton;
    .param p3, "btnBrowse"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "ivUpload"    # Landroid/widget/ImageView;
    .param p5, "layoutLoading"    # Landroid/widget/LinearLayout;
    .param p6, "tipsContainer"    # Landroid/widget/LinearLayout;
    .param p7, "tvFileHint"    # Landroid/widget/TextView;
    .param p8, "tvTipsTitle"    # Landroid/widget/TextView;
    .param p9, "tvTitle"    # Landroid/widget/TextView;
    .param p10, "tvUploadDesc"    # Landroid/widget/TextView;
    .param p11, "tvUploadTitle"    # Landroid/widget/TextView;
    .param p12, "uploadContainer"    # Landroidx/cardview/widget/CardView;
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
            "btnBrowse",
            "ivUpload",
            "layoutLoading",
            "tipsContainer",
            "tvFileHint",
            "tvTipsTitle",
            "tvTitle",
            "tvUploadDesc",
            "tvUploadTitle",
            "uploadContainer"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->rootView:Landroid/widget/ScrollView;

    .line 67
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBack:Landroid/widget/ImageButton;

    .line 68
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->btnBrowse:Lcom/google/android/material/button/MaterialButton;

    .line 69
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->ivUpload:Landroid/widget/ImageView;

    .line 70
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->layoutLoading:Landroid/widget/LinearLayout;

    .line 71
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tipsContainer:Landroid/widget/LinearLayout;

    .line 72
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tvFileHint:Landroid/widget/TextView;

    .line 73
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tvTipsTitle:Landroid/widget/TextView;

    .line 74
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tvTitle:Landroid/widget/TextView;

    .line 75
    iput-object p10, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tvUploadDesc:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->tvUploadTitle:Landroid/widget/TextView;

    .line 77
    iput-object p12, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->uploadContainer:Landroidx/cardview/widget/CardView;

    .line 78
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;
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

    .line 107
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 108
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    .line 109
    .local v4, "btnBack":Landroid/widget/ImageButton;
    if-eqz v4, :cond_a

    .line 113
    sget v0, Lcom/example/resume2interview/R$id;->btn_browse:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 115
    .local v5, "btnBrowse":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_9

    .line 119
    sget v0, Lcom/example/resume2interview/R$id;->iv_upload:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 121
    .local v6, "ivUpload":Landroid/widget/ImageView;
    if-eqz v6, :cond_8

    .line 125
    sget v0, Lcom/example/resume2interview/R$id;->layout_loading:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 127
    .local v7, "layoutLoading":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_7

    .line 131
    sget v0, Lcom/example/resume2interview/R$id;->tips_container:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    .line 133
    .local v8, "tipsContainer":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_6

    .line 137
    sget v0, Lcom/example/resume2interview/R$id;->tv_file_hint:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 139
    .local v9, "tvFileHint":Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 143
    sget v0, Lcom/example/resume2interview/R$id;->tv_tips_title:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 145
    .local v10, "tvTipsTitle":Landroid/widget/TextView;
    if-eqz v10, :cond_4

    .line 149
    sget v0, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 151
    .local v11, "tvTitle":Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 155
    sget v0, Lcom/example/resume2interview/R$id;->tv_upload_desc:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 157
    .local v12, "tvUploadDesc":Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 161
    sget v0, Lcom/example/resume2interview/R$id;->tv_upload_title:I

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 163
    .local v13, "tvUploadTitle":Landroid/widget/TextView;
    if-eqz v13, :cond_1

    .line 167
    sget v0, Lcom/example/resume2interview/R$id;->upload_container:I

    .line 168
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/cardview/widget/CardView;

    .line 169
    .local v14, "uploadContainer":Landroidx/cardview/widget/CardView;
    if-eqz v14, :cond_0

    .line 173
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    invoke-direct/range {v2 .. v14}, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/ImageButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V

    return-object v2

    .line 170
    :cond_0
    goto :goto_0

    .line 164
    .end local v14    # "uploadContainer":Landroidx/cardview/widget/CardView;
    :cond_1
    goto :goto_0

    .line 158
    .end local v13    # "tvUploadTitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 152
    .end local v12    # "tvUploadDesc":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 146
    .end local v11    # "tvTitle":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 140
    .end local v10    # "tvTipsTitle":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 134
    .end local v9    # "tvFileHint":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 128
    .end local v8    # "tipsContainer":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 122
    .end local v7    # "layoutLoading":Landroid/widget/LinearLayout;
    :cond_8
    goto :goto_0

    .line 116
    .end local v6    # "ivUpload":Landroid/widget/ImageView;
    :cond_9
    goto :goto_0

    .line 110
    .end local v5    # "btnBrowse":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    nop

    .line 177
    .end local v4    # "btnBack":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;
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

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;
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

    .line 94
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_upload_resume:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentUploadResumeBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
