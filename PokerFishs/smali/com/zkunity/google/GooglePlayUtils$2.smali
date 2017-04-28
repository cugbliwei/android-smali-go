.class Lcom/zkunity/google/GooglePlayUtils$2;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/google/GooglePlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/google/GooglePlayUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/zkunity/google/Purchase;Lcom/zkunity/google/IabResult;)V
    .locals 6
    .param p1, "purchase"    # Lcom/zkunity/google/Purchase;
    .param p2, "result"    # Lcom/zkunity/google/IabResult;

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;
    invoke-static {v0}, Lcom/zkunity/google/GooglePlayUtils;->access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 178
    const-string v0, "zk_string_google_play"

    const/16 v1, 0x68

    .line 179
    const-string v2, "zk_google_not_start"

    .line 178
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-static {v0, v5}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-static {v0, v5}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 184
    invoke-virtual {p2}, Lcom/zkunity/google/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "time":Ljava/lang/String;
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 186
    # invokes: Lcom/zkunity/google/GooglePlayUtils;->saveSQLiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/zkunity/google/GooglePlayUtils;->access$2(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$2;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/zkunity/google/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 189
    # invokes: Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->access$3(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    .end local v4    # "time":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
