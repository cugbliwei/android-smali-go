.class Lcom/zkunity/paypal/PaypalUtils$2;
.super Ljava/lang/Object;
.source "PaypalUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/paypal/PaypalUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V
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

.field private final synthetic val$waitTime:J


# direct methods
.method constructor <init>(Lcom/zkunity/paypal/PaypalUtils;JLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/paypal/PaypalUtils$2;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iput-wide p2, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$waitTime:J

    iput-object p4, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$g_transaction_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$paymentid:Ljava/lang/String;

    iput-wide p6, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$time:J

    iput-boolean p8, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$isTest:Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 144
    :try_start_0
    iget-wide v2, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$waitTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils$2;->this$0:Lcom/zkunity/paypal/PaypalUtils;

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$g_transaction_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$paymentid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$time:J

    iget-boolean v6, p0, Lcom/zkunity/paypal/PaypalUtils$2;->val$isTest:Z

    # invokes: Lcom/zkunity/paypal/PaypalUtils;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V
    invoke-static/range {v1 .. v6}, Lcom/zkunity/paypal/PaypalUtils;->access$4(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 149
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
