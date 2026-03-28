.class public abstract Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;
.super Lcom/example/resume2interview/ui/base/BaseFragment;
.source "Hilt_ProfileFragment.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        "VM:",
        "Lcom/example/resume2interview/ui/base/BaseViewModel<",
        "*>;>",
        "Lcom/example/resume2interview/ui/base/BaseFragment<",
        "TVB;TVM;>;",
        "Ldagger/hilt/internal/GeneratedComponentManagerHolder;"
    }
.end annotation


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private volatile componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindingInflater"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    .local p1, "bindingInflater":Lkotlin/jvm/functions/Function3;, "Lkotlin/jvm/functions/Function3<-Landroid/view/LayoutInflater;-Landroid/view/ViewGroup;-Ljava/lang/Boolean;+TVB;>;"
    invoke-direct {p0, p1}, Lcom/example/resume2interview/ui/base/BaseFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManagerLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->injected:Z

    .line 46
    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 68
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Lcom/example/resume2interview/ui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 71
    invoke-super {p0}, Lcom/example/resume2interview/ui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->isFragmentGetContextFixDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->disableGetContextFix:Z

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 2

    .line 101
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 31
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 1

    .line 96
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    new-instance v0, Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 92
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 77
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-super {p0}, Lcom/example/resume2interview/ui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->disableGetContextFix:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->initializeComponentContext()V

    .line 81
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentContext:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 120
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-super {p0}, Lcom/example/resume2interview/ui/base/BaseFragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getFragmentFactory(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 112
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    iget-boolean v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->injected:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->injected:Z

    .line 114
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/profile/ProfileFragment_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/ui/profile/ProfileFragment;

    invoke-interface {v0, v1}, Lcom/example/resume2interview/ui/profile/ProfileFragment_GeneratedInjector;->injectProfileFragment(Lcom/example/resume2interview/ui/profile/ProfileFragment;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-super {p0, p1}, Lcom/example/resume2interview/ui/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->componentContext:Landroid/content/ContextWrapper;

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->findActivity(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->initializeComponentContext()V

    .line 64
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->inject()V

    .line 65
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-super {p0, p1}, Lcom/example/resume2interview/ui/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->initializeComponentContext()V

    .line 53
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;->inject()V

    .line 54
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment;, "Lcom/example/resume2interview/ui/profile/Hilt_ProfileFragment<TVB;TVM;>;"
    invoke-super {p0, p1}, Lcom/example/resume2interview/ui/base/BaseFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method
