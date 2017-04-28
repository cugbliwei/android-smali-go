.class public Lcom/zkunity/core/PaySyncPostUtils;
.super Ljava/lang/Object;
.source "PaySyncPostUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postPayStatus(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "isOk"    # Ljava/lang/Boolean;

    .prologue
    .line 12
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 13
    .local v0, "payEvent":Lcom/zkunity/json/MJsonObject;
    const-string v1, "uri"

    const-string v2, "sPayCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v2, "rs"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinetBySafe(Lcom/zkunity/json/MJsonObject;)V

    .line 16
    return-void

    .line 14
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static showPayError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "string"

    const-string v6, "pay_error"

    .line 19
    invoke-static {v4, v5, v6}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "error_string_id":I
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "error":Ljava/lang/String;
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "string"

    .line 22
    invoke-static {v4, v5, p0}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 24
    .local v3, "type_string_id":I
    const-string v4, "[%type]"

    .line 25
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v4, "[%code]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 28
    const-string v5, "string"

    .line 27
    invoke-static {v4, v5, p2}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, "msg_string_id":I
    const-string v4, "[%msg]"

    .line 30
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v4, "zk_string_error"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/zkunity/toast/ToastUtils;->toast(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/toast/ToastCallback;)V

    .line 32
    return-void
.end method

.method public static showPayErrorA(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "string"

    const-string v5, "pay_error"

    .line 35
    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "error_string_id":I
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "error":Ljava/lang/String;
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "string"

    .line 38
    invoke-static {v3, v4, p0}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "type_string_id":I
    const-string v3, "[%type]"

    .line 41
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v3, "[%code]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v3, "[%msg]"

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v3, "zk_string_error"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/zkunity/toast/ToastUtils;->toast(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/toast/ToastCallback;)V

    .line 45
    return-void
.end method
