.class public final Lcom/example/resume2interview/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardFocus1:Landroidx/cardview/widget/CardView;

.field public final cardFocus2:Landroidx/cardview/widget/CardView;

.field public final cardProgress:Landroidx/cardview/widget/CardView;

.field public final cardResumeStatus:Landroidx/cardview/widget/CardView;

.field public final cardStartInterview:Landroidx/cardview/widget/CardView;

.field public final cardUpdateResume:Landroidx/cardview/widget/CardView;

.field public final ivChartIcon:Landroid/widget/ImageView;

.field public final ivResumeArrow:Landroid/widget/ImageView;

.field public final ivResumeIcon:Landroid/widget/ImageView;

.field public final ivStartInterviewIcon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final rowCta:Landroid/widget/LinearLayout;

.field public final tvAvatar:Landroid/widget/TextView;

.field public final tvFocusTitle:Landroid/widget/TextView;

.field public final tvLastUpdated:Landroid/widget/TextView;

.field public final tvLatestScore:Landroid/widget/TextView;

.field public final tvProgressTitle:Landroid/widget/TextView;

.field public final tvResumeStatus:Landroid/widget/TextView;

.field public final tvResumeTitle:Landroid/widget/TextView;

.field public final tvSessionCount:Landroid/widget/TextView;

.field public final tvStartInterview:Landroid/widget/TextView;

