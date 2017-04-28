.class public Lcom/zkunity/core/SDKManager;
.super Ljava/lang/Object;
.source "SDKManager.java"


# static fields
.field private static sdkOpt:Lcom/zkunity/core/SDKOpt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/zkunity/core/SDKManager;->sdkOpt:Lcom/zkunity/core/SDKOpt;

    new-instance v1, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v1, p0}, Lcom/zkunity/json/MJsonObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zkunity/core/SDKOpt;->onClinetEvent(Lcom/zkunity/json/MJsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkOpt()Lcom/zkunity/core/SDKOpt;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zkunity/core/SDKManager;->sdkOpt:Lcom/zkunity/core/SDKOpt;

    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 23
    sget-object v0, Lcom/zkunity/core/SDKManager;->sdkOpt:Lcom/zkunity/core/SDKOpt;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zkunity/core/SDKOpt;->onActivityResult(IILandroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    sget-object v0, Lcom/zkunity/core/SDKManager;->sdkOpt:Lcom/zkunity/core/SDKOpt;

    invoke-virtual {v0}, Lcom/zkunity/core/SDKOpt;->onOrientation()V

    .line 43
    return-void
.end method

.method public static onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    new-instance v0, Lcom/zkunity/core/SDKOpt;

    invoke-direct {v0}, Lcom/zkunity/core/SDKOpt;-><init>()V

    sput-object v0, Lcom/zkunity/core/SDKManager;->sdkOpt:Lcom/zkunity/core/SDKOpt;

    .line 18
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    return-void
.end method

.method public static onPause()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public static onResume()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static onStart()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public static sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V
    .locals 3
    .param p0, "msg"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 50
    const-string v0, "ZSDKCallbackObject"

    .line 51
    const-string v1, "ZSDKPlatformCallBack"

    invoke-virtual {p0}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static sendMessageToClinetBySafe(Lcom/zkunity/json/MJsonObject;)V
    .locals 2
    .param p0, "msg"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 55
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zkunity/core/SDKManager$1;

    invoke-direct {v1, p0}, Lcom/zkunity/core/SDKManager$1;-><init>(Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
