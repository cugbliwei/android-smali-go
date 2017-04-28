.class Lcom/zkunity/core/SDKOpt$11;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sInit(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
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
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$11;->this$0:Lcom/zkunity/core/SDKOpt;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 230
    const/4 v0, 0x1

    .line 231
    .local v0, "isLimit":Z
    invoke-static {}, Lcom/zkunity/config/AppConfig;->initConfigs()V

    .line 232
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zkunity/facebook/FacebookUtils;->initFacebook()V

    .line 233
    invoke-static {}, Lcom/zkunity/google/GooglePlayUtils;->getObj()Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v2

    .line 234
    const-string v3, "google_base_key"

    invoke-static {v3}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 233
    invoke-virtual {v2, v3, v4}, Lcom/zkunity/google/GooglePlayUtils;->initGooglePlay(Ljava/lang/String;Z)V

    .line 235
    invoke-static {}, Lcom/zkunity/paypal/PaypalUtils;->getObj()Lcom/zkunity/paypal/PaypalUtils;

    move-result-object v3

    .line 237
    if-eqz v0, :cond_0

    const-string v2, "paypal_client_id_test"

    :goto_0
    invoke-static {v2}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v3, v0, v2}, Lcom/zkunity/paypal/PaypalUtils;->initPaypal(ZLjava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v2

    const-string v3, "wx_app_id"

    invoke-static {v3}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zkunity/wx/WXUtils;->initWX(Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/zkunity/bi/MobileTools;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/zkunity/bi/MobileTools;->cheakMobileInfoForUpdate(Landroid/content/Context;)Z

    move-result v3

    .line 242
    invoke-virtual {v2, v3}, Lcom/zkunity/core/SDKBiOpt;->setMobileUpdate(Z)V

    .line 246
    new-instance v1, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v1}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 247
    .local v1, "msg":Lcom/zkunity/json/MJsonObject;
    const-string v2, "uri"

    const-string v3, "sInitCall"

    invoke-virtual {v1, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "rs"

    const/16 v3, 0x4e21

    invoke-virtual {v1, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 249
    invoke-static {v1}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 250
    return-void

    .line 238
    .end local v1    # "msg":Lcom/zkunity/json/MJsonObject;
    :cond_0
    const-string v2, "paypal_client_id"

    goto :goto_0
.end method
