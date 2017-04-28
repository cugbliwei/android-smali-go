.class public Lcom/pay/PayDialog;
.super Landroid/app/Dialog;
.source "PayDialog.java"


# instance fields
.field private payInfo:Lcom/pay/PayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pay/PayInfo;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "payInfo"    # Lcom/pay/PayInfo;

    .prologue
    .line 26
    const-string v0, "style"

    const-string v1, "DialogBaseTheme"

    invoke-static {p1, v0, v1}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p2, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/pay/PayDialog;I)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/pay/PayDialog;->closePayAni(I)V

    return-void
.end method

.method private addPaySelectOptions()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 86
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 87
    .local v1, "lay_types":[I
    iget-object v5, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v5}, Lcom/pay/PayInfo;->getLangType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 88
    new-array v1, v9, [I

    .end local v1    # "lay_types":[I
    fill-array-data v1, :array_1

    .line 89
    .restart local v1    # "lay_types":[I
    :cond_0
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "zk_pay_selects"

    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, "v_id":I
    invoke-virtual {p0, v4}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 91
    .local v3, "paySelects":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_1

    .line 102
    return-void

    .line 93
    :cond_1
    new-instance v2, Lcom/pay/PaySelectOption;

    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v1, v0

    iget-object v7, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v7}, Lcom/pay/PayInfo;->getLangType()I

    move-result v7

    invoke-direct {p0}, Lcom/pay/PayDialog;->isPad()Z

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/pay/PaySelectOption;-><init>(Landroid/content/Context;IIZ)V

    .line 94
    .local v2, "option":Lcom/pay/PaySelectOption;
    new-instance v5, Lcom/pay/PayDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/pay/PayDialog$1;-><init>(Lcom/pay/PayDialog;Lcom/pay/PaySelectOption;)V

    invoke-virtual {v2, v5}, Lcom/pay/PaySelectOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    .line 88
    :array_1
    .array-data 4
        0x3
        0x4
        0x1
        0x2
    .end array-data
.end method

.method private closePayAni(I)V
    .locals 9
    .param p1, "pay_type"    # I

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "zk_pay_ui"

    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 138
    .local v3, "v_id":I
    invoke-virtual {p0, v3}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 140
    .local v2, "payUi":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 141
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 142
    .local v1, "move_to_y":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    invoke-direct {v0, v8, v8, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 143
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 145
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 146
    new-instance v5, Lcom/pay/PayDialog$5;

    invoke-direct {v5, p0, v2, p1}, Lcom/pay/PayDialog$5;-><init>(Lcom/pay/PayDialog;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    return-void
.end method

.method private initClickActions()V
    .locals 7

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "zk_pay"

    invoke-static {v4, v5, v6}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, "v_id":I
    invoke-virtual {p0, v3}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 108
    .local v0, "pay":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/pay/PayDialog$2;

    invoke-direct {v4, p0}, Lcom/pay/PayDialog$2;-><init>(Lcom/pay/PayDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "zk_pay_ui"

    invoke-static {v4, v5, v6}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 116
    invoke-virtual {p0, v3}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 117
    .local v2, "payUi":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/pay/PayDialog$3;

    invoke-direct {v4, p0}, Lcom/pay/PayDialog$3;-><init>(Lcom/pay/PayDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "zk_pay_cancel"

    invoke-static {v4, v5, v6}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 125
    invoke-virtual {p0, v3}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 126
    .local v1, "payCancel":Landroid/widget/Button;
    new-instance v4, Lcom/pay/PayDialog$4;

    invoke-direct {v4, p0}, Lcom/pay/PayDialog$4;-><init>(Lcom/pay/PayDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private initPayUIs()V
    .locals 6

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "zk_pay_shop_name"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "v_id":I
    invoke-virtual {p0, v0}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "zk_pay_shop_name":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getShopName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "zk_pay_shop_money"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "zk_pay_shop_money":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getPayPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method private isPad()Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPayAni()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "zk_pay_ui"

    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 170
    .local v3, "v_id":I
    invoke-virtual {p0, v3}, Lcom/pay/PayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 172
    .local v2, "payUi":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 173
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 174
    .local v1, "move_start_y":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    invoke-direct {v0, v8, v8, v5, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 177
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 178
    new-instance v5, Lcom/pay/PayDialog$6;

    invoke-direct {v5, p0, v2}, Lcom/pay/PayDialog$6;-><init>(Lcom/pay/PayDialog;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onCancelAction()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pay/PayDialog;->closePayAni(I)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "content_id":I
    iget-object v1, p0, Lcom/pay/PayDialog;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v1}, Lcom/pay/PayInfo;->getLangType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/pay/PayDialog;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zk_pay"

    invoke-static {v1, v2, v3}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Lcom/pay/PayDialog;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/pay/PayDialog;->initPayUIs()V

    .line 63
    invoke-direct {p0}, Lcom/pay/PayDialog;->initClickActions()V

    .line 64
    invoke-direct {p0}, Lcom/pay/PayDialog;->addPaySelectOptions()V

    .line 65
    invoke-direct {p0}, Lcom/pay/PayDialog;->showPayAni()V

    .line 66
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zk_pay_phone"

    invoke-static {v1, v2, v3}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/pay/PayDialog;->isPad()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zk_pay_en"

    invoke-static {v1, v2, v3}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/pay/PayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zk_pay_phone_en"

    invoke-static {v1, v2, v3}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
