.class Lcom/zkunity/paypal/PaypalUtils$3;
.super Ljava/lang/Object;
.source "PaypalUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/paypal/PaypalUtils;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/paypal/PaypalUtils;

.field private final synthetic val$g_transaction_id:Ljava/lang/String;

.field private final synthetic val$isTest:Z

.field private final synthetic val$paymentid:Ljava/lang/String;

.field private final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/paypal/PaypalUtils$3;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iput-object p2, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$g_transaction_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$paymentid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$time:J

    iput-boolean p6, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$isTest:Z

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 10
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const-wide/16 v7, 0xbb8

    .line 166
    if-nez p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$3;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$g_transaction_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$paymentid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$time:J

    iget-boolean v6, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$isTest:Z

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V
    invoke-static/range {v1 .. v8}, Lcom/zkunity/paypal/PaypalUtils;->access$5(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v1, "rs"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 171
    .local v9, "code":I
    const/16 v1, 0x4e21

    if-ne v9, v1, :cond_1

    .line 172
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 173
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$3;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$g_transaction_id:Ljava/lang/String;

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->deleteSQLiteInfo(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zkunity/paypal/PaypalUtils;->access$6(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    const/16 v1, -0x27d9

    if-ne v9, v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$3;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$g_transaction_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$paymentid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$time:J

    iget-boolean v6, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$isTest:Z

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V
    invoke-static/range {v1 .. v8}, Lcom/zkunity/paypal/PaypalUtils;->access$5(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZJ)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$3;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils$3;->val$g_transaction_id:Ljava/lang/String;

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->deleteSQLiteInfo(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zkunity/paypal/PaypalUtils;->access$6(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;)V

    goto :goto_0
.end method
