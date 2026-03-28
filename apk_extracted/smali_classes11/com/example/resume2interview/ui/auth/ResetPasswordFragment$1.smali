.class final synthetic Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ResetPasswordFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/resume2interview/ui/auth/ResetPasswordFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "Ljava/lang/Boolean;",
        "Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;

    invoke-direct {v0}, Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;-><init>()V

    sput-object v0, Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;

    const-string v4, "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-string v3, "inflate"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;
    .locals 1
    .param p1, "p0"    # Landroid/view/LayoutInflater;
    .param p2, "p1"    # Landroid/view/ViewGroup;
    .param p3, "p2"    # Z

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2, p3}, Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/resume2interview/ui/auth/ResetPasswordFragment$1;->invoke(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResetPasswordBinding;

    move-result-object v0

    return-object v0
.end method
