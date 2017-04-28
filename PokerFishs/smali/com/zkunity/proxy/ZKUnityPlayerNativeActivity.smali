.class public Lcom/zkunity/proxy/ZKUnityPlayerNativeActivity;
.super Lcom/onevcat/uniwebview/AndroidPlugin;
.source "ZKUnityPlayerNativeActivity.java"


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
    .line 61
    invoke-static {p1}, Lcom/zkunity/core/SDKManager;->ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    invoke-static {p1, p2, p3}, Lcom/zkunity/core/SDKManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-static {p1}, Lcom/zkunity/core/SDKManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-static {p1}, Lcom/zkunity/core/SDKManager;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onDestroy()V

    .line 44
    invoke-static {}, Lcom/zkunity/core/SDKManager;->onDestroy()V

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
    invoke-static {p1}, Lcom/zkunity/core/SDKManager;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onPause()V

    .line 32
    invoke-static {}, Lcom/zkunity/core/SDKManager;->onPause()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onResume()V

    .line 38
    invoke-static {}, Lcom/zkunity/core/SDKManager;->onResume()V

    .line 39
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onStart()V

    .line 26
    invoke-static {}, Lcom/zkunity/core/SDKManager;->onStart()V

    .line 27
    return-void
.end method
