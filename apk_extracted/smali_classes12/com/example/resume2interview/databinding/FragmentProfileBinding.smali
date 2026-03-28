.class public final Lcom/example/resume2interview/databinding/FragmentProfileBinding;
.super Ljava/lang/Object;
.source "FragmentProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnEditProfile:Lcom/google/android/material/button/MaterialButton;

.field public final btnSignOut:Landroidx/cardview/widget/CardView;

.field public final cardSettings:Landroidx/cardview/widget/CardView;

.field public final cardStats:Landroidx/cardview/widget/CardView;

.field public final frameAvatar:Landroid/widget/FrameLayout;

.field public final ivAvatar:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvEmail:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvNotifications:Landroid/widget/TextView;

.field public final tvPreferences:Landroid/widget/TextView;

.field public final tvPrivacyPolicy:Landroid/widget/TextView;

.field public final tvStatInterviews:Landroid/widget/TextView;

.field public final tvStatResumes:Landroid/widget/TextView;

.field public final tvStatScore:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnEditProfile"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "btnSignOut"    # Landroidx/cardview/widget/CardView;
    .param p4, "cardSettings"    # Landroidx/cardview/widget/CardView;
    .param p5, "cardStats"    # Landroidx/cardview/widget/CardView;
    .param p6, "frameAvatar"    # Landroid/widget/FrameLayout;
    .param p7, "ivAvatar"    # Landroid/widget/ImageView;
    .param p8, "tvEmail"    # Landroid/widget/TextView;
    .param p9, "tvName"    # Landroid/widget/TextView;
    .param p10, "tvNotifications"    # Landroid/widget/TextView;
    .param p11, "tvPreferences"    # Landroid/widget/TextView;
    .param p12, "tvPrivacyPolicy"    # Landroid/widget/TextView;
    .param p13, "tvStatInterviews"    # Landroid/widget/TextView;
    .param p14, "tvStatResumes"    # Landroid/widget/TextView;
    .param p15, "tvStatScore"    # Landroid/widget/TextView;
    .param p16, "tvTitle"    # Landroid/widget/TextView;
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
            "btnEditProfile",
            "btnSignOut",
            "cardSettings",
            "cardStats",
            "frameAvatar",
            "ivAvatar",
            "tvEmail",
            "tvName",
            "tvNotifications",
            "tvPreferences",
            "tvPrivacyPolicy",
            "tvStatInterviews",
            "tvStatResumes",
            "tvStatScore",
            "tvTitle"
        }
    .end annotation

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 79
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->btnEditProfile:Lcom/google/android/material/button/MaterialButton;

    .line 80
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->btnSignOut:Landroidx/cardview/widget/CardView;

    .line 81
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->cardSettings:Landroidx/cardview/widget/CardView;

    .line 82
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->cardStats:Landroidx/cardview/widget/CardView;

    .line 83
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->frameAvatar:Landroid/widget/FrameLayout;

    .line 84
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->ivAvatar:Landroid/widget/ImageView;

    .line 85
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvEmail:Landroid/widget/TextView;

    .line 86
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvName:Landroid/widget/TextView;

    .line 87
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvNotifications:Landroid/widget/TextView;

    .line 88
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvPreferences:Landroid/widget/TextView;

    .line 89
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvPrivacyPolicy:Landroid/widget/TextView;

    .line 90
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatInterviews:Landroid/widget/TextView;

    .line 91
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatResumes:Landroid/widget/TextView;

    .line 92
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvStatScore:Landroid/widget/TextView;

    .line 93
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->tvTitle:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentProfileBinding;
    .locals 20
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->btn_edit_profile:I

    .line 124
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 125
    .local v5, "btnEditProfile":Lcom/google/android/material/button/MaterialButton;
    if-eqz v5, :cond_e

    .line 129
    sget v1, Lcom/example/resume2interview/R$id;->btn_sign_out:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 131
    .local v6, "btnSignOut":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_d

    .line 135
    sget v1, Lcom/example/resume2interview/R$id;->card_settings:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/cardview/widget/CardView;

    .line 137
    .local v7, "cardSettings":Landroidx/cardview/widget/CardView;
    if-eqz v7, :cond_c

    .line 141
    sget v1, Lcom/example/resume2interview/R$id;->card_stats:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/cardview/widget/CardView;

    .line 143
    .local v8, "cardStats":Landroidx/cardview/widget/CardView;
    if-eqz v8, :cond_b

    .line 147
    sget v1, Lcom/example/resume2interview/R$id;->frame_avatar:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    .line 149
    .local v9, "frameAvatar":Landroid/widget/FrameLayout;
    if-eqz v9, :cond_a

    .line 153
    sget v1, Lcom/example/resume2interview/R$id;->iv_avatar:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    .line 155
    .local v10, "ivAvatar":Landroid/widget/ImageView;
    if-eqz v10, :cond_9

    .line 159
    sget v1, Lcom/example/resume2interview/R$id;->tv_email:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 161
    .local v11, "tvEmail":Landroid/widget/TextView;
    if-eqz v11, :cond_8

    .line 165
    sget v1, Lcom/example/resume2interview/R$id;->tv_name:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 167
    .local v12, "tvName":Landroid/widget/TextView;
    if-eqz v12, :cond_7

    .line 171
    sget v1, Lcom/example/resume2interview/R$id;->tv_notifications:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 173
    .local v13, "tvNotifications":Landroid/widget/TextView;
    if-eqz v13, :cond_6

    .line 177
    sget v1, Lcom/example/resume2interview/R$id;->tv_preferences:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 179
    .local v14, "tvPreferences":Landroid/widget/TextView;
    if-eqz v14, :cond_5

    .line 183
    sget v1, Lcom/example/resume2interview/R$id;->tv_privacy_policy:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 185
    .local v15, "tvPrivacyPolicy":Landroid/widget/TextView;
    if-eqz v15, :cond_4

    .line 189
    sget v1, Lcom/example/resume2interview/R$id;->tv_stat_interviews:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 191
    .local v16, "tvStatInterviews":Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 195
    sget v1, Lcom/example/resume2interview/R$id;->tv_stat_resumes:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 197
    .local v17, "tvStatResumes":Landroid/widget/TextView;
    if-eqz v17, :cond_2

    .line 201
    sget v1, Lcom/example/resume2interview/R$id;->tv_stat_score:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 203
    .local v18, "tvStatScore":Landroid/widget/TextView;
    if-eqz v18, :cond_1

    .line 207
    sget v1, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 209
    .local v19, "tvTitle":Landroid/widget/TextView;
    if-eqz v19, :cond_0

    .line 213
    new-instance v3, Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v19}, Lcom/example/resume2interview/databinding/FragmentProfileBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 210
    :cond_0
    goto :goto_0

    .line 204
    .end local v19    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 198
    .end local v18    # "tvStatScore":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 192
    .end local v17    # "tvStatResumes":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 186
    .end local v16    # "tvStatInterviews":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 180
    .end local v15    # "tvPrivacyPolicy":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 174
    .end local v14    # "tvPreferences":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 168
    .end local v13    # "tvNotifications":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 162
    .end local v12    # "tvName":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 156
    .end local v11    # "tvEmail":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 150
    .end local v10    # "ivAvatar":Landroid/widget/ImageView;
    :cond_a
    goto :goto_0

    .line 144
    .end local v9    # "frameAvatar":Landroid/widget/FrameLayout;
    :cond_b
    goto :goto_0

    .line 138
    .end local v8    # "cardStats":Landroidx/cardview/widget/CardView;
    :cond_c
    goto :goto_0

    .line 132
    .end local v7    # "cardSettings":Landroidx/cardview/widget/CardView;
    :cond_d
    goto :goto_0

    .line 126
    .end local v6    # "btnSignOut":Landroidx/cardview/widget/CardView;
    :cond_e
    nop

    .line 217
    .end local v5    # "btnEditProfile":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentProfileBinding;
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

    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentProfileBinding;
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

    .line 110
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentProfileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentProfileBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
