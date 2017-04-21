.class public Lcom/p/NativeTools;
.super Ljava/lang/Object;
.source "NativeTools.java"


# static fields
.field private static isLisPowser:Z

.field private static isLisSemaphore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/p/NativeTools;->isLisPowser:Z

    .line 22
    sput-boolean v0, Lcom/p/NativeTools;->isLisSemaphore:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTextToClipboard(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/p/NativeTools$1;

    invoke-direct {v0, p0}, Lcom/p/NativeTools$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public static getAddressList()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/p/NativeTools$6;

    invoke-direct {v0}, Lcom/p/NativeTools$6;-><init>()V

    invoke-static {v0}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public static getLanguageEnv()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 48
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string v2, ""

    goto :goto_0
.end method

.method public static getPictureCallBack(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "NativeTools"

    const-string v1, "GetPictureCallBack"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static getTextFromClipboard()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 37
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 39
    .local v0, "cdText":Landroid/content/ClipData;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 40
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .end local v0    # "cdText":Landroid/content/ClipData;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static nativeGetPicture(Ljava/lang/String;)V
    .locals 1
    .param p0, "infos"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/p/NativeTools$3;

    invoke-direct {v0, p0}, Lcom/p/NativeTools$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public static nativeOpenPowerListener()V
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/p/NativeTools;->isLisPowser:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/p/NativeTools;->isLisPowser:Z

    .line 102
    new-instance v0, Lcom/p/NativeTools$4;

    invoke-direct {v0}, Lcom/p/NativeTools$4;-><init>()V

    invoke-static {v0}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static openSemaphoreListener()V
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/p/NativeTools;->isLisSemaphore:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/p/NativeTools;->isLisSemaphore:Z

    .line 124
    new-instance v0, Lcom/p/NativeTools$5;

    invoke-direct {v0}, Lcom/p/NativeTools$5;-><init>()V

    invoke-static {v0}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static refreshPowerInfo(II)V
    .locals 4
    .param p0, "power"    # I
    .param p1, "status"    # I

    .prologue
    .line 116
    const-string v0, "NativeTools"

    const-string v1, "RefreshPowerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static refreshSemaphoreInfo(Ljava/lang/String;I)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "signalLevel"    # I

    .prologue
    .line 143
    const-string v0, "NativeTools"

    const-string v1, "RefreshSemaphoreInfo"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static safeRun(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 159
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public static sendSMS(Ljava/lang/String;)I
    .locals 3
    .param p0, "infos"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 57
    if-nez p0, :cond_0

    .line 76
    :goto_0
    return v1

    .line 59
    :cond_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "ss":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-gt v2, v1, :cond_2

    .line 61
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 62
    :cond_2
    new-instance v1, Lcom/p/NativeTools$2;

    invoke-direct {v1, v0}, Lcom/p/NativeTools$2;-><init>([Ljava/lang/String;)V

    invoke-static {v1}, Lcom/p/NativeTools;->safeRun(Ljava/lang/Runnable;)V

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method
