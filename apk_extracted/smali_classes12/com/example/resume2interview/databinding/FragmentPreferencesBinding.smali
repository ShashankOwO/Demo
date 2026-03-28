.class public final Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;
.super Ljava/lang/Object;
.source "FragmentPreferencesBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageButton;

.field public final btnSavePreferences:Lcom/google/android/material/button/MaterialButton;

.field public final rbAdvanced:Landroid/widget/RadioButton;

.field public final rbBeginner:Landroid/widget/RadioButton;

.field public final rbIntermediate:Landroid/widget/RadioButton;

.field public final rgDifficulty:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnBack"    # Landroid/widget/ImageButton;
    .param p3, "btnSavePreferences"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "rbAdvanced"    # Landroid/widget/RadioButton;
    .param p5, "rbBeginner"    # Landroid/widget/RadioButton;
    .param p6, "rbIntermediate"    # Landroid/widget/RadioButton;
    .param p7, "rgDifficulty"    # Landroid/widget/RadioGroup;
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
            "btnBack",
            "btnSavePreferences",
            "rbAdvanced",
            "rbBeginner",
            "rbIntermediate",
            "rgDifficulty"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rootView:Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->btnBack:Landroid/widget/ImageButton;

    .line 49
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->btnSavePreferences:Lcom/google/android/material/button/MaterialButton;

    .line 50
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbAdvanced:Landroid/widget/RadioButton;

    .line 51
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbBeginner:Landroid/widget/RadioButton;

    .line 52
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbIntermediate:Landroid/widget/RadioButton;

    .line 53
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rgDifficulty:Landroid/widget/RadioGroup;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;
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

    .line 83
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 84
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    .line 85
    .local v4, "btnBack":Landroid/widget/ImageButton;
    if-eqz v4, :cond_5

    .line 89
    sget v0, Lcom/example/resume2interview/R$id;->btn_save_preferences:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 91
    .local v5, "btnSavePreferences":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_4

    .line 95
    sget v0, Lcom/example/resume2interview/R$id;->rb_advanced:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioButton;

    .line 97
    .local v6, "rbAdvanced":Landroid/widget/RadioButton;
    if-eqz v6, :cond_3

    .line 101
    sget v0, Lcom/example/resume2interview/R$id;->rb_beginner:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    .line 103
    .local v7, "rbBeginner":Landroid/widget/RadioButton;
    if-eqz v7, :cond_2

    .line 107
    sget v0, Lcom/example/resume2interview/R$id;->rb_intermediate:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    .line 109
    .local v8, "rbIntermediate":Landroid/widget/RadioButton;
    if-eqz v8, :cond_1

    .line 113
    sget v0, Lcom/example/resume2interview/R$id;->rg_difficulty:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioGroup;

    .line 115
    .local v9, "rgDifficulty":Landroid/widget/RadioGroup;
    if-eqz v9, :cond_0

    .line 119
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    return-object v2

    .line 116
    :cond_0
    goto :goto_0

    .line 110
    .end local v9    # "rgDifficulty":Landroid/widget/RadioGroup;
    :cond_1
    goto :goto_0

    .line 104
    .end local v8    # "rbIntermediate":Landroid/widget/RadioButton;
    :cond_2
    goto :goto_0

    .line 98
    .end local v7    # "rbBeginner":Landroid/widget/RadioButton;
    :cond_3
    goto :goto_0

    .line 92
    .end local v6    # "rbAdvanced":Landroid/widget/RadioButton;
    :cond_4
    goto :goto_0

    .line 86
    .end local v5    # "btnSavePreferences":Lcom/google/android/material/button/MaterialButton;
    :cond_5
    nop

    .line 122
    .end local v4    # "btnBack":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;
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

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;
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

    .line 70
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_preferences:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
