.class public Lcom/zkunity/core/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 101
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 102
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 104
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    .line 62
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/ActivityManager;

    .line 63
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 66
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 70
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "action"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    const-string v6, "payload"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 37
    .local v3, "payload":[B
    const-string v6, "taskid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "taskid":Ljava/lang/String;
    const-string v6, "messageid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "messageid":Ljava/lang/String;
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v6

    .line 42
    const v7, 0x15f91

    .line 41
    invoke-virtual {v6, p1, v5, v2, v7}, Lcom/igexin/sdk/PushManager;->sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 43
    if-eqz v3, :cond_0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 45
    .local v1, "data":Ljava/lang/String;
    const-string v6, "GetuiSdkDemo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "receiver payload : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, p1}, Lcom/zkunity/core/PushReceiver;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 47
    new-instance v4, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v4}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 48
    .local v4, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v4}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 49
    const-string v6, "uri"

    const-string v7, "sShowNotMessage"

    invoke-virtual {v4, v6, v7}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v6, "msg"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    goto :goto_0

    .line 53
    .end local v4    # "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/zkunity/core/PushReceiver;->openNativeNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public openNativeNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 74
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 75
    .local v3, "noteMng":Landroid/app/NotificationManager;
    const-string v6, "app_icon"

    const-string v7, "drawable"

    invoke-static {p1, v6, v7}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, "notificationIcon":I
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/zkunity/core/BaseActivity;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 82
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const/high16 v6, 0x8000000

    invoke-static {p1, v8, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "note":Landroid/app/Notification;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 85
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 86
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 87
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/zkunity/core/PushReceiver;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 92
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    const/4 v6, -0x1

    iput v6, v2, Landroid/app/Notification;->defaults:I

    .line 93
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v3, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    return-void

    .line 89
    :cond_0
    new-instance v2, Landroid/app/Notification;

    .end local v2    # "note":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 90
    .restart local v2    # "note":Landroid/app/Notification;
    invoke-virtual {p0, p1}, Lcom/zkunity/core/PushReceiver;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v6, p2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