.field public final tvStatusBadge:Landroid/widget/TextView;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvWelcome:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "cardFocus1"    # Landroidx/cardview/widget/CardView;
    .param p3, "cardFocus2"    # Landroidx/cardview/widget/CardView;
    .param p4, "cardProgress"    # Landroidx/cardview/widget/CardView;
    .param p5, "cardResumeStatus"    # Landroidx/cardview/widget/CardView;
    .param p6, "cardStartInterview"    # Landroidx/cardview/widget/CardView;
    .param p7, "cardUpdateResume"    # Landroidx/cardview/widget/CardView;
    .param p8, "ivChartIcon"    # Landroid/widget/ImageView;
    .param p9, "ivResumeArrow"    # Landroid/widget/ImageView;
    .param p10, "ivResumeIcon"    # Landroid/widget/ImageView;
    .param p11, "ivStartInterviewIcon"    # Landroid/widget/ImageView;
    .param p12, "rowCta"    # Landroid/widget/LinearLayout;
    .param p13, "tvAvatar"    # Landroid/widget/TextView;
    .param p14, "tvFocusTitle"    # Landroid/widget/TextView;
    .param p15, "tvLastUpdated"    # Landroid/widget/TextView;
    .param p16, "tvLatestScore"    # Landroid/widget/TextView;
    .param p17, "tvProgressTitle"    # Landroid/widget/TextView;
    .param p18, "tvResumeStatus"    # Landroid/widget/TextView;
    .param p19, "tvResumeTitle"    # Landroid/widget/TextView;
    .param p20, "tvSessionCount"    # Landroid/widget/TextView;
    .param p21, "tvStartInterview"    # Landroid/widget/TextView;
    .param p22, "tvStatusBadge"    # Landroid/widget/TextView;
    .param p23, "tvSubtitle"    # Landroid/widget/TextView;
    .param p24, "tvWelcome"    # Landroid/widget/TextView;
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
            "cardFocus1",
            "cardFocus2",
            "cardProgress",
            "cardResumeStatus",
            "cardStartInterview",
            "cardUpdateResume",
            "ivChartIcon",
            "ivResumeArrow",
            "ivResumeIcon",
            "ivStartInterviewIcon",
            "rowCta",
            "tvAvatar",
            "tvFocusTitle",
            "tvLastUpdated",
            "tvLatestScore",
            "tvProgressTitle",
            "tvResumeStatus",
            "tvResumeTitle",
            "tvSessionCount",
            "tvStartInterview",
            "tvStatusBadge",
            "tvSubtitle",
            "tvWelcome"
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 106
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardFocus1:Landroidx/cardview/widget/CardView;

    .line 107
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardFocus2:Landroidx/cardview/widget/CardView;

    .line 108
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardProgress:Landroidx/cardview/widget/CardView;

    .line 109
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardResumeStatus:Landroidx/cardview/widget/CardView;

    .line 110
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardStartInterview:Landroidx/cardview/widget/CardView;

    .line 111
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->cardUpdateResume:Landroidx/cardview/widget/CardView;

    .line 112
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->ivChartIcon:Landroid/widget/ImageView;

    .line 113
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->ivResumeArrow:Landroid/widget/ImageView;

    .line 114
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->ivResumeIcon:Landroid/widget/ImageView;

    .line 115
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->ivStartInterviewIcon:Landroid/widget/ImageView;

    .line 116
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->rowCta:Landroid/widget/LinearLayout;

    .line 117
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvAvatar:Landroid/widget/TextView;

    .line 118
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvFocusTitle:Landroid/widget/TextView;

    .line 119
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvLastUpdated:Landroid/widget/TextView;

    .line 120
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvLatestScore:Landroid/widget/TextView;

    .line 121
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvProgressTitle:Landroid/widget/TextView;

    .line 122
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvResumeStatus:Landroid/widget/TextView;

    .line 123
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvResumeTitle:Landroid/widget/TextView;

    .line 124
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvSessionCount:Landroid/widget/TextView;

    .line 125
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvStartInterview:Landroid/widget/TextView;

    .line 126
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvStatusBadge:Landroid/widget/TextView;

    .line 127
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvSubtitle:Landroid/widget/TextView;

    .line 128
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->tvWelcome:Landroid/widget/TextView;

    .line 129
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentHomeBinding;
    .locals 28
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 158
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->card_focus_1:I

    .line 159
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 160
    .local v5, "cardFocus1":Landroidx/cardview/widget/CardView;
    if-eqz v5, :cond_16

    .line 164
    sget v1, Lcom/example/resume2interview/R$id;->card_focus_2:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 166
    .local v6, "cardFocus2":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_15

    .line 170
    sget v1, Lcom/example/resume2interview/R$id;->card_progress:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/cardview/widget/CardView;

    .line 172
    .local v7, "cardProgress":Landroidx/cardview/widget/CardView;
    if-eqz v7, :cond_14

    .line 176
    sget v1, Lcom/example/resume2interview/R$id;->card_resume_status:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/cardview/widget/CardView;

    .line 178
    .local v8, "cardResumeStatus":Landroidx/cardview/widget/CardView;
    if-eqz v8, :cond_13

    .line 182
    sget v1, Lcom/example/resume2interview/R$id;->card_start_interview:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/cardview/widget/CardView;

    .line 184
    .local v9, "cardStartInterview":Landroidx/cardview/widget/CardView;
    if-eqz v9, :cond_12

    .line 188
    sget v1, Lcom/example/resume2interview/R$id;->card_update_resume:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/cardview/widget/CardView;

    .line 190
    .local v10, "cardUpdateResume":Landroidx/cardview/widget/CardView;
    if-eqz v10, :cond_11

    .line 194
    sget v1, Lcom/example/resume2interview/R$id;->iv_chart_icon:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    .line 196
    .local v11, "ivChartIcon":Landroid/widget/ImageView;
    if-eqz v11, :cond_10

    .line 200
    sget v1, Lcom/example/resume2interview/R$id;->iv_resume_arrow:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    .line 202
    .local v12, "ivResumeArrow":Landroid/widget/ImageView;
    if-eqz v12, :cond_f

    .line 206
    sget v1, Lcom/example/resume2interview/R$id;->iv_resume_icon:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    .line 208
    .local v13, "ivResumeIcon":Landroid/widget/ImageView;
    if-eqz v13, :cond_e

    .line 212
    sget v1, Lcom/example/resume2interview/R$id;->iv_start_interview_icon:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    .line 214
    .local v14, "ivStartInterviewIcon":Landroid/widget/ImageView;
    if-eqz v14, :cond_d

    .line 218
    sget v1, Lcom/example/resume2interview/R$id;->row_cta:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    .line 220
    .local v15, "rowCta":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_c

    .line 224
    sget v1, Lcom/example/resume2interview/R$id;->tv_avatar:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 226
    .local v16, "tvAvatar":Landroid/widget/TextView;
    if-eqz v16, :cond_b

    .line 230
    sget v1, Lcom/example/resume2interview/R$id;->tv_focus_title:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 232
    .local v17, "tvFocusTitle":Landroid/widget/TextView;
    if-eqz v17, :cond_a

    .line 236
    sget v1, Lcom/example/resume2interview/R$id;->tv_last_updated:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 238
    .local v18, "tvLastUpdated":Landroid/widget/TextView;
    if-eqz v18, :cond_9

    .line 242
    sget v1, Lcom/example/resume2interview/R$id;->tv_latest_score:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 244
    .local v19, "tvLatestScore":Landroid/widget/TextView;
    if-eqz v19, :cond_8

    .line 248
    sget v1, Lcom/example/resume2interview/R$id;->tv_progress_title:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    .line 250
    .local v20, "tvProgressTitle":Landroid/widget/TextView;
    if-eqz v20, :cond_7

    .line 254
    sget v1, Lcom/example/resume2interview/R$id;->tv_resume_status:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    .line 256
    .local v21, "tvResumeStatus":Landroid/widget/TextView;
    if-eqz v21, :cond_6

    .line 260
    sget v1, Lcom/example/resume2interview/R$id;->tv_resume_title:I

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    .line 262
    .local v22, "tvResumeTitle":Landroid/widget/TextView;
    if-eqz v22, :cond_5

    .line 266
    sget v1, Lcom/example/resume2interview/R$id;->tv_session_count:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    .line 268
    .local v23, "tvSessionCount":Landroid/widget/TextView;
    if-eqz v23, :cond_4

    .line 272
    sget v1, Lcom/example/resume2interview/R$id;->tv_start_interview:I

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 274
    .local v24, "tvStartInterview":Landroid/widget/TextView;
    if-eqz v24, :cond_3

    .line 278
    sget v1, Lcom/example/resume2interview/R$id;->tv_status_badge:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    .line 280
    .local v25, "tvStatusBadge":Landroid/widget/TextView;
    if-eqz v25, :cond_2

    .line 284
    sget v1, Lcom/example/resume2interview/R$id;->tv_subtitle:I

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    .line 286
    .local v26, "tvSubtitle":Landroid/widget/TextView;
    if-eqz v26, :cond_1

    .line 290
    sget v1, Lcom/example/resume2interview/R$id;->tv_welcome:I

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    .line 292
    .local v27, "tvWelcome":Landroid/widget/TextView;
    if-eqz v27, :cond_0

    .line 296
    new-instance v3, Lcom/example/resume2interview/databinding/FragmentHomeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v27}, Lcom/example/resume2interview/databinding/FragmentHomeBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 293
    :cond_0
    goto :goto_0

    .line 287
    .end local v27    # "tvWelcome":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 281
    .end local v26    # "tvSubtitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 275
    .end local v25    # "tvStatusBadge":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 269
    .end local v24    # "tvStartInterview":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 263
    .end local v23    # "tvSessionCount":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 257
    .end local v22    # "tvResumeTitle":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 251
    .end local v21    # "tvResumeStatus":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 245
    .end local v20    # "tvProgressTitle":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 239
    .end local v19    # "tvLatestScore":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 233
    .end local v18    # "tvLastUpdated":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 227
    .end local v17    # "tvFocusTitle":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 221
    .end local v16    # "tvAvatar":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 215
    .end local v15    # "rowCta":Landroid/widget/LinearLayout;
    :cond_d
    goto :goto_0

    .line 209
    .end local v14    # "ivStartInterviewIcon":Landroid/widget/ImageView;
    :cond_e
    goto :goto_0

    .line 203
    .end local v13    # "ivResumeIcon":Landroid/widget/ImageView;
    :cond_f
    goto :goto_0

    .line 197
    .end local v12    # "ivResumeArrow":Landroid/widget/ImageView;
    :cond_10
    goto :goto_0

    .line 191
    .end local v11    # "ivChartIcon":Landroid/widget/ImageView;
    :cond_11
    goto :goto_0

    .line 185
    .end local v10    # "cardUpdateResume":Landroidx/cardview/widget/CardView;
    :cond_12
    goto :goto_0

    .line 179
    .end local v9    # "cardStartInterview":Landroidx/cardview/widget/CardView;
    :cond_13
    goto :goto_0

    .line 173
    .end local v8    # "cardResumeStatus":Landroidx/cardview/widget/CardView;
    :cond_14
    goto :goto_0

    .line 167
    .end local v7    # "cardProgress":Landroidx/cardview/widget/CardView;
    :cond_15
    goto :goto_0

    .line 161
    .end local v6    # "cardFocus2":Landroidx/cardview/widget/CardView;
    :cond_16
    nop

    .line 302
    .end local v5    # "cardFocus1":Landroidx/cardview/widget/CardView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentHomeBinding;
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

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentHomeBinding;
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

    .line 145
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentHomeBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
