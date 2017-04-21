.class public Lcom/zkunity/core/ZKManager;
.super Ljava/lang/Object;
.source "ZKManager.java"


# static fields
.field private static manager:Lcom/zkunity/core/ZKManager;


# instance fields
.field private selectType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/zkunity/core/ZKManager;

    invoke-direct {v0}, Lcom/zkunity/core/ZKManager;-><init>()V

    sput-object v0, Lcom/zkunity/core/ZKManager;->manager:Lcom/zkunity/core/ZKManager;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/zkunity/core/ZKManager;->openSelect(Lcom/zkunity/sdk/ZKReqEvent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/ZKManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/core/ZKManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;

    return-object v0
.end method

.method public static getManager()Lcom/zkunity/core/ZKManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zkunity/core/ZKManager;->manager:Lcom/zkunity/core/ZKManager;

    return-object v0
.end method

.method private openSelect(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 7
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 243
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 244
    const-string v5, "cp_dialog"

    const-string v6, "style"

    .line 243
    invoke-static {v4, v5, v6}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 245
    .local v1, "style":I
    new-instance v0, Lcom/zkunity/core/ImageSelectDialog;

    .line 246
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 245
    invoke-direct {v0, v4, v1}, Lcom/zkunity/core/ImageSelectDialog;-><init>(Landroid/content/Context;I)V

    .line 247
    .local v0, "dialog":Lcom/zkunity/core/ImageSelectDialog;
    new-instance v4, Lcom/zkunity/core/ZKManager$12;

    invoke-direct {v4, p0}, Lcom/zkunity/core/ZKManager$12;-><init>(Lcom/zkunity/core/ZKManager;)V

    invoke-virtual {v0, v4}, Lcom/zkunity/core/ImageSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 253
    new-instance v4, Lcom/zkunity/core/ZKManager$13;

    invoke-direct {v4, p0, p1}, Lcom/zkunity/core/ZKManager$13;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {v0, v4}, Lcom/zkunity/core/ImageSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    new-instance v4, Lcom/zkunity/core/ZKManager$14;

    invoke-direct {v4, p0}, Lcom/zkunity/core/ZKManager$14;-><init>(Lcom/zkunity/core/ZKManager;)V

    invoke-virtual {v0, v4}, Lcom/zkunity/core/ImageSelectDialog;->setOnDataListener(Lcom/zkunity/core/ImageSelectDialog$OnDataListener;)V

    .line 282
    invoke-virtual {v0}, Lcom/zkunity/core/ImageSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 283
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 284
    .local v3, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 285
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 287
    invoke-virtual {v0, v3}, Lcom/zkunity/core/ImageSelectDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 288
    invoke-virtual {v0}, Lcom/zkunity/core/ImageSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 289
    invoke-virtual {v0}, Lcom/zkunity/core/ImageSelectDialog;->show()V

    .line 290
    return-void
.end method

.method private sInit(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "req"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 117
    new-instance v0, Lcom/zkunity/core/ZKManager$2;

    invoke-direct {v0, p0}, Lcom/zkunity/core/ZKManager$2;-><init>(Lcom/zkunity/core/ZKManager;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method private sLoginRelated(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "req"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 105
    new-instance v0, Lcom/zkunity/core/ZKManager$1;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$1;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method private sPay(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "req"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 131
    new-instance v0, Lcom/zkunity/core/ZKManager$3;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$3;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method private sendBitmapAndWordsToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 166
    new-instance v0, Lcom/zkunity/core/ZKManager$6;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$6;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private sendBitmapAndWordsToQzone(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 193
    new-instance v0, Lcom/zkunity/core/ZKManager$8;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$8;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method private sendPictureAndWordsToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 156
    new-instance v0, Lcom/zkunity/core/ZKManager$5;

    invoke-direct {v0, p0}, Lcom/zkunity/core/ZKManager$5;-><init>(Lcom/zkunity/core/ZKManager;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method private sendPictureAndWordsToQzone(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 183
    new-instance v0, Lcom/zkunity/core/ZKManager$7;

    invoke-direct {v0, p0}, Lcom/zkunity/core/ZKManager$7;-><init>(Lcom/zkunity/core/ZKManager;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private sendPictureToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 143
    new-instance v0, Lcom/zkunity/core/ZKManager$4;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$4;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method private sendWXImage(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 220
    new-instance v0, Lcom/zkunity/core/ZKManager$10;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$10;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method private sendWXText(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 210
    new-instance v0, Lcom/zkunity/core/ZKManager$9;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$9;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private sendWXWebpage(Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 1
    .param p1, "reqEvent"    # Lcom/zkunity/sdk/ZKReqEvent;

    .prologue
    .line 230
    new-instance v0, Lcom/zkunity/core/ZKManager$11;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/ZKManager$11;-><init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ZKManager;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method


# virtual methods
.method public ZSDKPlatformRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v3, Lcom/zkunity/sdk/ZKReqEvent;

    invoke-direct {v3}, Lcom/zkunity/sdk/ZKReqEvent;-><init>()V

    .line 49
    .local v3, "reqEvent":Lcom/zkunity/sdk/ZKReqEvent;
    invoke-virtual {v3, p1}, Lcom/zkunity/sdk/ZKReqEvent;->invokeData(Ljava/lang/String;)V

    .line 50
    const-string v5, "uri"

    invoke-virtual {v3, v5}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "uri":Ljava/lang/String;
    const-string v5, "sInit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sInit(Lcom/zkunity/sdk/ZKReqEvent;)V

    .line 100
    :cond_0
    :goto_0
    const-string v5, ""

    :goto_1
    return-object v5

    .line 53
    :cond_1
    const-string v5, "sLogin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sVaildNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    const-string v5, "visitorLogin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sGetVaildNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    const-string v5, "sVaildNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 56
    const-string v5, "sRregisterByMobileNums"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 57
    const-string v5, "sUpdateMima"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sVisAccount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    const-string v5, "getNewToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    const-string v5, "sGetExitClubVaildNum"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    const-string v5, "sExitClubVaildNums"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 61
    :cond_2
    invoke-virtual {v3}, Lcom/zkunity/sdk/ZKReqEvent;->getMObjs()Lcom/zkunity/model/MJSONObject;

    move-result-object v0

    .line 62
    .local v0, "jObject":Lcom/zkunity/model/MJSONObject;
    const-string v5, "sVisAccount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "getNewToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 63
    :cond_3
    const-string v5, "uid"

    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zkunity/core/SDKManager;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v0}, Lcom/zkunity/sdk/ZKReqEvent;->replaceData(Lcom/zkunity/model/MJSONObject;)V

    .line 66
    :cond_4
    const-string v5, "deviceId"

    invoke-static {}, Lcom/zkunity/info/MobileInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sLoginRelated(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 68
    .end local v0    # "jObject":Lcom/zkunity/model/MJSONObject;
    :cond_5
    const-string v5, "sBindUserAttrs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v5

    .line 70
    const-string v6, "attrs"

    invoke-virtual {v3, v6}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Lcom/zkunity/core/SDKManager;->sBindUserAttrs(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "r":I
    new-instance v2, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v2}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 72
    .local v2, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v2}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 73
    const-string v5, "rs"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lcom/zkunity/sdk/ZKResEvent;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 75
    .end local v1    # "r":I
    .end local v2    # "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    :cond_6
    const-string v5, "sLogout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    new-instance v2, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v2}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 77
    .restart local v2    # "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v2}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 78
    const-string v5, "uri"

    const-string v6, "sLogoutCall"

    invoke-virtual {v2, v5, v6}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v5, "rs"

    const/16 v6, 0x4e21

    invoke-virtual {v2, v5, v6}, Lcom/zkunity/sdk/ZKResEvent;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    goto/16 :goto_0

    .line 81
    .end local v2    # "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    :cond_7
    const-string v5, "sendWXText"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 82
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendWXText(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 83
    :cond_8
    const-string v5, "sendWXImage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 84
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendWXImage(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 85
    :cond_9
    const-string v5, "sendWXWebpage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 86
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendWXWebpage(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string v5, "sendPictureAndWordsToFriends"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 88
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendPictureAndWordsToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 89
    :cond_b
    const-string v5, "sendPictureToFriends"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 90
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendPictureToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 91
    :cond_c
    const-string v5, "sendPictureAndWordsToQzone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 92
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendPictureAndWordsToQzone(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string v5, "sendBitmapAndWordsToFriends"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 94
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendBitmapAndWordsToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 95
    :cond_e
    const-string v5, "sendBitmapAndWordsToQzone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 96
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sendBitmapAndWordsToQzone(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0

    .line 97
    :cond_f
    const-string v5, "sPay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    invoke-direct {p0, v3}, Lcom/zkunity/core/ZKManager;->sPay(Lcom/zkunity/sdk/ZKReqEvent;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 297
    invoke-static {p1, p2, p3}, Lcom/zkunity/core/SendToQQ;->onActivityResult(IILandroid/content/Intent;)V

    .line 298
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 313
    const-string v0, "ZKManager:onDestroy()"

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 317
    const-string v0, "ZKManager:onNewIntent()"

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 305
    const-string v0, "ZKManager:onPause()"

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 309
    const-string v0, "ZKManager:onResume()"

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "ZKManager:onStart()"

    invoke-static {v0}, Lcom/zkunity/log/ZLogger;->printLog(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method protected runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 293
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public startUp()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/zkunity/app/AppManager;->initAppManager(Landroid/app/Activity;)V

    .line 42
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/core/PayManager;->initAllPaySystem()V

    .line 43
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method
