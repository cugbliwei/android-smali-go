.class public Lcom/zkunity/core/SDKOpt;
.super Ljava/lang/Object;
.source "SDKOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/SDKOpt$DonotOptResponse;
    }
.end annotation


# instance fields
.field private loginType:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt;->sid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt;->loginType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/zkunity/core/SDKOpt;[B)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zkunity/core/SDKOpt;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private donotOpt(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "getNewToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "visitorLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sGetVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string v0, "sRregisterByMobileNums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const-string v0, "sVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sUpdateMima"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "sVisAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sGetExitClubVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sExitClubVaildNumsByOther"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sExitClubVaildNums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDonotOptInfos(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 311
    const-string v0, "sVisAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getNewToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    const-string v0, "uid"

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    const-string v0, "sGetVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "visitorLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    const-string v0, "sVisAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    const-string v0, "sRregisterByMobileNums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_2
    const-string v0, "deviceId"

    .line 317
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zkunity/bi/MobileTools;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {p2, v0, v1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_3
    return-void
.end method

.method private getBitmapFromByte([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "temp"    # [B

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 170
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v0, "sGetVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "get_Vaild_num_req"

    .line 306
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const-string v0, "sVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "vaild_num_req"

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, "sRregisterByMobileNums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    const-string v0, "register_mobile_num_req"

    goto :goto_0

    .line 290
    :cond_2
    const-string v0, "visitorLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    const-string v0, "visitor_login_req"

    goto :goto_0

    .line 292
    :cond_3
    const-string v0, "sLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    const-string v0, "mobile_login_req"

    goto :goto_0

    .line 294
    :cond_4
    const-string v0, "sUpdateMima"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    const-string v0, "update_mobile_password_req"

    goto :goto_0

    .line 296
    :cond_5
    const-string v0, "sVisAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    const-string v0, "bind_mobile_req"

    goto :goto_0

    .line 298
    :cond_6
    const-string v0, "getNewToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    const-string v0, "get_new_token_req"

    goto :goto_0

    .line 300
    :cond_7
    const-string v0, "sGetExitClubVaildNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    const-string v0, "get_exit_vaildnum_req"

    goto :goto_0

    .line 302
    :cond_8
    const-string v0, "sExitClubVaildNumsByOther"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    const-string v0, "get_exit_vaildnum_by_other_req"

    goto :goto_0

    .line 304
    :cond_9
    const-string v0, "sExitClubVaildNums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 305
    const-string v0, "exit_vaildnum_req"

    goto :goto_0

    .line 306
    :cond_a
    const-string v0, ""

    goto :goto_0
.end method

.method private sInit(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 227
    new-instance v0, Lcom/zkunity/core/SDKOpt$11;

    invoke-direct {v0, p0}, Lcom/zkunity/core/SDKOpt$11;-><init>(Lcom/zkunity/core/SDKOpt;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method private sLogout(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 256
    new-instance v0, Lcom/zkunity/core/SDKOpt$12;

    invoke-direct {v0, p0}, Lcom/zkunity/core/SDKOpt$12;-><init>(Lcom/zkunity/core/SDKOpt;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method private safeDonotOpt(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/zkunity/core/SDKOpt;->ensureDonotOptInfos(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V

    .line 273
    new-instance v0, Lcom/zkunity/core/SDKOpt$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/zkunity/core/SDKOpt$13;-><init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method private sendBitmapAndWordsToFriends(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 127
    new-instance v0, Lcom/zkunity/core/SDKOpt$5;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$5;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method private sendBitmapAndWordsToQzone(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 152
    new-instance v0, Lcom/zkunity/core/SDKOpt$7;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$7;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method private sendPictureAndWordsToFriends(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 117
    new-instance v0, Lcom/zkunity/core/SDKOpt$4;

    invoke-direct {v0, p0}, Lcom/zkunity/core/SDKOpt$4;-><init>(Lcom/zkunity/core/SDKOpt;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method private sendPictureAndWordsToQzone(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 142
    new-instance v0, Lcom/zkunity/core/SDKOpt$6;

    invoke-direct {v0, p0}, Lcom/zkunity/core/SDKOpt$6;-><init>(Lcom/zkunity/core/SDKOpt;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method private sendPictureToFriends(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 106
    new-instance v0, Lcom/zkunity/core/SDKOpt$3;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$3;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method private sendWXImage(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 189
    new-instance v0, Lcom/zkunity/core/SDKOpt$9;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$9;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method private sendWXText(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 179
    new-instance v0, Lcom/zkunity/core/SDKOpt$8;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$8;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private sendWXWebpage(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 201
    new-instance v0, Lcom/zkunity/core/SDKOpt$10;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$10;-><init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method


# virtual methods
.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/zkunity/core/SDKOpt;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/facebook/FacebookUtils;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/zkunity/google/GooglePlayUtils;->getObj()Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/google/GooglePlayUtils;->onActivityResult(IILandroid/content/Intent;)Z

    .line 219
    invoke-static {}, Lcom/zkunity/paypal/PaypalUtils;->getObj()Lcom/zkunity/paypal/PaypalUtils;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/paypal/PaypalUtils;->onActivityResult(IILandroid/content/Intent;)Z

    .line 222
    :cond_0
    invoke-static {}, Lcom/zkunity/qq/QQUtils;->getObj()Lcom/zkunity/qq/QQUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/qq/QQUtils;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public onClinetEvent(Lcom/zkunity/json/MJsonObject;)Ljava/lang/String;
    .locals 12
    .param p1, "data"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/zkunity/json/MJsonObject;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v0, "11111111111111111"

    invoke-virtual {p1}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, "uri":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/zkunity/core/SDKOpt;->donotOpt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-direct {p0, v11, p1}, Lcom/zkunity/core/SDKOpt;->safeDonotOpt(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V

    .line 80
    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "sInit"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-direct {p0, v11, p1}, Lcom/zkunity/core/SDKOpt;->sInit(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V

    goto :goto_1

    .line 42
    :cond_3
    const-string v0, "sPay"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    const-string v0, "platformName"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "platformName":Ljava/lang/String;
    const-string v0, "google_pokerfishs"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isLimit"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-static {}, Lcom/zkunity/google/GooglePlayUtils;->getObj()Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt;->sid:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "roleid"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->startPayWithRemoteGoogle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_4
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "langType"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "code"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "price"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKOpt;->sid:Ljava/lang/String;

    const-string v6, "id"

    invoke-virtual {p1, v6}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    const-string v7, "roleid"

    invoke-virtual {p1, v7}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    const-string v9, "isLimit"

    invoke-virtual {p1, v9}, Lcom/zkunity/json/MJsonObject;->getBool(Ljava/lang/String;)Z

    move-result v9

    .line 48
    invoke-static/range {v0 .. v9}, Lcom/pay/PayUtils;->openPaySelects(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 53
    .end local v10    # "platformName":Ljava/lang/String;
    :cond_5
    const-string v0, "sLogout"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-direct {p0, v11, p1}, Lcom/zkunity/core/SDKOpt;->sLogout(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 55
    :cond_6
    const-string v0, "sendWXText"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendWXText(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 57
    :cond_7
    const-string v0, "sendWXImage"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendWXImage(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 59
    :cond_8
    const-string v0, "sendWXWebpage"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendWXWebpage(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 61
    :cond_9
    const-string v0, "sendPictureAndWordsToFriends"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendPictureAndWordsToFriends(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 63
    :cond_a
    const-string v0, "sendPictureToFriends"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendPictureToFriends(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 65
    :cond_b
    const-string v0, "sendPictureAndWordsToQzone"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendPictureAndWordsToQzone(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 67
    :cond_c
    const-string v0, "sendBitmapAndWordsToFriends"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendBitmapAndWordsToFriends(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 69
    :cond_d
    const-string v0, "sendBitmapAndWordsToQzone"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKOpt;->sendBitmapAndWordsToQzone(Lcom/zkunity/json/MJsonObject;)V

    goto/16 :goto_1

    .line 71
    :cond_e
    const-string v0, "sFacebookLogin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zkunity/facebook/FacebookUtils;->loginFacebook()V

    goto/16 :goto_1

    .line 73
    :cond_f
    const-string v0, "sendFBText"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    const-string v0, "contentURL"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "contentTitle"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "contentDescription"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p0, v0, v1, v2}, Lcom/zkunity/core/SDKOpt;->shareContentToSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :cond_10
    const-string v0, "sendFBPhoto"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "bmp"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->sharePictureToSpace(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onOrientation()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zkunity/core/PaySelectUtils;->onOrientation(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method protected runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 333
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginType"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt;->loginType:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public shareContentToSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentURL"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/zkunity/core/SDKOpt$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zkunity/core/SDKOpt$2;-><init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public sharePictureToSpace(Ljava/lang/String;)V
    .locals 1
    .param p1, "tmp"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/zkunity/core/SDKOpt$1;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/SDKOpt$1;-><init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKOpt;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
