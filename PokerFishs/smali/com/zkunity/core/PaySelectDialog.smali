.class public Lcom/zkunity/core/PaySelectDialog;
.super Landroid/app/Dialog;
.source "PaySelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/PaySelectDialog$AniHandler;
    }
.end annotation


# instance fields
.field private aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;

.field private langType:I

.field private name:Ljava/lang/String;

.field private pay_types:[I

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, "style"

    .line 35
    const-string v1, "Dialog_Fullscreen"

    invoke-static {p1, v0, v1}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    .line 36
    return-void

    .line 29
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method static synthetic access$0(Lcom/zkunity/core/PaySelectDialog;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/zkunity/core/PaySelectDialog;->showPayUI()V

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/PaySelectDialog;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/zkunity/core/PaySelectDialog;->closePayUI(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/core/PaySelectDialog;)Lcom/zkunity/core/PaySelectDialog$AniHandler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zkunity/core/PaySelectDialog;->aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;

    return-object v0
.end method

.method private closePayUI(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    .line 101
    const-string v4, "select"

    .line 100
    invoke-static {v2, v3, v4}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "select_id":I
    invoke-virtual {p0, v1}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 104
    .local v0, "select":Landroid/widget/RelativeLayout;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    invoke-static {p1}, Lcom/zkunity/core/PaySelectUtils;->onSelect(I)V

    .line 106
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->dismiss()V

    .line 107
    return-void
.end method

.method private initContent()V
    .locals 24

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 112
    const-string v23, "pay_proname"

    .line 111
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 113
    .local v17, "pay_proname_id":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 114
    .local v16, "pay_proname":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zkunity/core/PaySelectDialog;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 117
    const-string v23, "pay_price"

    .line 116
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 118
    .local v15, "pay_price_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 119
    .local v14, "pay_price":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zkunity/core/PaySelectDialog;->price:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 122
    const-string v23, "pay_bus"

    .line 121
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 123
    .local v7, "pay_bus_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 124
    .local v6, "pay_bus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 125
    const-string v21, "\u6536\u6b3e\u65b9"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 130
    const-string v23, "pay_bus_name"

    .line 129
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 131
    .local v11, "pay_bus_name_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 132
    .local v8, "pay_bus_name":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 133
    const-string v22, "id"

    const-string v23, "pay_bus_name_en"

    .line 132
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 135
    .local v10, "pay_bus_name_en_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 134
    check-cast v9, Landroid/widget/TextView;

    .line 136
    .local v9, "pay_bus_name_en":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 137
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 145
    const-string v23, "pay_cancel"

    .line 144
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 146
    .local v13, "pay_cancel_id":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 147
    .local v12, "pay_cancel":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 148
    const-string v21, "\u53d6\u6d88\u652f\u4ed8"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    :goto_2
    new-instance v21, Lcom/zkunity/core/PaySelectDialog$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zkunity/core/PaySelectDialog$2;-><init>(Lcom/zkunity/core/PaySelectDialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "id"

    .line 170
    const-string v23, "pro_selects"

    .line 169
    invoke-static/range {v21 .. v23}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 171
    .local v18, "pro_selects_id":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 172
    .local v19, "select":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 173
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    .line 177
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v5, v0

    .line 178
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-lt v3, v5, :cond_7

    .line 200
    return-void

    .line 126
    .end local v3    # "i":I
    .end local v5    # "n":I
    .end local v8    # "pay_bus_name":Landroid/widget/TextView;
    .end local v9    # "pay_bus_name_en":Landroid/widget/TextView;
    .end local v10    # "pay_bus_name_en_id":I
    .end local v11    # "pay_bus_name_id":I
    .end local v12    # "pay_cancel":Landroid/widget/Button;
    .end local v13    # "pay_cancel_id":I
    .end local v18    # "pro_selects_id":I
    .end local v19    # "select":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 127
    const-string v21, "Payee"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    .restart local v8    # "pay_bus_name":Landroid/widget/TextView;
    .restart local v9    # "pay_bus_name_en":Landroid/widget/TextView;
    .restart local v10    # "pay_bus_name_en_id":I
    .restart local v11    # "pay_bus_name_id":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 140
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 149
    .restart local v12    # "pay_cancel":Landroid/widget/Button;
    .restart local v13    # "pay_cancel_id":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 150
    const-string v21, "Cancel payment"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 175
    .restart local v18    # "pro_selects_id":I
    .restart local v19    # "select":Landroid/widget/LinearLayout;
    :cond_6
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    goto :goto_3

    .line 179
    .restart local v3    # "i":I
    .restart local v5    # "n":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    move-object/from16 v21, v0

    aget v20, v21, v3

    .line 180
    .local v20, "type":I
    new-instance v4, Lcom/zkunity/core/ASelectLayoutt;

    invoke-virtual/range {p0 .. p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zkunity/core/PaySelectDialog;->pay_types:[I

    move-object/from16 v22, v0

    aget v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    move/from16 v23, v0

    .line 180
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v4, v0, v1, v2}, Lcom/zkunity/core/ASelectLayoutt;-><init>(Landroid/content/Context;II)V

    .line 182
    .local v4, "layout":Lcom/zkunity/core/ASelectLayoutt;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v21, Lcom/zkunity/core/PaySelectDialog$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/zkunity/core/PaySelectDialog$3;-><init>(Lcom/zkunity/core/PaySelectDialog;I)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/zkunity/core/ASelectLayoutt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 173
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    .line 175
    :array_1
    .array-data 4
        0x3
        0x4
        0x1
        0x2
    .end array-data
.end method

.method private initSelectSize()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "id"

    .line 210
    const-string v12, "select"

    .line 209
    invoke-static {v10, v11, v12}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 211
    .local v7, "select_id":I
    invoke-virtual {p0, v7}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 213
    .local v6, "select":Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_0

    .line 214
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 216
    .local v9, "w":I
    invoke-virtual {v6, v9, v9}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 217
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    .line 218
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 219
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    .line 220
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 222
    .local v4, "screenHeight":I
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->isScreenChange()Z

    move-result v0

    .line 224
    .local v0, "isLand":Z
    if-eqz v0, :cond_1

    const/high16 v10, 0x44200000    # 640.0f

    invoke-virtual {p0, v10}, Lcom/zkunity/core/PaySelectDialog;->px2dip(F)F

    move-result v8

    .line 225
    .local v8, "sh":F
    :goto_0
    const/4 v2, 0x0

    .line 226
    .local v2, "mScaleFactor":F
    int-to-float v10, v4

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_2

    .line 227
    int-to-float v10, v4

    div-float v2, v10, v8

    .line 235
    :goto_1
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    .line 241
    .local v3, "old_size":I
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 242
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 244
    const-string v10, "111111"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mScaleFactor:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 246
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 248
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v10, v4

    int-to-float v11, v3

    .line 249
    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    float-to-int v10, v10

    .line 248
    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 250
    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "isLand":Z
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "mScaleFactor":F
    .end local v3    # "old_size":I
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    .end local v8    # "sh":F
    .end local v9    # "w":I
    :cond_0
    return-void

    .line 224
    .restart local v0    # "isLand":Z
    .restart local v4    # "screenHeight":I
    .restart local v5    # "screenWidth":I
    .restart local v9    # "w":I
    :cond_1
    const/high16 v10, 0x448e0000    # 1136.0f

    invoke-virtual {p0, v10}, Lcom/zkunity/core/PaySelectDialog;->px2dip(F)F

    move-result v8

    goto :goto_0

    .line 229
    .restart local v2    # "mScaleFactor":F
    .restart local v8    # "sh":F
    :cond_2
    int-to-float v10, v4

    div-float v2, v8, v10

    goto :goto_1
.end method

.method private showPayUI()V
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    .line 92
    const-string v4, "select"

    .line 91
    invoke-static {v2, v3, v4}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "select_id":I
    invoke-virtual {p0, v1}, Lcom/zkunity/core/PaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 95
    .local v0, "select":Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public isScreenChange()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 258
    .local v0, "mConfiguration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 260
    .local v1, "ori":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 267
    :goto_0
    return v2

    .line 263
    :cond_0
    if-ne v1, v2, :cond_1

    move v2, v3

    .line 265
    goto :goto_0

    :cond_1
    move v2, v3

    .line 267
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    .line 51
    const-string v5, "zk_pay_select"

    .line 50
    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "select_id":I
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "viewDialog":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/zkunity/core/PaySelectDialog;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/zkunity/core/PaySelectDialog;->initSelectSize()V

    .line 56
    invoke-direct {p0}, Lcom/zkunity/core/PaySelectDialog;->initContent()V

    .line 57
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zkunity/core/PaySelectDialog$1;

    invoke-direct {v4, p0}, Lcom/zkunity/core/PaySelectDialog$1;-><init>(Lcom/zkunity/core/PaySelectDialog;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method public px2dip(F)F
    .locals 3
    .param p1, "pxValue"    # F

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/zkunity/core/PaySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 204
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public setBaseInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "langType"    # I
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog;->name:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/zkunity/core/PaySelectDialog;->langType:I

    .line 41
    iput-object p3, p0, Lcom/zkunity/core/PaySelectDialog;->price:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/zkunity/core/PaySelectDialog$AniHandler;

    invoke-direct {v0, p0}, Lcom/zkunity/core/PaySelectDialog$AniHandler;-><init>(Lcom/zkunity/core/PaySelectDialog;)V

    iput-object v0, p0, Lcom/zkunity/core/PaySelectDialog;->aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;

    .line 44
    return-void
.end method
