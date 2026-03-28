.class public final Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;
.super Ljava/lang/Object;
.source "FragmentInterviewProgressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bar1:Landroid/view/View;

.field public final bar2:Landroid/view/View;

.field public final bar3:Landroid/view/View;

.field public final bar4:Landroid/view/View;

.field public final bar5:Landroid/view/View;

.field public final barrierXAxis:Landroidx/constraintlayout/widget/Barrier;

.field public final barrierYAxis:Landroidx/constraintlayout/widget/Barrier;

.field public final btnBack:Landroid/widget/ImageView;

.field public final cardPerformance:Landroidx/cardview/widget/CardView;

.field public final cardSkills:Landroidx/cardview/widget/CardView;

.field public final pbBehavioral:Landroid/widget/ProgressBar;

.field public final pbCommunication:Landroid/widget/ProgressBar;

.field public final pbProblemSolving:Landroid/widget/ProgressBar;

.field public final pbSystemDesign:Landroid/widget/ProgressBar;

.field public final pbTechnical:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvX1:Landroid/widget/TextView;

.field public final tvX2:Landroid/widget/TextView;

.field public final tvX3:Landroid/widget/TextView;

.field public final tvX4:Landroid/widget/TextView;

.field public final tvX5:Landroid/widget/TextView;

.field public final tvY0:Landroid/widget/TextView;

.field public final tvY100:Landroid/widget/TextView;

.field public final tvY25:Landroid/widget/TextView;

.field public final tvY50:Landroid/widget/TextView;

