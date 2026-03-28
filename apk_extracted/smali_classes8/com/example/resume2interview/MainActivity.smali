.class public final Lcom/example/resume2interview/MainActivity;
.super Lcom/example/resume2interview/Hilt_MainActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/resume2interview/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "binding",
        "Lcom/example/resume2interview/databinding/ActivityMainBinding;",
        "navController",
        "Landroidx/navigation/NavController;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

.field private navController:Landroidx/navigation/NavController;


# direct methods
.method public static synthetic $r8$lambda$5tR9FrPd9upx94K1SVAQ1wrJUbc(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    invoke-static {p0}, Lcom/example/resume2interview/MainActivity;->onCreate$lambda$2$lambda$1(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frC2VsyvfWopRBqkN68lqn6x_Jk(Landroid/view/MenuItem;)V
    .locals 0

    invoke-static {p0}, Lcom/example/resume2interview/MainActivity;->onCreate$lambda$0(Landroid/view/MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$isD-g7e7NWP8WHbkYFF3zFbU0hM(Lcom/example/resume2interview/MainActivity;Ljava/util/Set;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/example/resume2interview/MainActivity;->onCreate$lambda$2(Lcom/example/resume2interview/MainActivity;Ljava/util/Set;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/example/resume2interview/Hilt_MainActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$0(Landroid/view/MenuItem;)V
    .locals 1
    .param p0, "it"    # Landroid/view/MenuItem;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/example/resume2interview/MainActivity;Ljava/util/Set;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "this$0"    # Lcom/example/resume2interview/MainActivity;
    .param p1, "$hiddenDestinations"    # Ljava/util/Set;
    .param p3, "destination"    # Landroidx/navigation/NavDestination;

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$hiddenDestinations"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 0>"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "destination"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/example/resume2interview/MainActivity;->binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object p2, p2, Lcom/example/resume2interview/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string p4, "bottomNavigation"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .local p2, "nav":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    invoke-virtual {p3}, Landroidx/navigation/NavDestination;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 55
    invoke-virtual {p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const-wide/16 v0, 0xc8

    invoke-virtual {p4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    new-instance v0, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 57
    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 59
    :cond_1
    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    .line 60
    invoke-virtual {p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const-wide/16 v0, 0xfa

    invoke-virtual {p4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$2$lambda$1(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 1
    .param p0, "$nav"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "$nav"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Lcom/example/resume2interview/Hilt_MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/example/resume2interview/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/example/resume2interview/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/ActivityMainBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/resume2interview/MainActivity;->binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

    .line 21
    iget-object v0, p0, Lcom/example/resume2interview/MainActivity;->binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/example/resume2interview/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/example/resume2interview/MainActivity;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lcom/example/resume2interview/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 24
    sget v3, Lcom/example/resume2interview/R$id;->nav_host_fragment:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 23
    const-string v3, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 25
    .local v0, "navHostFragment":Landroidx/navigation/fragment/NavHostFragment;
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v3

    iput-object v3, p0, Lcom/example/resume2interview/MainActivity;->navController:Landroidx/navigation/NavController;

    .line 27
    iget-object v3, p0, Lcom/example/resume2interview/MainActivity;->binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    iget-object v3, v3, Lcom/example/resume2interview/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v4, "bottomNavigation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/material/navigation/NavigationBarView;

    iget-object v4, p0, Lcom/example/resume2interview/MainActivity;->navController:Landroidx/navigation/NavController;

    const-string v5, "navController"

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    invoke-static {v3, v4}, Landroidx/navigation/ui/BottomNavigationViewKt;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V

    .line 30
    iget-object v3, p0, Lcom/example/resume2interview/MainActivity;->binding:Lcom/example/resume2interview/databinding/ActivityMainBinding;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v1, v3, Lcom/example/resume2interview/databinding/ActivityMainBinding;->bottomNavigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v3, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V

    .line 36
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Integer;

    sget v3, Lcom/example/resume2interview/R$id;->splashFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 37
    sget v3, Lcom/example/resume2interview/R$id;->loginFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 36
    nop

    .line 38
    sget v3, Lcom/example/resume2interview/R$id;->signupFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 36
    nop

    .line 39
    sget v3, Lcom/example/resume2interview/R$id;->forgotPasswordFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 36
    nop

    .line 40
    sget v3, Lcom/example/resume2interview/R$id;->resetPasswordFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 36
    nop

    .line 41
    sget v3, Lcom/example/resume2interview/R$id;->interviewFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 36
    nop

    .line 42
    sget v3, Lcom/example/resume2interview/R$id;->uploadResumeFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 36
    nop

    .line 43
    sget v3, Lcom/example/resume2interview/R$id;->resumeSkillsFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 36
    nop

    .line 44
    sget v3, Lcom/example/resume2interview/R$id;->editProfileFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 36
    nop

    .line 45
    sget v3, Lcom/example/resume2interview/R$id;->reportDetailFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 36
    nop

    .line 46
    sget v3, Lcom/example/resume2interview/R$id;->interviewProgressFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 36
    nop

    .line 47
    sget v3, Lcom/example/resume2interview/R$id;->notificationsFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 36
    nop

    .line 48
    sget v3, Lcom/example/resume2interview/R$id;->preferencesFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 36
    nop

    .line 49
    sget v3, Lcom/example/resume2interview/R$id;->privacyPolicyFragment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 36
    nop

    .line 35
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 52
    .local v1, "hiddenDestinations":Ljava/util/Set;
    iget-object v3, p0, Lcom/example/resume2interview/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v3, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    new-instance v3, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/example/resume2interview/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/example/resume2interview/MainActivity;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 63
    return-void
.end method
