.class Lcom/zkunity/paypal/PaypalUtils$1;
.super Ljava/lang/Object;
.source "PaypalUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/paypal/PaypalUtils;->startPayPalPaymentRemote(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/paypal/PaypalUtils;

.field private final synthetic val$isTest:Z


# direct methods
.method constructor <init>(Lcom/zkunity/paypal/PaypalUtils;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iput-boolean p2, p0, Lcom/zkunity/paypal/PaypalUtils$1;->val$isTest:Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 4
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 72
    const-string v0, "zk_string_paypal"

    .line 73
    const/16 v1, 0x68

    const-string v2, "zk_not_create_order"

    .line 72
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "rs"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    const-string v1, "g_transaction_id"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zkunity/paypal/PaypalUtils;->access$0(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-boolean v1, p0, Lcom/zkunity/paypal/PaypalUtils$1;->val$isTest:Z

    invoke-static {v0, v1}, Lcom/zkunity/paypal/PaypalUtils;->access$1(Lcom/zkunity/paypal/PaypalUtils;Z)V

    .line 77
    iget-object v0, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    # getter for: Lcom/zkunity/paypal/PaypalUtils;->gTransactionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/zkunity/paypal/PaypalUtils;->access$2(Lcom/zkunity/paypal/PaypalUtils;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zkunity/paypal/PaypalUtils$1;->val$isTest:Z

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->saveSQLiteInfo(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/zkunity/paypal/PaypalUtils;->access$3(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Z)Z

    .line 78
    iget-object v0, p0, Lcom/zkunity/paypal/PaypalUtils$1;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "code"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/zkunity/paypal/PaypalUtils;->startPayPalPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 82
    const-string v0, "zk_string_paypal"

    .line 83
    const-string v1, "rs"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "zk_not_create_order"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
