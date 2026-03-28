.class public final Lcom/example/resume2interview/databinding/FragmentSplashBinding;
.super Ljava/lang/Object;
.source "FragmentSplashBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLogo:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAppName:Landroid/widget/TextView;

.field public final tvTagline:Landroid/widget/TextView;

.field public final vLogoBg:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "ivLogo"    # Landroid/widget/ImageView;
    .param p3, "tvAppName"    # Landroid/widget/TextView;
    .param p4, "tvTagline"    # Landroid/widget/TextView;
    .param p5, "vLogoBg"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "ivLogo",
            "tvAppName",
            "tvTagline",
            "vLogoBg"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->ivLogo:Landroid/widget/ImageView;

    .line 39
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->tvAppName:Landroid/widget/TextView;

    .line 40
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->tvTagline:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->vLogoBg:Landroid/view/View;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentSplashBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 71
    sget v0, Lcom/example/resume2interview/R$id;->iv_logo:I

    .line 72
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    .local v4, "ivLogo":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 77
    sget v0, Lcom/example/resume2interview/R$id;->tv_app_name:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "tvAppName":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 83
    sget v0, Lcom/example/resume2interview/R$id;->tv_tagline:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 85
    .local v6, "tvTagline":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 89
    sget v0, Lcom/example/resume2interview/R$id;->v_logo_bg:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 91
    .local v7, "vLogoBg":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 95
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentSplashBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/example/resume2interview/databinding/FragmentSplashBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v2

    .line 92
    :cond_0
    goto :goto_0

    .line 86
    .end local v7    # "vLogoBg":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 80
    .end local v6    # "tvTagline":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 74
    .end local v5    # "tvAppName":Landroid/widget/TextView;
    :cond_3
    nop

    .line 98
    .end local v4    # "ivLogo":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentSplashBinding;
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

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentSplashBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentSplashBinding;
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

    .line 58
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_splash:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentSplashBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentSplashBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
