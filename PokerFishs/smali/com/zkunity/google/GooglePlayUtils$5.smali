.class Lcom/zkunity/google/GooglePlayUtils$5;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/google/GooglePlayUtils;

.field private final synthetic val$payment_id:Ljava/lang/String;

.field private final synthetic val$receipt:Ljava/lang/String;

.field private final synthetic val$sign:Ljava/lang/String;

.field private final synthetic val$time:Ljava/lang/String;

.field private final synthetic val$waitTime:I


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$5;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iput p2, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$waitTime:I

    iput-object p3, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$payment_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$receipt:Ljava/lang/String;

    iput-object p5, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$sign:Ljava/lang/String;

    iput-object p6, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$time:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 208
    :try_start_0
    iget v1, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$waitTime:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/zkunity/google/GooglePlayUtils$5;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iget-object v2, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$payment_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$receipt:Ljava/lang/String;

    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$sign:Ljava/lang/String;

    iget-object v5, p0, Lcom/zkunity/google/GooglePlayUtils$5;->val$time:Ljava/lang/String;

    # invokes: Lcom/zkunity/google/GooglePlayUtils;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/zkunity/google/GooglePlayUtils;->access$6(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
