.class public Lcom/pay/PayUtils;
.super Ljava/lang/Object;
.source "PayUtils.java"


# static fields
.field private static dialog:Lcom/pay/PayDialog;

.field private static payInfo:Lcom/pay/PayInfo;

.field public static pay_select_type:I

.field public static root_ctx:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/pay/PayUtils;->pay_select_type:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/pay/PayDialog;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pay/PayDialog;)V
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    return-void
.end method

.method public static onRotation(Landroid/app/Activity;)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 45
    sget-object v0, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    invoke-virtual {v0}, Lcom/pay/PayDialog;->dismiss()V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    .line 48
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-static {p0, v0}, Lcom/pay/PayUtils;->payDialogShow(Landroid/app/Activity;Lcom/pay/PayInfo;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static openPay()V
    .locals 7

    .prologue
    .line 53
    sget v0, Lcom/pay/PayUtils;->pay_select_type:I

    if-ltz v0, :cond_0

    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget v0, Lcom/pay/PayUtils;->pay_select_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 56
    invoke-static {}, Lcom/zkunity/google/GooglePlayUtils;->getObj()Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v2}, Lcom/pay/PayInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v4}, Lcom/pay/PayInfo;->getG_role_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v5}, Lcom/pay/PayInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->startPayWithRemoteGoogle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    goto :goto_0

    .line 58
    :cond_3
    sget v0, Lcom/pay/PayUtils;->pay_select_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 59
    invoke-static {}, Lcom/zkunity/paypal/PaypalUtils;->getObj()Lcom/zkunity/paypal/PaypalUtils;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v2}, Lcom/pay/PayInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v4}, Lcom/pay/PayInfo;->getG_role_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v5}, Lcom/pay/PayInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 61
    sget-object v6, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v6}, Lcom/pay/PayInfo;->isTest()Z

    move-result v6

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/zkunity/paypal/PaypalUtils;->startPayPalPaymentRemote(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 62
    :cond_4
    sget v0, Lcom/pay/PayUtils;->pay_select_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 63
    invoke-static {}, Lcom/zkunity/alipay/AlipayUtils;->getObj()Lcom/zkunity/alipay/AlipayUtils;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v2}, Lcom/pay/PayInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v4}, Lcom/pay/PayInfo;->getG_role_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v5}, Lcom/pay/PayInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/alipay/AlipayUtils;->startPayWithRemoteAlipay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_5
    sget v0, Lcom/pay/PayUtils;->pay_select_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 66
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 67
    sget-object v2, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v2}, Lcom/pay/PayInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v3}, Lcom/pay/PayInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v4}, Lcom/pay/PayInfo;->getG_role_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v5}, Lcom/pay/PayInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/wx/WXUtils;->startPayWithRemoteWX(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static openPaySelects(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "langType"    # I
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "gid"    # Ljava/lang/String;
    .param p7, "g_role_id"    # Ljava/lang/String;
    .param p8, "uid"    # Ljava/lang/String;
    .param p9, "isTest"    # Z

    .prologue
    .line 27
    sput-object p0, Lcom/pay/PayUtils;->root_ctx:Landroid/app/Activity;

    .line 28
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/pay/PayInfo;

    invoke-direct {v0}, Lcom/pay/PayInfo;-><init>()V

    sput-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    .line 32
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p2}, Lcom/pay/PayInfo;->setLangType(I)V

    .line 33
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pay/PayInfo;->setPayPrice(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p1}, Lcom/pay/PayInfo;->setShopName(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p7}, Lcom/pay/PayInfo;->setG_role_id(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p6}, Lcom/pay/PayInfo;->setGid(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p5}, Lcom/pay/PayInfo;->setSid(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p8}, Lcom/pay/PayInfo;->setUid(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-virtual {v0, p9}, Lcom/pay/PayInfo;->setTest(Z)V

    .line 40
    sget-object v0, Lcom/pay/PayUtils;->payInfo:Lcom/pay/PayInfo;

    invoke-static {p0, v0}, Lcom/pay/PayUtils;->payDialogShow(Landroid/app/Activity;Lcom/pay/PayInfo;)V

    goto :goto_0
.end method

.method private static payDialogShow(Landroid/app/Activity;Lcom/pay/PayInfo;)V
    .locals 6
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "payInfo"    # Lcom/pay/PayInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 73
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v2, Lcom/pay/PayDialog;

    invoke-direct {v2, p0, p1}, Lcom/pay/PayDialog;-><init>(Landroid/content/Context;Lcom/pay/PayInfo;)V

    sput-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    .line 77
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    invoke-virtual {v2}, Lcom/pay/PayDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 79
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 81
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 85
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    invoke-virtual {v2, v5}, Lcom/pay/PayDialog;->setCancelable(Z)V

    .line 91
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    invoke-virtual {v2, v5}, Lcom/pay/PayDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    new-instance v3, Lcom/pay/PayUtils$1;

    invoke-direct {v3}, Lcom/pay/PayUtils$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/pay/PayDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 102
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    new-instance v3, Lcom/pay/PayUtils$2;

    invoke-direct {v3}, Lcom/pay/PayUtils$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/pay/PayDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    sget-object v2, Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;

    invoke-virtual {v2}, Lcom/pay/PayDialog;->show()V

    goto :goto_0
.end method
