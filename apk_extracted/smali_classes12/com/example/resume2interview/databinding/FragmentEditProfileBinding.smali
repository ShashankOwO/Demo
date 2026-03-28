.class public final Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;
.super Ljava/lang/Object;
.source "FragmentEditProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnSave:Landroid/widget/TextView;

.field public final etBio:Landroid/widget/EditText;

.field public final etEmail:Landroid/widget/EditText;

.field public final etJobTitle:Landroid/widget/EditText;

.field public final etLocation:Landroid/widget/EditText;

.field public final etName:Landroid/widget/EditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "btnBack"    # Landroid/widget/ImageView;
    .param p3, "btnSave"    # Landroid/widget/TextView;
    .param p4, "etBio"    # Landroid/widget/EditText;
    .param p5, "etEmail"    # Landroid/widget/EditText;
    .param p6, "etJobTitle"    # Landroid/widget/EditText;
    .param p7, "etLocation"    # Landroid/widget/EditText;
    .param p8, "etName"    # Landroid/widget/EditText;
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
            "btnSave",
            "etBio",
            "etEmail",
            "etJobTitle",
            "etLocation",
            "etName",
            "tvTitle"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->btnBack:Landroid/widget/ImageView;

    .line 54
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->btnSave:Landroid/widget/TextView;

    .line 55
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etBio:Landroid/widget/EditText;

    .line 56
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etEmail:Landroid/widget/EditText;

    .line 57
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etJobTitle:Landroid/widget/EditText;

    .line 58
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etLocation:Landroid/widget/EditText;

    .line 59
    iput-object p8, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->etName:Landroid/widget/EditText;

    .line 60
    iput-object p9, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->tvTitle:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;
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

    .line 90
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 91
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 92
    .local v4, "btnBack":Landroid/widget/ImageView;
    if-eqz v4, :cond_7

    .line 96
    sget v0, Lcom/example/resume2interview/R$id;->btn_save:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 98
    .local v5, "btnSave":Landroid/widget/TextView;
    if-eqz v5, :cond_6

    .line 102
    sget v0, Lcom/example/resume2interview/R$id;->et_bio:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 104
    .local v6, "etBio":Landroid/widget/EditText;
    if-eqz v6, :cond_5

    .line 108
    sget v0, Lcom/example/resume2interview/R$id;->et_email:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 110
    .local v7, "etEmail":Landroid/widget/EditText;
    if-eqz v7, :cond_4

    .line 114
    sget v0, Lcom/example/resume2interview/R$id;->et_job_title:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 116
    .local v8, "etJobTitle":Landroid/widget/EditText;
    if-eqz v8, :cond_3

    .line 120
    sget v0, Lcom/example/resume2interview/R$id;->et_location:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    .line 122
    .local v9, "etLocation":Landroid/widget/EditText;
    if-eqz v9, :cond_2

    .line 126
    sget v0, Lcom/example/resume2interview/R$id;->et_name:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    .line 128
    .local v10, "etName":Landroid/widget/EditText;
    if-eqz v10, :cond_1

    .line 132
    sget v0, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 134
    .local v11, "tvTitle":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 138
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v11}, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v2

    .line 135
    :cond_0
    goto :goto_0

    .line 129
    .end local v11    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 123
    .end local v10    # "etName":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 117
    .end local v9    # "etLocation":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 111
    .end local v8    # "etJobTitle":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 105
    .end local v7    # "etEmail":Landroid/widget/EditText;
    :cond_5
    goto :goto_0

    .line 99
    .end local v6    # "etBio":Landroid/widget/EditText;
    :cond_6
    goto :goto_0

    .line 93
    .end local v5    # "btnSave":Landroid/widget/TextView;
    :cond_7
    nop

    .line 141
    .end local v4    # "btnBack":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;
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

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;
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

    .line 77
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_edit_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentEditProfileBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
