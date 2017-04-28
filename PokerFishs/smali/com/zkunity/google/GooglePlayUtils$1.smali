.class Lcom/zkunity/google/GooglePlayUtils$1;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/google/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/zkunity/google/IabResult;Lcom/zkunity/google/Purchase;)V
    .locals 4
    .param p1, "result"    # Lcom/zkunity/google/IabResult;
    .param p2, "purchase"    # Lcom/zkunity/google/Purchase;

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;
    invoke-static {v0}, Lcom/zkunity/google/GooglePlayUtils;->access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 157
    const-string v0, "zk_string_google_play"

    const/16 v1, 0x67

    .line 158
    const-string v2, "zk_google_not_start"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-static {v0, v3}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/zkunity/google/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 164
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-static {v0, v3}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;
    invoke-static {v0}, Lcom/zkunity/google/GooglePlayUtils;->access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/google/GooglePlayUtils$1;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    iget-object v1, v1, Lcom/zkunity/google/GooglePlayUtils;->mConsumeFinishedListener:Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p2, v1}, Lcom/zkunity/google/IabHelper;->consumeAsync(Lcom/zkunity/google/Purchase;Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
