.class public final Lcom/example/resume2interview/ui/profile/PreferencesFragment;
.super Landroidx/fragment/app/Fragment;
.source "PreferencesFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/profile/PreferencesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;",
        "binding",
        "getBinding",
        "()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;",
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
.field private _binding:Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;


# direct methods
.method public static synthetic $r8$lambda$ISrKIcM1X3ll7OZ1HLzh-DMZiaQ(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->onViewCreated$lambda$0(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSAolzH4PJnQZOOTfyxGI0TaCZQ(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->onViewCreated$lambda$1(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/PreferencesFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 31
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/profile/PreferencesFragment;
    .param p1, "$prefs"    # Landroid/content/SharedPreferences;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rgDifficulty:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 44
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbBeginner:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "beginner"

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "advanced"

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "intermediate"

    .line 43
    :goto_0
    nop

    .line 48
    .local v0, "selected":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "difficulty"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Preferences saved!"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
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

    .line 22
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    .line 23
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->_binding:Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    .line 56
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->btnBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/resume2interview/ui/profile/PreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/profile/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferences_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "difficulty"

    const-string v2, "intermediate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "saved":Ljava/lang/String;
    nop

    .line 37
    const-string v2, "beginner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rgDifficulty:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbBeginner:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 38
    :cond_0
    const-string v2, "advanced"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rgDifficulty:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rgDifficulty:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->rbIntermediate:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 42
    :goto_0
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment;->getBinding()Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/example/resume2interview/databinding/FragmentPreferencesBinding;->btnSavePreferences:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/example/resume2interview/ui/profile/PreferencesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/example/resume2interview/ui/profile/PreferencesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/ui/profile/PreferencesFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
