.class public Lcom/p/BatteryBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReciver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 14
    .local v0, "level":I
    const-string v2, "status"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 36
    invoke-static {v0, v4}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    .line 40
    .end local v0    # "level":I
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 17
    .restart local v0    # "level":I
    .restart local v1    # "status":I
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    goto :goto_0

    .line 21
    :pswitch_1
    invoke-static {v0, v5}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    goto :goto_0

    .line 24
    :pswitch_2
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    goto :goto_0

    .line 28
    :pswitch_3
    invoke-static {v0, v5}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    goto :goto_0

    .line 32
    :pswitch_4
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/p/NativeTools;->refreshPowerInfo(II)V

    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
