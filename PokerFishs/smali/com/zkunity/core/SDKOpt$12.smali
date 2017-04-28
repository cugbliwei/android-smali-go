.class Lcom/zkunity/core/SDKOpt$12;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sLogout(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;


# direct methods
.method constructor <init>(Lcom/zkunity/core/SDKOpt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$12;->this$0:Lcom/zkunity/core/SDKOpt;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$12;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->loginType:Ljava/lang/String;
    invoke-static {v1}, Lcom/zkunity/core/SDKOpt;->access$5(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$12;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->loginType:Ljava/lang/String;
    invoke-static {v1}, Lcom/zkunity/core/SDKOpt;->access$5(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zkunity/facebook/FacebookUtils;->logout()V

    .line 262
    :cond_0
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 263
    .local v0, "msg":Lcom/zkunity/json/MJsonObject;
    const-string v1, "uri"

    const-string v2, "sLogoutCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "rs"

    const/16 v2, 0x4e21

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 265
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 266
    return-void
.end method
