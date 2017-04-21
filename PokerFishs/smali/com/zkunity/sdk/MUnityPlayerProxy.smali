.class public Lcom/zkunity/sdk/MUnityPlayerProxy;
.super Ljava/lang/Object;
.source "MUnityPlayerProxy.java"


# static fields
.field private static final UnityObjectName:Ljava/lang/String; = "ZSDKCallbackObject"

.field private static _proxy:Lcom/zkunity/sdk/MUnityPlayerProxy; = null

.field private static final callFunName:Ljava/lang/String; = "ZSDKPlatformCallBack"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/zkunity/sdk/MUnityPlayerProxy;

    invoke-direct {v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;-><init>()V

    sput-object v0, Lcom/zkunity/sdk/MUnityPlayerProxy;->_proxy:Lcom/zkunity/sdk/MUnityPlayerProxy;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/zkunity/sdk/MUnityPlayerProxy;->_proxy:Lcom/zkunity/sdk/MUnityPlayerProxy;

    return-object v0
.end method


# virtual methods
.method public ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zkunity/core/ZKManager;->ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/core/ZKManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/ZKManager;->startUp()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/ZKManager;->onResume()V

    .line 49
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zkunity/core/ZKManager;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/ZKManager;->onPause()V

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/ZKManager;->onResume()V

    .line 45
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/zkunity/core/ZKManager;->getManager()Lcom/zkunity/core/ZKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/ZKManager;->onStart()V

    .line 37
    return-void
.end method

.method public sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V
    .locals 3
    .param p1, "resEvent"    # Lcom/zkunity/sdk/ZKResEvent;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/zkunity/sdk/ZKResEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 67
    const-string v0, "ZSDKCallbackObject"

    const-string v1, "ZSDKPlatformCallBack"

    .line 68
    invoke-virtual {p1}, Lcom/zkunity/sdk/ZKResEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 62
    const-string v0, "ZSDKCallbackObject"

    const-string v1, "ZSDKPlatformCallBack"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
