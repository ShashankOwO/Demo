.class public final Lcom/example/resume2interview/ui/report/ReportDetailFragment;
.super Lcom/example/resume2interview/ui/report/Hilt_ReportDetailFragment;
.source "ReportDetailFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/resume2interview/ui/report/Hilt_ReportDetailFragment<",
        "Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;",
        "Lcom/example/resume2interview/ui/report/ReportDetailViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportDetailFragment.kt\ncom/example/resume2interview/ui/report/ReportDetailFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n106#2,15:109\n1855#3:124\n1856#3:126\n1#4:125\n*S KotlinDebug\n*F\n+ 1 ReportDetailFragment.kt\ncom/example/resume2interview/ui/report/ReportDetailFragment\n*L\n21#1:109,15\n69#1:124\n69#1:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J6\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u000bH\u0014J\u0012\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014R\u001b\u0010\u0005\u001a\u00020\u00038TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/example/resume2interview/ui/report/ReportDetailFragment;",
        "Lcom/example/resume2interview/ui/base/BaseFragment;",
        "Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;",
        "Lcom/example/resume2interview/ui/report/ReportDetailViewModel;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/example/resume2interview/ui/report/ReportDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "fillList",
        "",
        "container",
        "Landroid/widget/LinearLayout;",
        "items",
        "",
        "",
        "bulletColor",
        "textColor",
        "bgColor",
        "setupUI",
        "showContent",
        "data",
        "",
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
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$XGz5IP_OCGG2a9xUdFSvqpIYIEc(Lcom/example/resume2interview/ui/report/ReportDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->setupUI$lambda$0(Lcom/example/resume2interview/ui/report/ReportDetailFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 18
    nop

    .line 19
    sget-object v0, Lcom/example/resume2interview/ui/report/ReportDetailFragment$1;->INSTANCE:Lcom/example/resume2interview/ui/report/ReportDetailFragment$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 18
    invoke-direct {p0, v0}, Lcom/example/resume2interview/ui/report/Hilt_ReportDetailFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 21
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 109
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 110
    new-instance v1, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 109
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 111
    const/4 v2, 0x0

    .line 109
    .local v2, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 112
    const/4 v3, 0x0

    .line 109
    .local v3, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$f$viewModels":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 115
    .local v5, "owner$delegate$iv":Lkotlin/Lazy;
    const-class v6, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 123
    nop

    .line 115
    new-instance v9, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 21
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels":I
    .end local v5    # "owner$delegate$iv":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 18
    return-void
.end method

.method private final fillList(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "container"    # Landroid/widget/LinearLayout;
    .param p2, "items"    # Ljava/util/List;
    .param p3, "bulletColor"    # Ljava/lang/String;
    .param p4, "textColor"    # Ljava/lang/String;
    .param p5, "bgColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .local v0, "ctx":Landroid/content/Context;
    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 66
    .local v1, "dp8":I
    const/16 v2, 0xc

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 67
    .local v2, "dp12":I
    const/16 v3, 0x10

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 69
    .local v4, "dp16":I
    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 124
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "item":Ljava/lang/String;
    const/4 v10, 0x0

    .line 71
    .local v10, "$i$a$-forEach-ReportDetailFragment$fillList$1":I
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v11

    .local v12, "$this$fillList_u24lambda_u245_u24lambda_u242":Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    .line 72
    .local v13, "$i$a$-apply-ReportDetailFragment$fillList$1$row$1":I
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 74
    invoke-static/range {p5 .. p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {v12, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    nop

    .line 78
    nop

    .line 76
    const/4 v3, -0x1

    const/4 v14, -0x2

    invoke-direct {v15, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    nop

    .line 125
    move-object v3, v15

    .local v3, "it":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    .line 79
    .local v17, "$i$a$-also-ReportDetailFragment$fillList$1$row$1$1":I
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v1, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .end local v3    # "it":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "$i$a$-also-ReportDetailFragment$fillList$1$row$1$1":I
    check-cast v15, Landroid/view/ViewGroup$LayoutParams;

    .line 76
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    nop

    .line 71
    .end local v12    # "$this$fillList_u24lambda_u245_u24lambda_u242":Landroid/widget/LinearLayout;
    .end local v13    # "$i$a$-apply-ReportDetailFragment$fillList$1$row$1":I
    nop

    .line 83
    .local v11, "row":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v3

    .local v12, "$this$fillList_u24lambda_u245_u24lambda_u243":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 84
    .local v13, "$i$a$-apply-ReportDetailFragment$fillList$1$bullet$1":I
    const-string v14, "\u25cf"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v14, v2, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    nop

    .line 83
    .end local v12    # "$this$fillList_u24lambda_u245_u24lambda_u243":Landroid/widget/TextView;
    .end local v13    # "$i$a$-apply-ReportDetailFragment$fillList$1$bullet$1":I
    nop

    .line 91
    .local v3, "bullet":Landroid/widget/TextView;
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v12

    .local v13, "$this$fillList_u24lambda_u245_u24lambda_u244":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 92
    .local v14, "$i$a$-apply-ReportDetailFragment$fillList$1$tv$1":I
    move-object v15, v9

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    const/4 v15, 0x0

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "ctx":Landroid/content/Context;
    .local v17, "ctx":Landroid/content/Context;
    invoke-virtual {v13, v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 96
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    nop

    .line 96
    move/from16 v16, v1

    .end local v1    # "dp8":I
    .local v16, "dp8":I
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v18, v2

    const/4 v2, -0x2

    .end local v2    # "dp12":I
    .local v18, "dp12":I
    invoke-direct {v15, v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/4 v0, 0x0

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 100
    nop

    .line 91
    .end local v13    # "$this$fillList_u24lambda_u245_u24lambda_u244":Landroid/widget/TextView;
    .end local v14    # "$i$a$-apply-ReportDetailFragment$fillList$1$tv$1":I
    nop

    .line 102
    .local v12, "tv":Landroid/widget/TextView;
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    move-object v0, v12

    check-cast v0, Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    move-object v0, v11

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    nop

    .line 124
    .end local v3    # "bullet":Landroid/widget/TextView;
    .end local v9    # "item":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-ReportDetailFragment$fillList$1":I
    .end local v11    # "row":Landroid/widget/LinearLayout;
    .end local v12    # "tv":Landroid/widget/TextView;
    move/from16 v1, v16

    move-object/from16 v0, v17

    move/from16 v2, v18

    const/16 v3, 0x10

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 126
    .end local v16    # "dp8":I
    .end local v17    # "ctx":Landroid/content/Context;
    .end local v18    # "dp12":I
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v1    # "dp8":I
    .restart local v2    # "dp12":I
    :cond_0
    nop

    .line 106
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    return-void
.end method

.method private static final setupUI$lambda$0(Lcom/example/resume2interview/ui/report/ReportDetailFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/example/resume2interview/ui/report/ReportDetailFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewModel()Lcom/example/resume2interview/ui/base/BaseViewModel;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getViewModel()Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/base/BaseViewModel;

    return-object v0
.end method

.method protected getViewModel()Lcom/example/resume2interview/ui/report/ReportDetailViewModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/ui/report/ReportDetailViewModel;

    return-object v0
.end method

.method protected setupUI()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v0, v0, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/resume2interview/ui/report/ReportDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/resume2interview/ui/report/ReportDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method

.method protected showContent(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lcom/example/resume2interview/ui/report/ReportDetailUiData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/resume2interview/ui/report/ReportDetailUiData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 32
    .local v0, "uiData":Lcom/example/resume2interview/ui/report/ReportDetailUiData;
    :cond_1
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getDate()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvEvaluation:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getEvaluation()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v1, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->tvSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getSummary()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v3, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->layoutStrengths:Landroid/widget/LinearLayout;

    const-string v1, "layoutStrengths"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getStrengths()Ljava/util/List;

    move-result-object v4

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 38
    const-string v5, "#2E7D32"

    const-string v6, "#1A1C1E"

    const-string v7, "#F1F8F1"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->fillList(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;

    iget-object v9, v1, Lcom/example/resume2interview/databinding/FragmentReportDetailBinding;->layoutImprovements:Landroid/widget/LinearLayout;

    const-string v1, "layoutImprovements"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/example/resume2interview/ui/report/ReportDetailUiData;->getImprovements()Ljava/util/List;

    move-result-object v10

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 47
    const-string v11, "#C62828"

    const-string v12, "#1A1C1E"

    const-string v13, "#FFF5F5"

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/example/resume2interview/ui/report/ReportDetailFragment;->fillList(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
