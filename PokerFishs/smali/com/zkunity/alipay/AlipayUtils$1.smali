.class Lcom/zkunity/alipay/AlipayUtils$1;
.super Ljava/lang/Object;
.source "AlipayUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/alipay/AlipayUtils;->startPayWithRemoteAlipay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/alipay/AlipayUtils;

.field private final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zkunity/alipay/AlipayUtils;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/alipay/AlipayUtils$1;->this$0:Lcom/zkunity/alipay/AlipayUtils;

    iput-object p2, p0, Lcom/zkunity/alipay/AlipayUtils$1;->val$act:Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 10
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 47
    const-string v0, "zk_string_alipay"

    .line 48
    const/16 v1, 0x68

    const-string v2, "zk_not_create_order"

    .line 47
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "rs"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zkunity/alipay/AlipayUtils$1;->this$0:Lcom/zkunity/alipay/AlipayUtils;

    .line 51
    const-string v1, "out_trade_no"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "subject"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, "body"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "total_amount"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    const-string v5, "notify_url"

    invoke-virtual {p1, v5}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    # invokes: Lcom/zkunity/alipay/AlipayUtils;->getOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/zkunity/alipay/AlipayUtils;->access$0(Lcom/zkunity/alipay/AlipayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "orderInfo":Ljava/lang/String;
    const-string v0, "alipay_rsa"

    invoke-static {v0}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v7, v0}, Lcom/zkunity/alipay/SignUtils;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "sign":Ljava/lang/String;
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v9, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 66
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sign=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v1, "\"&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/alipay/AlipayUtils$1;->this$0:Lcom/zkunity/alipay/AlipayUtils;

    # invokes: Lcom/zkunity/alipay/AlipayUtils;->getSignType()Ljava/lang/String;
    invoke-static {v1}, Lcom/zkunity/alipay/AlipayUtils;->access$1(Lcom/zkunity/alipay/AlipayUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "payInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/zkunity/alipay/AlipayUtils$1;->this$0:Lcom/zkunity/alipay/AlipayUtils;

    iget-object v1, p0, Lcom/zkunity/alipay/AlipayUtils$1;->val$act:Landroid/app/Activity;

    # invokes: Lcom/zkunity/alipay/AlipayUtils;->startPayWithNativeAlipay(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v8}, Lcom/zkunity/alipay/AlipayUtils;->access$2(Lcom/zkunity/alipay/AlipayUtils;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v8    # "payInfo":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 64
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
