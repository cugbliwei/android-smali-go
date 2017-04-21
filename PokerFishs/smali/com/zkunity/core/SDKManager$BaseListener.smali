.class Lcom/zkunity/core/SDKManager$BaseListener;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/zkunity/network/SyncNetworkCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/SDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseListener"
.end annotation


# instance fields
.field private oUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/zkunity/core/SDKManager;


# direct methods
.method public constructor <init>(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "oUri"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/zkunity/core/SDKManager$BaseListener;->oUri:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/zkunity/core/SDKManager$BaseListener;->oUri:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public onFailure(ILcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 167
    new-instance v0, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v0}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 168
    .local v0, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v0}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 169
    iget-object v1, p0, Lcom/zkunity/core/SDKManager$BaseListener;->oUri:Ljava/lang/String;

    const-string v2, "sGetNewTokenCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "uri"

    const-string v2, "sGetNewTokenCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "rs"

    const-string v2, "-3"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    .line 178
    return-void

    .line 173
    :cond_0
    const-string v1, "uri"

    const-string v2, "sNonetwork"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "oUri"

    iget-object v2, p0, Lcom/zkunity/core/SDKManager$BaseListener;->oUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "rs"

    const-string v2, "-3"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "rs"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v1}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 137
    .local v1, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 138
    .local v0, "mjObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v1, p2}, Lcom/zkunity/sdk/ZKResEvent;->invokeData(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p2}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 140
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "uri":Ljava/lang/String;
    const-string v3, "sRregisterByMobileNumsCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "rs"

    invoke-virtual {v0, v3}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "uid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$0(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "sid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$1(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    # getter for: Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;
    invoke-static {v5}, Lcom/zkunity/core/SDKManager;->access$2(Lcom/zkunity/core/SDKManager;)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {v3, v4, v5}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    .line 161
    :cond_0
    :goto_0
    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    .line 163
    return-void

    .line 147
    :cond_1
    const-string v3, "sLoginCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    const-string v3, "rs"

    invoke-virtual {v0, v3}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "uid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$0(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "sid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$1(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/zkunity/core/MobileInfoManager;->getManager()Lcom/zkunity/core/MobileInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zkunity/core/MobileInfoManager;->pushMobileInfo()V

    .line 152
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v3

    .line 153
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    # getter for: Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;
    invoke-static {v5}, Lcom/zkunity/core/SDKManager;->access$2(Lcom/zkunity/core/SDKManager;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {v3, v4, v5}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 154
    :cond_2
    const-string v3, "sGetNewTokenCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "rs"

    invoke-virtual {v0, v3}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "20001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "uid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$0(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    const-string v4, "sid"

    invoke-virtual {v0, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zkunity/core/SDKManager;->access$1(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v3

    .line 159
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKManager$BaseListener;->this$0:Lcom/zkunity/core/SDKManager;

    # getter for: Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;
    invoke-static {v5}, Lcom/zkunity/core/SDKManager;->access$2(Lcom/zkunity/core/SDKManager;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual {v3, v4, v5}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
