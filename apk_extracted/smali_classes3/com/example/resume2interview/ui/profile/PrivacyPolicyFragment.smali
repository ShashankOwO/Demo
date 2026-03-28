.class public final Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;
.super Landroidx/fragment/app/Fragment;
.source "PrivacyPolicyFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;",
        "binding",
        "getBinding",
        "()Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onViewCreated",
        "view",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _binding:Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;


# direct methods
.method public static synthetic $r8$lambda$eV582x2CrRWNKclsL4LWhnOp_0Y(Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->onViewCreated$lambda$0(Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getBinding()Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    .line 22
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    .line 35
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentPrivacyPolicyBinding;->btnBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/profile/PrivacyPolicyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
