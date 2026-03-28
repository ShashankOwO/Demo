.class public final Lcom/example/resume2interview/databinding/FragmentSignupBinding;
.super Ljava/lang/Object;
.source "FragmentSignupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCreateAccount:Lcom/google/android/material/button/MaterialButton;

.field public final cardForm:Landroidx/cardview/widget/CardView;

.field public final etEmail:Landroid/widget/EditText;

.field public final etFullName:Landroid/widget/EditText;

.field public final etPassword:Landroid/widget/EditText;

.field public final ivEye:Landroid/widget/ImageView;

.field public final layoutPassword:Landroid/widget/FrameLayout;

.field public final layoutTab:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvBrand:Landroid/widget/TextView;

.field public final tvLogin:Landroid/widget/TextView;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvTerms:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnCreateAccount"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "cardForm"    # Landroidx/cardview/widget/CardView;
    .param p4, "etEmail"    # Landroid/widget/EditText;
    .param p5, "etFullName"    # Landroid/widget/EditText;
    .param p6, "etPassword"    # Landroid/widget/EditText;
    .param p7, "ivEye"    # Landroid/widget/ImageView;
    .param p8, "layoutPassword"    # Landroid/widget/FrameLayout;
    .param p9, "layoutTab"    # Landroid/widget/LinearLayout;
    .param p10, "tvBrand"    # Landroid/widget/TextView;
    .param p11, "tvLogin"    # Landroid/widget/TextView;
    .param p12, "tvSubtitle"    # Landroid/widget/TextView;
    .param p13, "tvTerms"    # Landroid/widget/TextView;
    .param p14, "tvTitle"    # Landroid/widget/TextView;
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnCreateAccount",
            "cardForm",
            "etEmail",
            "etFullName",
            "etPassword",
            "ivEye",
            "layoutPassword",
            "layoutTab",
            "tvBrand",
            "tvLogin",
            "tvSubtitle",
            "tvTerms",
            "tvTitle"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 74
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->btnCreateAccount:Lcom/google/android/material/button/MaterialButton;

    .line 75
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->cardForm:Landroidx/cardview/widget/CardView;

    .line 76
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->etEmail:Landroid/widget/EditText;

    .line 77
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->etFullName:Landroid/widget/EditText;

    .line 78
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->etPassword:Landroid/widget/EditText;

    .line 79
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->ivEye:Landroid/widget/ImageView;

    .line 80
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->layoutPassword:Landroid/widget/FrameLayout;

    .line 81
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->layoutTab:Landroid/widget/LinearLayout;

    .line 82
    iput-object p10, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->tvBrand:Landroid/widget/TextView;

    .line 83
    iput-object p11, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->tvLogin:Landroid/widget/TextView;

    .line 84
    iput-object p12, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->tvSubtitle:Landroid/widget/TextView;

    .line 85
    iput-object p13, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->tvTerms:Landroid/widget/TextView;

    .line 86
    iput-object p14, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->tvTitle:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentSignupBinding;
    .locals 18
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->btn_create_account:I

    .line 117
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 118
    .local v5, "btnCreateAccount":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_c

    .line 122
    sget v1, Lcom/example/resume2interview/R$id;->card_form:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 124
    .local v6, "cardForm":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_b

    .line 128
    sget v1, Lcom/example/resume2interview/R$id;->et_email:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    .line 130
    .local v7, "etEmail":Landroid/widget/EditText;
    if-eqz v7, :cond_a

    .line 134
    sget v1, Lcom/example/resume2interview/R$id;->et_full_name:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    .line 136
    .local v8, "etFullName":Landroid/widget/EditText;
    if-eqz v8, :cond_9

    .line 140
    sget v1, Lcom/example/resume2interview/R$id;->et_password:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 142
    .local v9, "etPassword":Landroid/widget/EditText;
    if-eqz v9, :cond_8

    .line 146
    sget v1, Lcom/example/resume2interview/R$id;->iv_eye:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    .line 148
    .local v10, "ivEye":Landroid/widget/ImageView;
    if-eqz v10, :cond_7

    .line 152
    sget v1, Lcom/example/resume2interview/R$id;->layout_password:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    .line 154
    .local v11, "layoutPassword":Landroid/widget/FrameLayout;
    if-eqz v11, :cond_6

    .line 158
    sget v1, Lcom/example/resume2interview/R$id;->layout_tab:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    .line 160
    .local v12, "layoutTab":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_5

    .line 164
    sget v1, Lcom/example/resume2interview/R$id;->tv_brand:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 166
    .local v13, "tvBrand":Landroid/widget/TextView;
    if-eqz v13, :cond_4

    .line 170
    sget v1, Lcom/example/resume2interview/R$id;->tv_login:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 172
    .local v14, "tvLogin":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 176
    sget v1, Lcom/example/resume2interview/R$id;->tv_subtitle:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 178
    .local v15, "tvSubtitle":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 182
    sget v1, Lcom/example/resume2interview/R$id;->tv_terms:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 184
    .local v16, "tvTerms":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 188
    sget v1, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 190
    .local v17, "tvTitle":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 194
    new-instance v3, Lcom/example/resume2interview/databinding/FragmentSignupBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v17}, Lcom/example/resume2interview/databinding/FragmentSignupBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 191
    :cond_0
    goto :goto_0

    .line 185
    .end local v17    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 179
    .end local v16    # "tvTerms":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 173
    .end local v15    # "tvSubtitle":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 167
    .end local v14    # "tvLogin":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 161
    .end local v13    # "tvBrand":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 155
    .end local v12    # "layoutTab":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 149
    .end local v11    # "layoutPassword":Landroid/widget/FrameLayout;
    :cond_7
    goto :goto_0

    .line 143
    .end local v10    # "ivEye":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 137
    .end local v9    # "etPassword":Landroid/widget/EditText;
    :cond_9
    goto :goto_0

    .line 131
    .end local v8    # "etFullName":Landroid/widget/EditText;
    :cond_a
    goto :goto_0

    .line 125
    .end local v7    # "etEmail":Landroid/widget/EditText;
    :cond_b
    goto :goto_0

    .line 119
    .end local v6    # "cardForm":Landroidx/cardview/widget/CardView;
    :cond_c
    nop

    .line 198
    .end local v5    # "btnCreateAccount":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentSignupBinding;
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

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentSignupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentSignupBinding;
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

    .line 103
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_signup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentSignupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentSignupBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
