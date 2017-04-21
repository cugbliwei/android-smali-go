.class public Lcom/zkunity/sdk/ZKUnityPlayerActivity;
.super Lcom/onevcat/uniwebview/AndroidPlugin;
.source "ZKUnityPlayerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zkunity/sdk/MUnityPlayerProxy;->ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "zkunity.sdk.ZKUnityPlayerActivity.smali"
    const-string v2,  ".method protected onCreate(Landroid/os/Bundle;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    .line 15
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zkunity/app/AppManager;->initAppManager(Landroid/app/Activity;)V

    .line 16
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->onCreate()V

    .line 17
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->onDestroy()V

    .line 44
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onDestroy()V

    .line 45
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->onPause()V

    .line 32
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onPause()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->onResume()V

    .line 38
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onResume()V

    .line 39
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onStart()V

    .line 27
    return-void
.end method
