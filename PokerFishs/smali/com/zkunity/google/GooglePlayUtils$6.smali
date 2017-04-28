.class Lcom/zkunity/google/GooglePlayUtils$6;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/GooglePlayUtils;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$6;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iput-object p2, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$payment_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$receipt:Ljava/lang/String;

    iput-object p4, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$sign:Ljava/lang/String;

    iput-object p5, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$time:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 7
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const/16 v5, 0xbb8

    .line 259
    if-nez p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$6;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iget-object v1, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$payment_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$receipt:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$sign:Ljava/lang/String;

    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$time:Ljava/lang/String;

    # invokes: Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->access$3(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "rs"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 263
    .local v6, "code":I
    const/16 v0, 0x4e21

    if-ne v6, v0, :cond_1

    .line 264
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 265
    :cond_1
    const/16 v0, -0x27d9

    if-ne v6, v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$6;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iget-object v1, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$payment_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$receipt:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$sign:Ljava/lang/String;

    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$time:Ljava/lang/String;

    # invokes: Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->access$3(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$6;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iget-object v1, p0, Lcom/zkunity/google/GooglePlayUtils$6;->val$payment_id:Ljava/lang/String;

    # invokes: Lcom/zkunity/google/GooglePlayUtils;->deleteSQLiteInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zkunity/google/GooglePlayUtils;->access$7(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;)V

    goto :goto_0
.end method
