.class public final Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;
.super Ljava/lang/Object;
.source "EditProfileViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/example/resume2interview/ui/profile/EditProfileViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final userRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/UserRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "userRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/UserRepository;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/example/resume2interview/data/repository/UserRepository;",
            ">;)",
            "Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;"
        }
    .end annotation

    .line 38
    .local p0, "userRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/example/resume2interview/data/repository/UserRepository;>;"
    new-instance v0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/example/resume2interview/data/repository/UserRepository;)Lcom/example/resume2interview/ui/profile/EditProfileViewModel;
    .locals 1
    .param p0, "userRepository"    # Lcom/example/resume2interview/data/repository/UserRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRepository"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    invoke-direct {v0, p0}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel;-><init>(Lcom/example/resume2interview/data/repository/UserRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/data/repository/UserRepository;

    invoke-static {v0}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;->newInstance(Lcom/example/resume2interview/data/repository/UserRepository;)Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/profile/EditProfileViewModel_Factory;->get()Lcom/example/resume2interview/ui/profile/EditProfileViewModel;

    move-result-object v0

    return-object v0
.end method
