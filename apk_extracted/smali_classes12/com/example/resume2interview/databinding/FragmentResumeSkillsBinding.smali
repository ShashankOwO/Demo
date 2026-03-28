.class public final Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;
.super Ljava/lang/Object;
.source "FragmentResumeSkillsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddSoftSkill:Landroid/widget/TextView;

.field public final btnAddTechSkill:Landroid/widget/TextView;

.field public final btnAddToolSkill:Landroid/widget/TextView;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnSaveSoftSkill:Landroid/widget/Button;

.field public final btnSaveTechSkill:Landroid/widget/Button;

.field public final btnSaveToolSkill:Landroid/widget/Button;

.field public final cardExperience:Landroidx/cardview/widget/CardView;

.field public final cardSoftSkills:Landroidx/cardview/widget/CardView;

.field public final cardTargetRole:Landroidx/cardview/widget/CardView;

.field public final cardTechSkills:Landroidx/cardview/widget/CardView;

.field public final cardTools:Landroidx/cardview/widget/CardView;

.field public final cardVerification:Landroidx/cardview/widget/CardView;

.field public final chipGroupSoft:Lcom/google/android/material/chip/ChipGroup;

.field public final chipGroupTech:Lcom/google/android/material/chip/ChipGroup;

.field public final chipGroupTools:Lcom/google/android/material/chip/ChipGroup;

.field public final dropdownExperienceLevel:Landroid/widget/AutoCompleteTextView;

.field public final dropdownTargetRole:Landroid/widget/AutoCompleteTextView;

.field public final etCustomRole:Landroid/widget/EditText;

.field public final etExperienceYears:Landroid/widget/EditText;

.field public final etNewSoftSkill:Landroid/widget/EditText;

.field public final etNewTechSkill:Landroid/widget/EditText;

.field public final etNewToolSkill:Landroid/widget/EditText;

.field public final etPreviousRole:Landroid/widget/EditText;

.field public final layoutAddSoftSkill:Landroid/widget/LinearLayout;

.field public final layoutAddTechSkill:Landroid/widget/LinearLayout;

