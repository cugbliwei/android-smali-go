.class public Lcom/zkunity/core/SDKManager;
.super Ljava/lang/Object;
.source "SDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/SDKManager$BaseListener;
    }
.end annotation


# static fields
.field private static manager:Lcom/zkunity/core/SDKManager;


# instance fields
.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/zkunity/core/SDKManager;

    invoke-direct {v0}, Lcom/zkunity/core/SDKManager;-><init>()V

    sput-object v0, Lcom/zkunity/core/SDKManager;->manager:Lcom/zkunity/core/SDKManager;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zkunity/core/SDKManager;->sid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/core/SDKManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public static getManager()Lcom/zkunity/core/SDKManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/zkunity/core/SDKManager;->manager:Lcom/zkunity/core/SDKManager;

    return-object v0
.end method


# virtual methods
.method public getBitmapFromByte([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "temp"    # [B

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 98
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 185
    .local v3, "md5":Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 186
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 188
    .local v1, "encryption":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v4, "strBuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    .end local v1    # "encryption":[B
    .end local v2    # "i":I
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 190
    .restart local v1    # "encryption":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5":Ljava/security/MessageDigest;
    .restart local v4    # "strBuf":Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 191
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 192
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 199
    .end local v1    # "encryption":[B
    .end local v2    # "i":I
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, ""

    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, ""

    goto :goto_1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zkunity/core/SDKManager;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zkunity/core/SDKManager;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public sBindUserAttrs(Ljava/lang/String;)I
    .locals 6
    .param p1, "attrs"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "tags":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Lcom/igexin/sdk/Tag;

    .line 114
    .local v2, "tagParam":[Lcom/igexin/sdk/Tag;
    const/4 v1, 0x0

    .line 115
    .local v1, "t":Lcom/igexin/sdk/Tag;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 121
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v4

    .line 122
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 121
    invoke-virtual {v4, v5, v2}, Lcom/igexin/sdk/PushManager;->setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I

    move-result v4

    return v4

    .line 116
    :cond_0
    new-instance v1, Lcom/igexin/sdk/Tag;

    .end local v1    # "t":Lcom/igexin/sdk/Tag;
    invoke-direct {v1}, Lcom/igexin/sdk/Tag;-><init>()V

    .line 118
    .restart local v1    # "t":Lcom/igexin/sdk/Tag;
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/igexin/sdk/Tag;->setName(Ljava/lang/String;)V

    .line 119
    aput-object v1, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sLoginRelated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "baseUrl"

    invoke-static {v1}, Lcom/zkunity/config/MConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "plat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/zkunity/core/SDKManager$BaseListener;

    invoke-direct {v1, p0, p1}, Lcom/zkunity/core/SDKManager$BaseListener;-><init>(Lcom/zkunity/core/SDKManager;Ljava/lang/String;)V

    .line 107
    invoke-static {v0, p2, v1}, Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V

    .line 109
    return-void
.end method

.method public sendWXImage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "bmp"    # Ljava/lang/String;
    .param p2, "isTimelineCb"    # Z

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {}, Lcom/zkunity/core/SendToWX;->checkWX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    sput-boolean v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 67
    const-string v1, "sendWXImage"

    sput-object v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 70
    .local v0, "bs":[B
    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKManager;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/zkunity/core/SendToWX;->sendImage(Landroid/graphics/Bitmap;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    sput-boolean v2, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 72
    const/4 v1, 0x0

    sput-object v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 76
    .end local v0    # "bs":[B
    :cond_0
    return-void
.end method

.method public sendWXText(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "isTimelineCb"    # Z

    .prologue
    .line 53
    invoke-static {}, Lcom/zkunity/core/SendToWX;->checkWX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 55
    const-string v0, "sendWXText"

    sput-object v0, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 56
    invoke-static {p1, p2}, Lcom/zkunity/core/SendToWX;->sendText(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public sendWXWebpage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "isTimelineCb"    # Z
    .param p4, "bmp"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-static {}, Lcom/zkunity/core/SendToWX;->checkWX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    sput-boolean v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 82
    const-string v1, "sendWXWebpage"

    sput-object v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 83
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 86
    .local v0, "bs":[B
    invoke-virtual {p0, v0}, Lcom/zkunity/core/SDKManager;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    invoke-static {p1, p2, p3, v1, p5}, Lcom/zkunity/core/SendToWX;->sendWebpage(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    .line 86
    if-nez v1, :cond_0

    .line 87
    sput-boolean v2, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->isSendToWx:Z

    .line 88
    const/4 v1, 0x0

    sput-object v1, Lcom/speedfish/pokerfishs/wxapi/WXEntryActivity;->type:Ljava/lang/String;

    .line 92
    .end local v0    # "bs":[B
    :cond_0
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zkunity/core/SDKManager;->sid:Ljava/lang/String;

    .line 50
    return-void
.end method
