.class Lcom/zkunity/alipay/AlipayUtils$2;
.super Ljava/lang/Object;
.source "AlipayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/alipay/AlipayUtils;->startPayWithNativeAlipay(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/alipay/AlipayUtils;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$payInfos:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/alipay/AlipayUtils;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/alipay/AlipayUtils$2;->this$0:Lcom/zkunity/alipay/AlipayUtils;

    iput-object p2, p0, Lcom/zkunity/alipay/AlipayUtils$2;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zkunity/alipay/AlipayUtils$2;->val$payInfos:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 81
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v4, p0, Lcom/zkunity/alipay/AlipayUtils$2;->val$act:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 82
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    iget-object v4, p0, Lcom/zkunity/alipay/AlipayUtils$2;->val$payInfos:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Lcom/zkunity/alipay/PayResult;

    invoke-direct {v1, v2}, Lcom/zkunity/alipay/PayResult;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "payResult":Lcom/zkunity/alipay/PayResult;
    invoke-virtual {v1}, Lcom/zkunity/alipay/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "resultStatus":Ljava/lang/String;
    const-string v4, "9000"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
