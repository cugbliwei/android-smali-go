.class public Lcom/p/TelePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "TelePhoneStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isWiFiActive(Landroid/content/Context;)Z
    .locals 6
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "context":Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 51
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_1

    .line 60
    .end local v2    # "i":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 53
    .restart local v2    # "i":I
    .restart local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    const/4 v4, 0x1

    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/16 v9, 0x63

    const/16 v8, 0x8

    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "level":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "ssignal":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 18
    .local v3, "parts":[Ljava/lang/String;
    sget-object v6, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 19
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 20
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 21
    .local v1, "dbm":I
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    .line 22
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0x71

    .line 28
    :cond_0
    :goto_0
    add-int/lit8 v6, v1, 0x71

    div-int/lit8 v0, v6, 0x2

    .line 29
    .local v0, "asu":I
    const/4 v6, 0x2

    if-le v0, v6, :cond_1

    if-ne v0, v9, :cond_3

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_1
    const-string v6, "gsm"

    invoke-static {v6, v2}, Lcom/p/NativeTools;->refreshSemaphoreInfo(Ljava/lang/String;I)V

    .line 43
    return-void

    .line 24
    .end local v0    # "asu":I
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0x71

    goto :goto_0

    .line 31
    .restart local v0    # "asu":I
    :cond_3
    const/16 v6, 0x11

    if-lt v0, v6, :cond_4

    .line 32
    const/4 v2, 0x5

    goto :goto_1

    .line 33
    :cond_4
    const/16 v6, 0xc

    if-lt v0, v6, :cond_5

    .line 34
    const/4 v2, 0x4

    goto :goto_1

    .line 35
    :cond_5
    if-lt v0, v8, :cond_6

    .line 36
    const/4 v2, 0x3

    goto :goto_1

    .line 37
    :cond_6
    const/4 v6, 0x5

    if-lt v0, v6, :cond_7

    .line 38
    const/4 v2, 0x2

    goto :goto_1

    .line 40
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method
