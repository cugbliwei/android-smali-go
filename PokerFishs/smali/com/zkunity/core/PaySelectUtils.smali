.class public Lcom/zkunity/core/PaySelectUtils;
.super Ljava/lang/Object;
.source "PaySelectUtils.java"


# static fields
.field private static code:Ljava/lang/String;

.field private static dialog:Lcom/zkunity/core/PaySelectDialog;

.field private static g_role_id:Ljava/lang/String;

.field private static gid:Ljava/lang/String;

.field private static isTest:Z

.field private static isopen:Z

.field private static langType:I

.field private static name:Ljava/lang/String;

.field private static price:Ljava/lang/String;

.field private static sid:Ljava/lang/String;

.field private static uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/PaySelectDialog;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    return-void
.end method

.method public static onOrientation(Landroid/app/Activity;)V
    .locals 8
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 83
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    if-eqz v2, :cond_2

    .line 86
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->dismiss()V

    .line 88
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    .line 90
    :cond_2
    new-instance v2, Lcom/zkunity/core/PaySelectDialog;

    invoke-direct {v2, p0}, Lcom/zkunity/core/PaySelectDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    .line 91
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    sget-object v3, Lcom/zkunity/core/PaySelectUtils;->name:Ljava/lang/String;

    sget v4, Lcom/zkunity/core/PaySelectUtils;->langType:I

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/zkunity/core/PaySelectUtils;->code:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/zkunity/core/PaySelectUtils;->price:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/zkunity/core/PaySelectDialog;->setBaseInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    new-instance v3, Lcom/zkunity/core/PaySelectUtils$3;

    invoke-direct {v3}, Lcom/zkunity/core/PaySelectUtils$3;-><init>()V

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    new-instance v3, Lcom/zkunity/core/PaySelectUtils$4;

    invoke-direct {v3}, Lcom/zkunity/core/PaySelectUtils$4;-><init>()V

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 107
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 109
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 113
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->show()V

    goto :goto_0
.end method

.method public static onSelect(I)V
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 122
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 123
    invoke-static {}, Lcom/zkunity/google/GooglePlayUtils;->getObj()Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->sid:Ljava/lang/String;

    sget-object v3, Lcom/zkunity/core/PaySelectUtils;->gid:Ljava/lang/String;

    sget-object v4, Lcom/zkunity/core/PaySelectUtils;->g_role_id:Ljava/lang/String;

    sget-object v5, Lcom/zkunity/core/PaySelectUtils;->uid:Ljava/lang/String;

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->startPayWithRemoteGoogle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zkunity/core/PaySelectUtils;->isopen:Z

    .line 136
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 126
    invoke-static {}, Lcom/zkunity/paypal/PaypalUtils;->getObj()Lcom/zkunity/paypal/PaypalUtils;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->sid:Ljava/lang/String;

    sget-object v3, Lcom/zkunity/core/PaySelectUtils;->gid:Ljava/lang/String;

    sget-object v4, Lcom/zkunity/core/PaySelectUtils;->g_role_id:Ljava/lang/String;

    sget-object v5, Lcom/zkunity/core/PaySelectUtils;->uid:Ljava/lang/String;

    .line 128
    sget-boolean v6, Lcom/zkunity/core/PaySelectUtils;->isTest:Z

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/zkunity/paypal/PaypalUtils;->startPayPalPaymentRemote(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 130
    invoke-static {}, Lcom/zkunity/alipay/AlipayUtils;->getObj()Lcom/zkunity/alipay/AlipayUtils;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->sid:Ljava/lang/String;

    sget-object v3, Lcom/zkunity/core/PaySelectUtils;->gid:Ljava/lang/String;

    sget-object v4, Lcom/zkunity/core/PaySelectUtils;->g_role_id:Ljava/lang/String;

    sget-object v5, Lcom/zkunity/core/PaySelectUtils;->uid:Ljava/lang/String;

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/alipay/AlipayUtils;->startPayWithRemoteAlipay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 133
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 134
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->sid:Ljava/lang/String;

    sget-object v3, Lcom/zkunity/core/PaySelectUtils;->gid:Ljava/lang/String;

    sget-object v4, Lcom/zkunity/core/PaySelectUtils;->g_role_id:Ljava/lang/String;

    sget-object v5, Lcom/zkunity/core/PaySelectUtils;->uid:Ljava/lang/String;

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/wx/WXUtils;->startPayWithRemoteWX(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showPaySelect(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
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
    .line 37
    sget-boolean v2, Lcom/zkunity/core/PaySelectUtils;->isopen:Z

    if-eqz v2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 39
    :cond_0
    sput-object p1, Lcom/zkunity/core/PaySelectUtils;->name:Ljava/lang/String;

    .line 40
    sput p2, Lcom/zkunity/core/PaySelectUtils;->langType:I

    .line 41
    sput-object p3, Lcom/zkunity/core/PaySelectUtils;->code:Ljava/lang/String;

    .line 42
    sput-object p4, Lcom/zkunity/core/PaySelectUtils;->price:Ljava/lang/String;

    .line 43
    sput-object p5, Lcom/zkunity/core/PaySelectUtils;->sid:Ljava/lang/String;

    .line 44
    sput-object p6, Lcom/zkunity/core/PaySelectUtils;->gid:Ljava/lang/String;

    .line 45
    sput-object p7, Lcom/zkunity/core/PaySelectUtils;->g_role_id:Ljava/lang/String;

    .line 46
    sput-object p8, Lcom/zkunity/core/PaySelectUtils;->uid:Ljava/lang/String;

    .line 47
    sput-boolean p9, Lcom/zkunity/core/PaySelectUtils;->isTest:Z

    .line 48
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    if-nez v2, :cond_1

    .line 49
    new-instance v2, Lcom/zkunity/core/PaySelectDialog;

    invoke-direct {v2, p0}, Lcom/zkunity/core/PaySelectDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    .line 50
    :cond_1
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/zkunity/core/PaySelectDialog;->setBaseInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    new-instance v3, Lcom/zkunity/core/PaySelectUtils$1;

    invoke-direct {v3}, Lcom/zkunity/core/PaySelectUtils$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    new-instance v3, Lcom/zkunity/core/PaySelectUtils$2;

    invoke-direct {v3}, Lcom/zkunity/core/PaySelectUtils$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PaySelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 66
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 68
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    sget-object v2, Lcom/zkunity/core/PaySelectUtils;->dialog:Lcom/zkunity/core/PaySelectDialog;

    invoke-virtual {v2}, Lcom/zkunity/core/PaySelectDialog;->show()V

    .line 78
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zkunity/core/PaySelectUtils;->isopen:Z

    goto :goto_0
.end method