.field public final tvY75:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "bar1"    # Landroid/view/View;
    .param p3, "bar2"    # Landroid/view/View;
    .param p4, "bar3"    # Landroid/view/View;
    .param p5, "bar4"    # Landroid/view/View;
    .param p6, "bar5"    # Landroid/view/View;
    .param p7, "barrierXAxis"    # Landroidx/constraintlayout/widget/Barrier;
    .param p8, "barrierYAxis"    # Landroidx/constraintlayout/widget/Barrier;
    .param p9, "btnBack"    # Landroid/widget/ImageView;
    .param p10, "cardPerformance"    # Landroidx/cardview/widget/CardView;
    .param p11, "cardSkills"    # Landroidx/cardview/widget/CardView;
    .param p12, "pbBehavioral"    # Landroid/widget/ProgressBar;
    .param p13, "pbCommunication"    # Landroid/widget/ProgressBar;
    .param p14, "pbProblemSolving"    # Landroid/widget/ProgressBar;
    .param p15, "pbSystemDesign"    # Landroid/widget/ProgressBar;
    .param p16, "pbTechnical"    # Landroid/widget/ProgressBar;
    .param p17, "tvTitle"    # Landroid/widget/TextView;
    .param p18, "tvX1"    # Landroid/widget/TextView;
    .param p19, "tvX2"    # Landroid/widget/TextView;
    .param p20, "tvX3"    # Landroid/widget/TextView;
    .param p21, "tvX4"    # Landroid/widget/TextView;
    .param p22, "tvX5"    # Landroid/widget/TextView;
    .param p23, "tvY0"    # Landroid/widget/TextView;
    .param p24, "tvY100"    # Landroid/widget/TextView;
    .param p25, "tvY25"    # Landroid/widget/TextView;
    .param p26, "tvY50"    # Landroid/widget/TextView;
    .param p27, "tvY75"    # Landroid/widget/TextView;
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "bar1",
            "bar2",
            "bar3",
            "bar4",
            "bar5",
            "barrierXAxis",
            "barrierYAxis",
            "btnBack",
            "cardPerformance",
            "cardSkills",
            "pbBehavioral",
            "pbCommunication",
            "pbProblemSolving",
            "pbSystemDesign",
            "pbTechnical",
            "tvTitle",
            "tvX1",
            "tvX2",
            "tvX3",
            "tvX4",
            "tvX5",
            "tvY0",
            "tvY100",
            "tvY25",
            "tvY50",
            "tvY75"
        }
    .end annotation

    .line 113
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 115
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bar1:Landroid/view/View;

    .line 116
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bar2:Landroid/view/View;

    .line 117
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bar3:Landroid/view/View;

    .line 118
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bar4:Landroid/view/View;

    .line 119
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bar5:Landroid/view/View;

    .line 120
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->barrierXAxis:Landroidx/constraintlayout/widget/Barrier;

    .line 121
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->barrierYAxis:Landroidx/constraintlayout/widget/Barrier;

    .line 122
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->btnBack:Landroid/widget/ImageView;

    .line 123
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->cardPerformance:Landroidx/cardview/widget/CardView;

    .line 124
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->cardSkills:Landroidx/cardview/widget/CardView;

    .line 125
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbBehavioral:Landroid/widget/ProgressBar;

    .line 126
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbCommunication:Landroid/widget/ProgressBar;

    .line 127
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbProblemSolving:Landroid/widget/ProgressBar;

    .line 128
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbSystemDesign:Landroid/widget/ProgressBar;

    .line 129
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->pbTechnical:Landroid/widget/ProgressBar;

    .line 130
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvTitle:Landroid/widget/TextView;

    .line 131
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvX1:Landroid/widget/TextView;

    .line 132
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvX2:Landroid/widget/TextView;

    .line 133
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvX3:Landroid/widget/TextView;

    .line 134
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvX4:Landroid/widget/TextView;

    .line 135
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvX5:Landroid/widget/TextView;

    .line 136
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvY0:Landroid/widget/TextView;

    .line 137
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvY100:Landroid/widget/TextView;

    .line 138
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvY25:Landroid/widget/TextView;

    .line 139
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvY50:Landroid/widget/TextView;

    .line 140
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->tvY75:Landroid/widget/TextView;

    .line 141
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;
    .locals 30
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->bar1:I

    .line 171
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 172
    .local v4, "bar1":Landroid/view/View;
    if-eqz v4, :cond_19

    .line 176
    sget v1, Lcom/example/resume2interview/R$id;->bar2:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 178
    .local v5, "bar2":Landroid/view/View;
    if-eqz v5, :cond_18

    .line 182
    sget v1, Lcom/example/resume2interview/R$id;->bar3:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 184
    .local v6, "bar3":Landroid/view/View;
    if-eqz v6, :cond_17

    .line 188
    sget v1, Lcom/example/resume2interview/R$id;->bar4:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 190
    .local v7, "bar4":Landroid/view/View;
    if-eqz v7, :cond_16

    .line 194
    sget v1, Lcom/example/resume2interview/R$id;->bar5:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 196
    .local v8, "bar5":Landroid/view/View;
    if-eqz v8, :cond_15

    .line 200
    sget v1, Lcom/example/resume2interview/R$id;->barrier_x_axis:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/Barrier;

    .line 202
    .local v9, "barrierXAxis":Landroidx/constraintlayout/widget/Barrier;
    if-eqz v9, :cond_14

    .line 206
    sget v1, Lcom/example/resume2interview/R$id;->barrier_y_axis:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/Barrier;

    .line 208
    .local v10, "barrierYAxis":Landroidx/constraintlayout/widget/Barrier;
    if-eqz v10, :cond_13

    .line 212
    sget v1, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    .line 214
    .local v11, "btnBack":Landroid/widget/ImageView;
    if-eqz v11, :cond_12

    .line 218
    sget v1, Lcom/example/resume2interview/R$id;->card_performance:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/cardview/widget/CardView;

    .line 220
    .local v12, "cardPerformance":Landroidx/cardview/widget/CardView;
    if-eqz v12, :cond_11

    .line 224
    sget v1, Lcom/example/resume2interview/R$id;->card_skills:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/cardview/widget/CardView;

    .line 226
    .local v13, "cardSkills":Landroidx/cardview/widget/CardView;
    if-eqz v13, :cond_10

    .line 230
    sget v1, Lcom/example/resume2interview/R$id;->pb_behavioral:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ProgressBar;

    .line 232
    .local v14, "pbBehavioral":Landroid/widget/ProgressBar;
    if-eqz v14, :cond_f

    .line 236
    sget v1, Lcom/example/resume2interview/R$id;->pb_communication:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ProgressBar;

    .line 238
    .local v15, "pbCommunication":Landroid/widget/ProgressBar;
    if-eqz v15, :cond_e

    .line 242
    sget v1, Lcom/example/resume2interview/R$id;->pb_problem_solving:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ProgressBar;

    .line 244
    .local v16, "pbProblemSolving":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_d

    .line 248
    sget v1, Lcom/example/resume2interview/R$id;->pb_system_design:I

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ProgressBar;

    .line 250
    .local v17, "pbSystemDesign":Landroid/widget/ProgressBar;
    if-eqz v17, :cond_c

    .line 254
    sget v1, Lcom/example/resume2interview/R$id;->pb_technical:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ProgressBar;

    .line 256
    .local v18, "pbTechnical":Landroid/widget/ProgressBar;
    if-eqz v18, :cond_b

    .line 260
    sget v1, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 262
    .local v19, "tvTitle":Landroid/widget/TextView;
    if-eqz v19, :cond_a

    .line 266
    sget v1, Lcom/example/resume2interview/R$id;->tv_x1:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    .line 268
    .local v20, "tvX1":Landroid/widget/TextView;
    if-eqz v20, :cond_9

    .line 272
    sget v1, Lcom/example/resume2interview/R$id;->tv_x2:I

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    .line 274
    .local v21, "tvX2":Landroid/widget/TextView;
    if-eqz v21, :cond_8

    .line 278
    sget v1, Lcom/example/resume2interview/R$id;->tv_x3:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    .line 280
    .local v22, "tvX3":Landroid/widget/TextView;
    if-eqz v22, :cond_7

    .line 284
    sget v1, Lcom/example/resume2interview/R$id;->tv_x4:I

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    .line 286
    .local v23, "tvX4":Landroid/widget/TextView;
    if-eqz v23, :cond_6

    .line 290
    sget v1, Lcom/example/resume2interview/R$id;->tv_x5:I

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 292
    .local v24, "tvX5":Landroid/widget/TextView;
    if-eqz v24, :cond_5

    .line 296
    sget v1, Lcom/example/resume2interview/R$id;->tv_y0:I

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    .line 298
    .local v25, "tvY0":Landroid/widget/TextView;
    if-eqz v25, :cond_4

    .line 302
    sget v1, Lcom/example/resume2interview/R$id;->tv_y100:I

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    .line 304
    .local v26, "tvY100":Landroid/widget/TextView;
    if-eqz v26, :cond_3

    .line 308
    sget v1, Lcom/example/resume2interview/R$id;->tv_y25:I

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    .line 310
    .local v27, "tvY25":Landroid/widget/TextView;
    if-eqz v27, :cond_2

    .line 314
    sget v1, Lcom/example/resume2interview/R$id;->tv_y50:I

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    .line 316
    .local v28, "tvY50":Landroid/widget/TextView;
    if-eqz v28, :cond_1

    .line 320
    sget v1, Lcom/example/resume2interview/R$id;->tv_y75:I

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    .line 322
    .local v29, "tvY75":Landroid/widget/TextView;
    if-eqz v29, :cond_0

    .line 326
    new-instance v2, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-object v3, v0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v2 .. v29}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 323
    :cond_0
    goto :goto_0

    .line 317
    .end local v29    # "tvY75":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 311
    .end local v28    # "tvY50":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 305
    .end local v27    # "tvY25":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 299
    .end local v26    # "tvY100":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 293
    .end local v25    # "tvY0":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 287
    .end local v24    # "tvX5":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 281
    .end local v23    # "tvX4":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 275
    .end local v22    # "tvX3":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 269
    .end local v21    # "tvX2":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 263
    .end local v20    # "tvX1":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 257
    .end local v19    # "tvTitle":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 251
    .end local v18    # "pbTechnical":Landroid/widget/ProgressBar;
    :cond_c
    goto :goto_0

    .line 245
    .end local v17    # "pbSystemDesign":Landroid/widget/ProgressBar;
    :cond_d
    goto :goto_0

    .line 239
    .end local v16    # "pbProblemSolving":Landroid/widget/ProgressBar;
    :cond_e
    goto :goto_0

    .line 233
    .end local v15    # "pbCommunication":Landroid/widget/ProgressBar;
    :cond_f
    goto :goto_0

    .line 227
    .end local v14    # "pbBehavioral":Landroid/widget/ProgressBar;
    :cond_10
    goto :goto_0

    .line 221
    .end local v13    # "cardSkills":Landroidx/cardview/widget/CardView;
    :cond_11
    goto :goto_0

    .line 215
    .end local v12    # "cardPerformance":Landroidx/cardview/widget/CardView;
    :cond_12
    goto :goto_0

    .line 209
    .end local v11    # "btnBack":Landroid/widget/ImageView;
    :cond_13
    goto :goto_0

    .line 203
    .end local v10    # "barrierYAxis":Landroidx/constraintlayout/widget/Barrier;
    :cond_14
    goto :goto_0

    .line 197
    .end local v9    # "barrierXAxis":Landroidx/constraintlayout/widget/Barrier;
    :cond_15
    goto :goto_0

    .line 191
    .end local v8    # "bar5":Landroid/view/View;
    :cond_16
    goto :goto_0

    .line 185
    .end local v7    # "bar4":Landroid/view/View;
    :cond_17
    goto :goto_0

    .line 179
    .end local v6    # "bar3":Landroid/view/View;
    :cond_18
    goto :goto_0

    .line 173
    .end local v5    # "bar2":Landroid/view/View;
    :cond_19
    nop

    .line 331
    .end local v4    # "bar1":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;
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

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;
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

    .line 157
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_interview_progress:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentInterviewProgressBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
