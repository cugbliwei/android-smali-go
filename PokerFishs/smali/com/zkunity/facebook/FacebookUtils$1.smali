.class Lcom/zkunity/facebook/FacebookUtils$1;
.super Ljava/lang/Object;
.source "FacebookUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/facebook/FacebookUtils;->loginFacebookSucc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/facebook/FacebookUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/facebook/FacebookUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/facebook/FacebookUtils$1;->this$0:Lcom/zkunity/facebook/FacebookUtils;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 4
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 134
    .local v0, "rss":Lcom/zkunity/json/MJsonObject;
    const-string v1, "uri"

    const-string v2, "sNonetwork"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "oUri"

    const-string v2, "sloginFb"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "rs"

    const-string v2, "-3"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 150
    .end local v0    # "rss":Lcom/zkunity/json/MJsonObject;
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "rs"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getSdkOpt()Lcom/zkunity/core/SDKOpt;

    move-result-object v1

    .line 141
    const-string v2, "uid"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/zkunity/core/SDKOpt;->setUid(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getSdkOpt()Lcom/zkunity/core/SDKOpt;

    move-result-object v1

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Lcom/zkunity/core/SDKOpt;->setLoginType(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v2

    .line 144
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    const-string v1, "isnew"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    .line 143
    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/zkunity/core/SDKBiOpt;->sendLoginLog(Ljava/lang/String;I)V

    .line 146
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v1

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    .line 148
    :cond_1
    invoke-static {p1}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v1, 0x6

    goto :goto_1
.end method