.field public final layoutAddToolSkill:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvExtracted:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvVerified:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroidx/core/widget/NestedScrollView;
    .param p2, "btnAddSoftSkill"    # Landroid/widget/TextView;
    .param p3, "btnAddTechSkill"    # Landroid/widget/TextView;
    .param p4, "btnAddToolSkill"    # Landroid/widget/TextView;
    .param p5, "btnBack"    # Landroid/widget/ImageView;
    .param p6, "btnSaveSoftSkill"    # Landroid/widget/Button;
    .param p7, "btnSaveTechSkill"    # Landroid/widget/Button;
    .param p8, "btnSaveToolSkill"    # Landroid/widget/Button;
    .param p9, "cardExperience"    # Landroidx/cardview/widget/CardView;
    .param p10, "cardSoftSkills"    # Landroidx/cardview/widget/CardView;
    .param p11, "cardTargetRole"    # Landroidx/cardview/widget/CardView;
    .param p12, "cardTechSkills"    # Landroidx/cardview/widget/CardView;
    .param p13, "cardTools"    # Landroidx/cardview/widget/CardView;
    .param p14, "cardVerification"    # Landroidx/cardview/widget/CardView;
    .param p15, "chipGroupSoft"    # Lcom/google/android/material/chip/ChipGroup;
    .param p16, "chipGroupTech"    # Lcom/google/android/material/chip/ChipGroup;
    .param p17, "chipGroupTools"    # Lcom/google/android/material/chip/ChipGroup;
    .param p18, "dropdownExperienceLevel"    # Landroid/widget/AutoCompleteTextView;
    .param p19, "dropdownTargetRole"    # Landroid/widget/AutoCompleteTextView;
    .param p20, "etCustomRole"    # Landroid/widget/EditText;
    .param p21, "etExperienceYears"    # Landroid/widget/EditText;
    .param p22, "etNewSoftSkill"    # Landroid/widget/EditText;
    .param p23, "etNewTechSkill"    # Landroid/widget/EditText;
    .param p24, "etNewToolSkill"    # Landroid/widget/EditText;
    .param p25, "etPreviousRole"    # Landroid/widget/EditText;
    .param p26, "layoutAddSoftSkill"    # Landroid/widget/LinearLayout;
    .param p27, "layoutAddTechSkill"    # Landroid/widget/LinearLayout;
    .param p28, "layoutAddToolSkill"    # Landroid/widget/LinearLayout;
    .param p29, "tvExtracted"    # Landroid/widget/TextView;
    .param p30, "tvTitle"    # Landroid/widget/TextView;
    .param p31, "tvVerified"    # Landroid/widget/TextView;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnAddSoftSkill",
            "btnAddTechSkill",
            "btnAddToolSkill",
            "btnBack",
            "btnSaveSoftSkill",
            "btnSaveTechSkill",
            "btnSaveToolSkill",
            "cardExperience",
            "cardSoftSkills",
            "cardTargetRole",
            "cardTechSkills",
            "cardTools",
            "cardVerification",
            "chipGroupSoft",
            "chipGroupTech",
            "chipGroupTools",
            "dropdownExperienceLevel",
            "dropdownTargetRole",
            "etCustomRole",
            "etExperienceYears",
            "etNewSoftSkill",
            "etNewTechSkill",
            "etNewToolSkill",
            "etPreviousRole",
            "layoutAddSoftSkill",
            "layoutAddTechSkill",
            "layoutAddToolSkill",
            "tvExtracted",
            "tvTitle",
            "tvVerified"
        }
    .end annotation

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 135
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 136
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnAddSoftSkill:Landroid/widget/TextView;

    .line 137
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnAddTechSkill:Landroid/widget/TextView;

    .line 138
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnAddToolSkill:Landroid/widget/TextView;

    .line 139
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnBack:Landroid/widget/ImageView;

    .line 140
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnSaveSoftSkill:Landroid/widget/Button;

    .line 141
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnSaveTechSkill:Landroid/widget/Button;

    .line 142
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->btnSaveToolSkill:Landroid/widget/Button;

    .line 143
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardExperience:Landroidx/cardview/widget/CardView;

    .line 144
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardSoftSkills:Landroidx/cardview/widget/CardView;

    .line 145
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardTargetRole:Landroidx/cardview/widget/CardView;

    .line 146
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardTechSkills:Landroidx/cardview/widget/CardView;

    .line 147
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardTools:Landroidx/cardview/widget/CardView;

    .line 148
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->cardVerification:Landroidx/cardview/widget/CardView;

    .line 149
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->chipGroupSoft:Lcom/google/android/material/chip/ChipGroup;

    .line 150
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->chipGroupTech:Lcom/google/android/material/chip/ChipGroup;

    .line 151
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->chipGroupTools:Lcom/google/android/material/chip/ChipGroup;

    .line 152
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->dropdownExperienceLevel:Landroid/widget/AutoCompleteTextView;

    .line 153
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->dropdownTargetRole:Landroid/widget/AutoCompleteTextView;

    .line 154
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etCustomRole:Landroid/widget/EditText;

    .line 155
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etExperienceYears:Landroid/widget/EditText;

    .line 156
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etNewSoftSkill:Landroid/widget/EditText;

    .line 157
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etNewTechSkill:Landroid/widget/EditText;

    .line 158
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etNewToolSkill:Landroid/widget/EditText;

    .line 159
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->etPreviousRole:Landroid/widget/EditText;

    .line 160
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->layoutAddSoftSkill:Landroid/widget/LinearLayout;

    .line 161
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->layoutAddTechSkill:Landroid/widget/LinearLayout;

    .line 162
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->layoutAddToolSkill:Landroid/widget/LinearLayout;

    .line 163
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->tvExtracted:Landroid/widget/TextView;

    .line 164
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->tvTitle:Landroid/widget/TextView;

    .line 165
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->tvVerified:Landroid/widget/TextView;

    .line 166
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;
    .locals 35
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 195
    move-object/from16 v0, p0

    sget v1, Lcom/example/resume2interview/R$id;->btn_add_soft_skill:I

    .line 196
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 197
    .local v5, "btnAddSoftSkill":Landroid/widget/TextView;
    if-eqz v5, :cond_1d

    .line 201
    sget v1, Lcom/example/resume2interview/R$id;->btn_add_tech_skill:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 203
    .local v6, "btnAddTechSkill":Landroid/widget/TextView;
    if-eqz v6, :cond_1c

    .line 207
    sget v1, Lcom/example/resume2interview/R$id;->btn_add_tool_skill:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 209
    .local v7, "btnAddToolSkill":Landroid/widget/TextView;
    if-eqz v7, :cond_1b

    .line 213
    sget v1, Lcom/example/resume2interview/R$id;->btn_back:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 215
    .local v8, "btnBack":Landroid/widget/ImageView;
    if-eqz v8, :cond_1a

    .line 219
    sget v1, Lcom/example/resume2interview/R$id;->btn_save_soft_skill:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    .line 221
    .local v9, "btnSaveSoftSkill":Landroid/widget/Button;
    if-eqz v9, :cond_19

    .line 225
    sget v1, Lcom/example/resume2interview/R$id;->btn_save_tech_skill:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    .line 227
    .local v10, "btnSaveTechSkill":Landroid/widget/Button;
    if-eqz v10, :cond_18

    .line 231
    sget v1, Lcom/example/resume2interview/R$id;->btn_save_tool_skill:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    .line 233
    .local v11, "btnSaveToolSkill":Landroid/widget/Button;
    if-eqz v11, :cond_17

    .line 237
    sget v1, Lcom/example/resume2interview/R$id;->card_experience:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/cardview/widget/CardView;

    .line 239
    .local v12, "cardExperience":Landroidx/cardview/widget/CardView;
    if-eqz v12, :cond_16

    .line 243
    sget v1, Lcom/example/resume2interview/R$id;->card_soft_skills:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/cardview/widget/CardView;

    .line 245
    .local v13, "cardSoftSkills":Landroidx/cardview/widget/CardView;
    if-eqz v13, :cond_15

    .line 249
    sget v1, Lcom/example/resume2interview/R$id;->card_target_role:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/cardview/widget/CardView;

    .line 251
    .local v14, "cardTargetRole":Landroidx/cardview/widget/CardView;
    if-eqz v14, :cond_14

    .line 255
    sget v1, Lcom/example/resume2interview/R$id;->card_tech_skills:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/cardview/widget/CardView;

    .line 257
    .local v15, "cardTechSkills":Landroidx/cardview/widget/CardView;
    if-eqz v15, :cond_13

    .line 261
    sget v1, Lcom/example/resume2interview/R$id;->card_tools:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/cardview/widget/CardView;

    .line 263
    .local v16, "cardTools":Landroidx/cardview/widget/CardView;
    if-eqz v16, :cond_12

    .line 267
    sget v1, Lcom/example/resume2interview/R$id;->card_verification:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/cardview/widget/CardView;

    .line 269
    .local v17, "cardVerification":Landroidx/cardview/widget/CardView;
    if-eqz v17, :cond_11

    .line 273
    sget v1, Lcom/example/resume2interview/R$id;->chip_group_soft:I

    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/material/chip/ChipGroup;

    .line 275
    .local v18, "chipGroupSoft":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v18, :cond_10

    .line 279
    sget v1, Lcom/example/resume2interview/R$id;->chip_group_tech:I

    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/material/chip/ChipGroup;

    .line 281
    .local v19, "chipGroupTech":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v19, :cond_f

    .line 285
    sget v1, Lcom/example/resume2interview/R$id;->chip_group_tools:I

    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/material/chip/ChipGroup;

    .line 287
    .local v20, "chipGroupTools":Lcom/google/android/material/chip/ChipGroup;
    if-eqz v20, :cond_e

    .line 291
    sget v1, Lcom/example/resume2interview/R$id;->dropdown_experience_level:I

    .line 292
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/AutoCompleteTextView;

    .line 293
    .local v21, "dropdownExperienceLevel":Landroid/widget/AutoCompleteTextView;
    if-eqz v21, :cond_d

    .line 297
    sget v1, Lcom/example/resume2interview/R$id;->dropdown_target_role:I

    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/AutoCompleteTextView;

    .line 299
    .local v22, "dropdownTargetRole":Landroid/widget/AutoCompleteTextView;
    if-eqz v22, :cond_c

    .line 303
    sget v1, Lcom/example/resume2interview/R$id;->et_custom_role:I

    .line 304
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/EditText;

    .line 305
    .local v23, "etCustomRole":Landroid/widget/EditText;
    if-eqz v23, :cond_b

    .line 309
    sget v1, Lcom/example/resume2interview/R$id;->et_experience_years:I

    .line 310
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/EditText;

    .line 311
    .local v24, "etExperienceYears":Landroid/widget/EditText;
    if-eqz v24, :cond_a

    .line 315
    sget v1, Lcom/example/resume2interview/R$id;->et_new_soft_skill:I

    .line 316
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/EditText;

    .line 317
    .local v25, "etNewSoftSkill":Landroid/widget/EditText;
    if-eqz v25, :cond_9

    .line 321
    sget v1, Lcom/example/resume2interview/R$id;->et_new_tech_skill:I

    .line 322
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/EditText;

    .line 323
    .local v26, "etNewTechSkill":Landroid/widget/EditText;
    if-eqz v26, :cond_8

    .line 327
    sget v1, Lcom/example/resume2interview/R$id;->et_new_tool_skill:I

    .line 328
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/EditText;

    .line 329
    .local v27, "etNewToolSkill":Landroid/widget/EditText;
    if-eqz v27, :cond_7

    .line 333
    sget v1, Lcom/example/resume2interview/R$id;->et_previous_role:I

    .line 334
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/EditText;

    .line 335
    .local v28, "etPreviousRole":Landroid/widget/EditText;
    if-eqz v28, :cond_6

    .line 339
    sget v1, Lcom/example/resume2interview/R$id;->layout_add_soft_skill:I

    .line 340
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/LinearLayout;

    .line 341
    .local v29, "layoutAddSoftSkill":Landroid/widget/LinearLayout;
    if-eqz v29, :cond_5

    .line 345
    sget v1, Lcom/example/resume2interview/R$id;->layout_add_tech_skill:I

    .line 346
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/LinearLayout;

    .line 347
    .local v30, "layoutAddTechSkill":Landroid/widget/LinearLayout;
    if-eqz v30, :cond_4

    .line 351
    sget v1, Lcom/example/resume2interview/R$id;->layout_add_tool_skill:I

    .line 352
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/LinearLayout;

    .line 353
    .local v31, "layoutAddToolSkill":Landroid/widget/LinearLayout;
    if-eqz v31, :cond_3

    .line 357
    sget v1, Lcom/example/resume2interview/R$id;->tv_extracted:I

    .line 358
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/TextView;

    .line 359
    .local v32, "tvExtracted":Landroid/widget/TextView;
    if-eqz v32, :cond_2

    .line 363
    sget v1, Lcom/example/resume2interview/R$id;->tv_title:I

    .line 364
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/TextView;

    .line 365
    .local v33, "tvTitle":Landroid/widget/TextView;
    if-eqz v33, :cond_1

    .line 369
    sget v1, Lcom/example/resume2interview/R$id;->tv_verified:I

    .line 370
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/TextView;

    .line 371
    .local v34, "tvVerified":Landroid/widget/TextView;
    if-eqz v34, :cond_0

    .line 375
    new-instance v3, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v34}, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    .line 372
    :cond_0
    goto :goto_0

    .line 366
    .end local v34    # "tvVerified":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 360
    .end local v33    # "tvTitle":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 354
    .end local v32    # "tvExtracted":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 348
    .end local v31    # "layoutAddToolSkill":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 342
    .end local v30    # "layoutAddTechSkill":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 336
    .end local v29    # "layoutAddSoftSkill":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 330
    .end local v28    # "etPreviousRole":Landroid/widget/EditText;
    :cond_7
    goto :goto_0

    .line 324
    .end local v27    # "etNewToolSkill":Landroid/widget/EditText;
    :cond_8
    goto :goto_0

    .line 318
    .end local v26    # "etNewTechSkill":Landroid/widget/EditText;
    :cond_9
    goto :goto_0

    .line 312
    .end local v25    # "etNewSoftSkill":Landroid/widget/EditText;
    :cond_a
    goto :goto_0

    .line 306
    .end local v24    # "etExperienceYears":Landroid/widget/EditText;
    :cond_b
    goto :goto_0

    .line 300
    .end local v23    # "etCustomRole":Landroid/widget/EditText;
    :cond_c
    goto :goto_0

    .line 294
    .end local v22    # "dropdownTargetRole":Landroid/widget/AutoCompleteTextView;
    :cond_d
    goto :goto_0

    .line 288
    .end local v21    # "dropdownExperienceLevel":Landroid/widget/AutoCompleteTextView;
    :cond_e
    goto :goto_0

    .line 282
    .end local v20    # "chipGroupTools":Lcom/google/android/material/chip/ChipGroup;
    :cond_f
    goto :goto_0

    .line 276
    .end local v19    # "chipGroupTech":Lcom/google/android/material/chip/ChipGroup;
    :cond_10
    goto :goto_0

    .line 270
    .end local v18    # "chipGroupSoft":Lcom/google/android/material/chip/ChipGroup;
    :cond_11
    goto :goto_0

    .line 264
    .end local v17    # "cardVerification":Landroidx/cardview/widget/CardView;
    :cond_12
    goto :goto_0

    .line 258
    .end local v16    # "cardTools":Landroidx/cardview/widget/CardView;
    :cond_13
    goto :goto_0

    .line 252
    .end local v15    # "cardTechSkills":Landroidx/cardview/widget/CardView;
    :cond_14
    goto :goto_0

    .line 246
    .end local v14    # "cardTargetRole":Landroidx/cardview/widget/CardView;
    :cond_15
    goto :goto_0

    .line 240
    .end local v13    # "cardSoftSkills":Landroidx/cardview/widget/CardView;
    :cond_16
    goto :goto_0

    .line 234
    .end local v12    # "cardExperience":Landroidx/cardview/widget/CardView;
    :cond_17
    goto :goto_0

    .line 228
    .end local v11    # "btnSaveToolSkill":Landroid/widget/Button;
    :cond_18
    goto :goto_0

    .line 222
    .end local v10    # "btnSaveTechSkill":Landroid/widget/Button;
    :cond_19
    goto :goto_0

    .line 216
    .end local v9    # "btnSaveSoftSkill":Landroid/widget/Button;
    :cond_1a
    goto :goto_0

    .line 210
    .end local v8    # "btnBack":Landroid/widget/ImageView;
    :cond_1b
    goto :goto_0

    .line 204
    .end local v7    # "btnAddToolSkill":Landroid/widget/TextView;
    :cond_1c
    goto :goto_0

    .line 198
    .end local v6    # "btnAddTechSkill":Landroid/widget/TextView;
    :cond_1d
    nop

    .line 383
    .end local v5    # "btnAddSoftSkill":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;
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

    .line 176
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;
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

    .line 182
    sget v0, Lcom/example/resume2interview/R$layout;->fragment_resume_skills:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    :cond_0
    invoke-static {v0}, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->bind(Landroid/view/View;)Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/example/resume2interview/databinding/FragmentResumeSkillsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
