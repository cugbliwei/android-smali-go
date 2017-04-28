.class public Lcom/zkunity/facebook/FacebookUtils;
.super Ljava/lang/Object;
.source "FacebookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;
    }
.end annotation


# static fields
.field private static obj:Lcom/zkunity/facebook/FacebookUtils;


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/facebook/FacebookUtils;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/zkunity/facebook/FacebookUtils;->loginFacebookSucc(Ljava/lang/String;)V

    return-void
.end method

.method private getBitmapFromByte([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "temp"    # [B

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 158
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getObj()Lcom/zkunity/facebook/FacebookUtils;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/zkunity/facebook/FacebookUtils;->obj:Lcom/zkunity/facebook/FacebookUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/zkunity/facebook/FacebookUtils;

    invoke-direct {v0}, Lcom/zkunity/facebook/FacebookUtils;-><init>()V

    sput-object v0, Lcom/zkunity/facebook/FacebookUtils;->obj:Lcom/zkunity/facebook/FacebookUtils;

    .line 41
    :cond_0
    sget-object v0, Lcom/zkunity/facebook/FacebookUtils;->obj:Lcom/zkunity/facebook/FacebookUtils;

    return-object v0
.end method

.method private loginFacebookSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 126
    .local v0, "event":Lcom/zkunity/json/MJsonObject;
    const-string v1, "fb_token"

    invoke-virtual {v0, v1, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "plat_url"

    const-string v2, "facebook_login_req"

    .line 128
    new-instance v3, Lcom/zkunity/facebook/FacebookUtils$1;

    invoke-direct {v3, p0}, Lcom/zkunity/facebook/FacebookUtils$1;-><init>(Lcom/zkunity/facebook/FacebookUtils;)V

    .line 127
    invoke-static {v1, v2, v0, v3}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 152
    return-void
.end method


# virtual methods
.method public initFacebook()V
    .locals 4

    .prologue
    .line 68
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zkunity/facebook/FacebookUtils;->callbackManager:Lcom/facebook/CallbackManager;

    .line 71
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/facebook/FacebookUtils;->callbackManager:Lcom/facebook/CallbackManager;

    .line 72
    new-instance v2, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;-><init>(Lcom/zkunity/facebook/FacebookUtils;Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 73
    return-void
.end method

.method public loginFacebook()V
    .locals 5

    .prologue
    .line 82
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 86
    const-string v4, "public_profile"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zkunity/facebook/FacebookUtils;->loginFacebookSucc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zkunity/facebook/FacebookUtils;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public shareContentToSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contentURL"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 48
    invoke-virtual {v2, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 50
    .local v0, "shareContent":Lcom/facebook/share/model/ShareLinkContent;
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 51
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 52
    return-void
.end method

.method public sharePictureToSpace(Ljava/lang/String;)V
    .locals 7
    .param p1, "tmp"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 57
    const/4 v6, 0x0

    .line 56
    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 58
    .local v1, "bs":[B
    invoke-direct {p0, v1}, Lcom/zkunity/facebook/FacebookUtils;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v2

    .line 60
    .local v2, "photo":Lcom/facebook/share/model/SharePhoto;
    new-instance v5, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 61
    invoke-virtual {v5, v2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v3

    .line 62
    .local v3, "shareContent":Lcom/facebook/share/model/SharePhotoContent;
    new-instance v4, Lcom/facebook/share/widget/ShareDialog;

    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 63
    .local v4, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    sget-object v5, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v4, v3, v5}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 64
    return-void
.end method
