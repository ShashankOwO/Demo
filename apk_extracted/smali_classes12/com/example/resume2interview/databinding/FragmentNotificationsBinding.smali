.class public final Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;
.super Ljava/lang/Object;
.source "FragmentNotificationsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final switchEmailAlerts:Landroid/widget/Switch;

.field public final switchInterviewReminders:Landroid/widget/Switch;

.field public final switchProductUpdates:Landroid/widget/Switch;

.field public final switchPushNotifications:Landroid/widget/Switch;

.field public final switchWeeklySummary:Landroid/widget/Switch;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnBack"    # Landroid/widget/ImageButton;
    .param p3, "switchEmailAlerts"    # Landroid/widget/Switch;
    .param p4, "switchInterviewReminders"    # Landroid/widget/Switch;
    .param p5, "switchProductUpdates"    # Landroid/widget/Switch;
    .param p6, "switchPushNotifications"    # Landroid/widget/Switch;
    .param p7, "switchWeeklySummary"    # Landroid/widget/Switch;
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
            "switchEmailAlerts",
            "switchInterviewReminders",
            "switchProductUpdates",
            "switchPushNotifications",
            "switchWeeklySummary"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->btnBack:Landroid/widget/ImageButton;

    .line 47
    iput-object p3, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->switchEmailAlerts:Landroid/widget/Switch;

    .line 48
    iput-object p4, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->switchInterviewReminders:Landroid/widget/Switch;

    .line 49
    iput-object p5, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->switchProductUpdates:Landroid/widget/Switch;

    .line 50
    iput-object p6, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->switchPushNotifications:Landroid/widget/Switch;

    .line 51
    iput-object p7, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->switchWeeklySummary:Landroid/widget/Switch;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;
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

    .line 81
    sget v0, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 82
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    .line 83
    .local v4, "btnBack":Landroid/widget/ImageButton;
    if-eqz v4, :cond_5

    .line 87
    sget v0, Lcom/example/resume2interview/R$id;->switch_email_alerts:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Switch;

    .line 89
    .local v5, "switchEmailAlerts":Landroid/widget/Switch;
    if-eqz v5, :cond_4

    .line 93
    sget v0, Lcom/example/resume2interview/R$id;->switch_interview_reminders:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Switch;

    .line 95
    .local v6, "switchInterviewReminders":Landroid/widget/Switch;
    if-eqz v6, :cond_3

    .line 99
    sget v0, Lcom/example/resume2interview/R$id;->switch_product_updates:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Switch;

    .line 101
    .local v7, "switchProductUpdates":Landroid/widget/Switch;
    if-eqz v7, :cond_2

    .line 105
    sget v0, Lcom/example/resume2interview/R$id;->switch_push_notifications:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Switch;

    .line 107
    .local v8, "switchPushNotifications":Landroid/widget/Switch;
    if-eqz v8, :cond_1

    .line 111
    sget v0, Lcom/example/resume2interview/R$id;->switch_weekly_summary:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Switch;

    .line 113
    .local v9, "switchWeeklySummary":Landroid/widget/Switch;
    if-eqz v9, :cond_0

    .line 117
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;)V

    return-object v2

    .line 114
    :cond_0
    goto :goto_0

    .line 108
    .end local v9    # "switchWeeklySummary":Landroid/widget/Switch;
    :cond_1
    goto :goto_0

    .line 102
    .end local v8    # "switchPushNotifications":Landroid/widget/Switch;
    :cond_2
    goto :goto_0

    .line 96
    .end local v7    # "switchProductUpdates":Landroid/widget/Switch;
    :cond_3
    goto :goto_0

    .line 90
    .end local v6    # "switchInterviewReminders":Landroid/widget/Switch;
    :cond_4
    goto :goto_0

    .line 84
    .end local v5    # "switchEmailAlerts":Landroid/widget/Switch;
    :cond_5
    nop

    .line 121
    .end local v4    # "btnBack":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;
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

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;
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

    .line 68
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_notifications:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentNotificationsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
