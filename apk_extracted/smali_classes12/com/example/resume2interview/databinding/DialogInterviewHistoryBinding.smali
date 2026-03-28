.class public final Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;
.super Ljava/lang/Object;
.source "DialogInterviewHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnClose:Landroid/widget/ImageView;

.field public final btnViewReports:Lcom/google/android/material/button/MaterialButton;

.field public final pbBehavioral:Landroid/widget/ProgressBar;

.field public final pbCommunication:Landroid/widget/ProgressBar;

.field public final pbProblemSolving:Landroid/widget/ProgressBar;

.field public final pbSystemDesign:Landroid/widget/ProgressBar;

.field public final pbTechnical:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final skillsContainer:Landroid/widget/LinearLayout;

.field public final tvAvgScore:Landroid/widget/TextView;

.field public final tvHours:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnClose"    # Landroid/widget/ImageView;
    .param p3, "btnViewReports"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "pbBehavioral"    # Landroid/widget/ProgressBar;
    .param p5, "pbCommunication"    # Landroid/widget/ProgressBar;
    .param p6, "pbProblemSolving"    # Landroid/widget/ProgressBar;
    .param p7, "pbSystemDesign"    # Landroid/widget/ProgressBar;
    .param p8, "pbTechnical"    # Landroid/widget/ProgressBar;
    .param p9, "skillsContainer"    # Landroid/widget/LinearLayout;
    .param p10, "tvAvgScore"    # Landroid/widget/TextView;
    .param p11, "tvHours"    # Landroid/widget/TextView;
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
            0x0
        }
        names = {
            "rootView",
            "btnClose",
            "btnViewReports",
            "pbBehavioral",
            "pbCommunication",
            "pbProblemSolving",
            "pbSystemDesign",
            "pbTechnical",
            "skillsContainer",
            "tvAvgScore",
            "tvHours"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->rootView:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->btnClose:Landroid/widget/ImageView;

    .line 63
    iput-object p3, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->btnViewReports:Lcom/google/android/material/button/MaterialButton;

    .line 64
    iput-object p4, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->pbBehavioral:Landroid/widget/ProgressBar;

    .line 65
    iput-object p5, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->pbCommunication:Landroid/widget/ProgressBar;

    .line 66
    iput-object p6, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->pbProblemSolving:Landroid/widget/ProgressBar;

    .line 67
    iput-object p7, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->pbSystemDesign:Landroid/widget/ProgressBar;

    .line 68
    iput-object p8, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->pbTechnical:Landroid/widget/ProgressBar;

    .line 69
    iput-object p9, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->skillsContainer:Landroid/widget/LinearLayout;

    .line 70
    iput-object p10, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->tvAvgScore:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->tvHours:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 101
    sget v0, Lcom/example/resume2interview/R$id;->btn_close:I

    .line 102
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 103
    .local v4, "btnClose":Landroid/widget/ImageView;
    if-eqz v4, :cond_9

    .line 107
    sget v0, Lcom/example/resume2interview/R$id;->btn_view_reports:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 109
    .local v5, "btnViewReports":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_8

    .line 113
    sget v0, Lcom/example/resume2interview/R$id;->pb_behavioral:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    .line 115
    .local v6, "pbBehavioral":Landroid/widget/ProgressBar;
    if-eqz v6, :cond_7

    .line 119
    sget v0, Lcom/example/resume2interview/R$id;->pb_communication:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    .line 121
    .local v7, "pbCommunication":Landroid/widget/ProgressBar;
    if-eqz v7, :cond_6

    .line 125
    sget v0, Lcom/example/resume2interview/R$id;->pb_problem_solving:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    .line 127
    .local v8, "pbProblemSolving":Landroid/widget/ProgressBar;
    if-eqz v8, :cond_5

    .line 131
    sget v0, Lcom/example/resume2interview/R$id;->pb_system_design:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ProgressBar;

    .line 133
    .local v9, "pbSystemDesign":Landroid/widget/ProgressBar;
    if-eqz v9, :cond_4

    .line 137
    sget v0, Lcom/example/resume2interview/R$id;->pb_technical:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ProgressBar;

    .line 139
    .local v10, "pbTechnical":Landroid/widget/ProgressBar;
    if-eqz v10, :cond_3

    .line 143
    sget v0, Lcom/example/resume2interview/R$id;->skills_container:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    .line 145
    .local v11, "skillsContainer":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_2

    .line 149
    sget v0, Lcom/example/resume2interview/R$id;->tv_avg_score:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 151
    .local v12, "tvAvgScore":Landroid/widget/TextView;
    if-eqz v12, :cond_1

    .line 155
    sget v0, Lcom/example/resume2interview/R$id;->tv_hours:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 157
    .local v13, "tvHours":Landroid/widget/TextView;
    if-eqz v13, :cond_0

    .line 161
    new-instance v2, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v13}, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 158
    :cond_0
    goto :goto_0

    .line 152
    .end local v13    # "tvHours":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 146
    .end local v12    # "tvAvgScore":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 140
    .end local v11    # "skillsContainer":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 134
    .end local v10    # "pbTechnical":Landroid/widget/ProgressBar;
    :cond_4
    goto :goto_0

    .line 128
    .end local v9    # "pbSystemDesign":Landroid/widget/ProgressBar;
    :cond_5
    goto :goto_0

    .line 122
    .end local v8    # "pbProblemSolving":Landroid/widget/ProgressBar;
    :cond_6
    goto :goto_0

    .line 116
    .end local v7    # "pbCommunication":Landroid/widget/ProgressBar;
    :cond_7
    goto :goto_0

    .line 110
    .end local v6    # "pbBehavioral":Landroid/widget/ProgressBar;
    :cond_8
    goto :goto_0

    .line 104
    .end local v5    # "btnViewReports":Lcom/google/android/material/button/MaterialButton;
    :cond_9
    nop

    .line 165
    .end local v4    # "btnClose":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;
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

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;
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

    .line 88
    sget v0, Lcom/example/resume2interview/R$layout;->dialog_interview_history:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/example/resume2interview/databinding/DialogInterviewHistoryBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
