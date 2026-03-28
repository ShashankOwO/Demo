.class public final Lcom/example/resume2interview/databinding/FragmentInterviewBinding;
.super Ljava/lang/Object;
.source "FragmentInterviewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnClose:Landroid/widget/ImageView;

.field public final btnMic:Landroid/widget/ImageView;

.field public final btnNext:Lcom/google/android/material/button/MaterialButton;

.field public final cardAnswer:Landroidx/cardview/widget/CardView;

.field public final cardQuestion:Landroidx/cardview/widget/CardView;

.field public final etAnswer:Landroid/widget/EditText;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvMicHint:Landroid/widget/TextView;

.field public final tvQuestion:Landroid/widget/TextView;

.field public final tvQuestionCounter:Landroid/widget/TextView;

.field public final tvTimer:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnClose"    # Landroid/widget/ImageView;
    .param p3, "btnMic"    # Landroid/widget/ImageView;
    .param p4, "btnNext"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "cardAnswer"    # Landroidx/cardview/widget/CardView;
    .param p6, "cardQuestion"    # Landroidx/cardview/widget/CardView;
    .param p7, "etAnswer"    # Landroid/widget/EditText;
    .param p8, "progressBar"    # Landroid/widget/ProgressBar;
    .param p9, "tvMicHint"    # Landroid/widget/TextView;
    .param p10, "tvQuestion"    # Landroid/widget/TextView;
    .param p11, "tvQuestionCounter"    # Landroid/widget/TextView;
    .param p12, "tvTimer"    # Landroid/widget/TextView;
    .param p13, "tvTitle"    # Landroid/widget/TextView;
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnClose",
            "btnMic",
            "btnNext",
            "cardAnswer",
            "cardQuestion",
            "etAnswer",
            "progressBar",
            "tvMicHint",
            "tvQuestion",
            "tvQuestionCounter",
            "tvTimer",
            "tvTitle"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 69
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnClose:Landroid/widget/ImageView;

    .line 70
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnMic:Landroid/widget/ImageView;

    .line 71
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->btnNext:Lcom/google/android/material/button/MaterialButton;

    .line 72
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->cardAnswer:Landroidx/cardview/widget/CardView;

    .line 73
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->cardQuestion:Landroidx/cardview/widget/CardView;

    .line 74
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->etAnswer:Landroid/widget/EditText;

    .line 75
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 76
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvMicHint:Landroid/widget/TextView;

    .line 77
    iput-object p10, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvQuestion:Landroid/widget/TextView;

    .line 78
    iput-object p11, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvQuestionCounter:Landroid/widget/TextView;

    .line 79
    iput-object p12, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvTimer:Landroid/widget/TextView;

    .line 80
    iput-object p13, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->tvTitle:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 110
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->btn_close:I

    .line 111
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    .line 112
    .local v5, "btnClose":Landroid/widget/ImageView;
    if-eqz v5, :cond_b

    .line 116
    sget v1, Lcom/example/resume2interview/R$id;->btn_mic:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    .line 118
    .local v6, "btnMic":Landroid/widget/ImageView;
    if-eqz v6, :cond_a

    .line 122
    sget v1, Lcom/example/resume2interview/R$id;->btn_next:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 124
    .local v7, "btnNext":Lcom/google/android/material/button/MaterialButton;
    if-eqz v7, :cond_9

    .line 128
    sget v1, Lcom/example/resume2interview/R$id;->card_answer:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/cardview/widget/CardView;

    .line 130
    .local v8, "cardAnswer":Landroidx/cardview/widget/CardView;
    if-eqz v8, :cond_8

    .line 134
    sget v1, Lcom/example/resume2interview/R$id;->card_question:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/cardview/widget/CardView;

    .line 136
    .local v9, "cardQuestion":Landroidx/cardview/widget/CardView;
    if-eqz v9, :cond_7

    .line 140
    sget v1, Lcom/example/resume2interview/R$id;->et_answer:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    .line 142
    .local v10, "etAnswer":Landroid/widget/EditText;
    if-eqz v10, :cond_6

    .line 146
    sget v1, Lcom/example/resume2interview/R$id;->progress_bar:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ProgressBar;

    .line 148
    .local v11, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v11, :cond_5

    .line 152
    sget v1, Lcom/example/resume2interview/R$id;->tv_mic_hint:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 154
    .local v12, "tvMicHint":Landroid/widget/TextView;
    if-eqz v12, :cond_4

    .line 158
    sget v1, Lcom/example/resume2interview/R$id;->tv_question:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 160
    .local v13, "tvQuestion":Landroid/widget/TextView;
    if-eqz v13, :cond_3

    .line 164
    sget v1, Lcom/example/resume2interview/R$id;->tv_question_counter:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 166
    .local v14, "tvQuestionCounter":Landroid/widget/TextView;
    if-eqz v14, :cond_2

    .line 170
    sget v1, Lcom/example/resume2interview/R$id;->tv_timer:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 172
    .local v15, "tvTimer":Landroid/widget/TextView;
    if-eqz v15, :cond_1

    .line 176
    sget v1, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 178
    .local v16, "tvTitle":Landroid/widget/TextView;
    if-eqz v16, :cond_0

    .line 182
    new-instance v3, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v16}, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 179
    :cond_0
    goto :goto_0

    .line 173
    .end local v16    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 167
    .end local v15    # "tvTimer":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 161
    .end local v14    # "tvQuestionCounter":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 155
    .end local v13    # "tvQuestion":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 149
    .end local v12    # "tvMicHint":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 143
    .end local v11    # "progressBar":Landroid/widget/ProgressBar;
    :cond_6
    goto :goto_0

    .line 137
    .end local v10    # "etAnswer":Landroid/widget/EditText;
    :cond_7
    goto :goto_0

    .line 131
    .end local v9    # "cardQuestion":Landroidx/cardview/widget/CardView;
    :cond_8
    goto :goto_0

    .line 125
    .end local v8    # "cardAnswer":Landroidx/cardview/widget/CardView;
    :cond_9
    goto :goto_0

    .line 119
    .end local v7    # "btnNext":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    goto :goto_0

    .line 113
    .end local v6    # "btnMic":Landroid/widget/ImageView;
    :cond_b
    nop

    .line 186
    .end local v5    # "btnClose":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;
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

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;
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

    .line 97
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_interview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentInterviewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentInterviewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
