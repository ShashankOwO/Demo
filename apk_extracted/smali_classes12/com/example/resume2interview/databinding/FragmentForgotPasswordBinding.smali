.class public final Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;
.super Ljava/lang/Object;
.source "FragmentForgotPasswordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnSendCode:Lcom/google/android/material/button/MaterialButton;

.field public final cardForm:Landroidx/cardview/widget/CardView;

.field public final etEmail:Landroid/widget/EditText;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvBackLabel:Landroid/widget/TextView;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvEmailLabel:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnBack"    # Landroid/widget/ImageView;
    .param p3, "btnSendCode"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "cardForm"    # Landroidx/cardview/widget/CardView;
    .param p5, "etEmail"    # Landroid/widget/EditText;
    .param p6, "tvBackLabel"    # Landroid/widget/TextView;
    .param p7, "tvDescription"    # Landroid/widget/TextView;
    .param p8, "tvEmailLabel"    # Landroid/widget/TextView;
    .param p9, "tvTitle"    # Landroid/widget/TextView;
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
            0x0
        }
        names = {
            "rootView",
            "btnBack",
            "btnSendCode",
            "cardForm",
            "etEmail",
            "tvBackLabel",
            "tvDescription",
            "tvEmailLabel",
            "tvTitle"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 55
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->btnBack:Landroid/widget/ImageView;

    .line 56
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->btnSendCode:Lcom/google/android/material/button/MaterialButton;

    .line 57
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->cardForm:Landroidx/cardview/widget/CardView;

    .line 58
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->etEmail:Landroid/widget/EditText;

    .line 59
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->tvBackLabel:Landroid/widget/TextView;

    .line 60
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->tvDescription:Landroid/widget/TextView;

    .line 61
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->tvEmailLabel:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->tvTitle:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 92
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 93
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 94
    .local v4, "btnBack":Landroid/widget/ImageView;
    if-eqz v4, :cond_7

    .line 98
    sget v0, Lcom/example/resume2interview/R$id;->btn_send_code:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 100
    .local v5, "btnSendCode":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_6

    .line 104
    sget v0, Lcom/example/resume2interview/R$id;->card_form:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 106
    .local v6, "cardForm":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_5

    .line 110
    sget v0, Lcom/example/resume2interview/R$id;->et_email:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 112
    .local v7, "etEmail":Landroid/widget/EditText;
    if-eqz v7, :cond_4

    .line 116
    sget v0, Lcom/example/resume2interview/R$id;->tv_back_label:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 118
    .local v8, "tvBackLabel":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 122
    sget v0, Lcom/example/resume2interview/R$id;->tv_description:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 124
    .local v9, "tvDescription":Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 128
    sget v0, Lcom/example/resume2interview/R$id;->tv_email_label:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 130
    .local v10, "tvEmailLabel":Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 134
    sget v0, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 136
    .local v11, "tvTitle":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 140
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v11}, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 137
    :cond_0
    goto :goto_0

    .line 131
    .end local v11    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 125
    .end local v10    # "tvEmailLabel":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 119
    .end local v9    # "tvDescription":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 113
    .end local v8    # "tvBackLabel":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 107
    .end local v7    # "etEmail":Landroid/widget/EditText;
    :cond_5
    goto :goto_0

    .line 101
    .end local v6    # "cardForm":Landroidx/cardview/widget/CardView;
    :cond_6
    goto :goto_0

    .line 95
    .end local v5    # "btnSendCode":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    nop

    .line 143
    .end local v4    # "btnBack":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;
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

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;
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

    .line 79
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_forgot_password:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentForgotPasswordBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
