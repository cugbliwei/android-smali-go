.class public Lcom/p/NetworkBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBroadcastReciver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x5

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 18
    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 19
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 21
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 20
    invoke-static {v5, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 22
    .local v1, "signalLevel":I
    const-string v5, "wifi"

    invoke-static {v5, v1}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    .line 52
    .end local v1    # "signalLevel":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 24
    const-string v6, "android.net.wifi.STATE_CHANGE"

    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 26
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 27
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 28
    const-string v5, "wifi"

    invoke-static {v5, v8}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 32
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 34
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 33
    invoke-static {v5, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 35
    .restart local v1    # "signalLevel":I
    const-string v5, "wifi"

    invoke-static {v5, v1}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "signalLevel":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 38
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 41
    .local v4, "wifistate":I
    if-ne v4, v9, :cond_4

    .line 42
    const-string v5, "wifi"

    invoke-static {v5, v8}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_4
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 45
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 46
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 48
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 47
    invoke-static {v5, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 49
    .restart local v1    # "signalLevel":I
    const-string v5, "wifi"

    invoke-static {v5, v1}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
