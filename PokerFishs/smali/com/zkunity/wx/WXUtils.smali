.class public Lcom/zkunity/wx/WXUtils;
.super Ljava/lang/Object;
.source "WXUtils.java"


# static fields
.field private static obj:Lcom/zkunity/wx/WXUtils;


# instance fields
.field private wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/wx/WXUtils;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method private bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "needRecycle"    # Z

    .prologue
    .line 172
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 180
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getObj()Lcom/zkunity/wx/WXUtils;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zkunity/wx/WXUtils;->obj:Lcom/zkunity/wx/WXUtils;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/zkunity/wx/WXUtils;

    invoke-direct {v0}, Lcom/zkunity/wx/WXUtils;-><init>()V

    sput-object v0, Lcom/zkunity/wx/WXUtils;->obj:Lcom/zkunity/wx/WXUtils;

    .line 37
    :cond_0
    sget-object v0, Lcom/zkunity/wx/WXUtils;->obj:Lcom/zkunity/wx/WXUtils;

    return-object v0
.end method

.method private sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V
    .locals 2
    .param p1, "msg"    # Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .param p2, "isTimelineCb"    # Z

    .prologue
    .line 161
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 162
    .local v0, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    const-string v1, "appdata"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 163
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 164
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 166
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initWX(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 43
    iget-object v0, p0, Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public sendImage(Landroid/graphics/Bitmap;Z)Z
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "isTimelineCb"    # Z

    .prologue
    const/16 v9, 0x96

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 135
    :goto_0
    return v5

    .line 124
    :cond_1
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v0, p1}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v0, "imgObj":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 126
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 129
    .local v1, "len":I
    :goto_1
    invoke-static {p1, v6, v6, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 130
    .local v4, "thumbBmp_old":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    invoke-static {v4, v9, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 132
    .local v3, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    invoke-direct {p0, v3, v5}, Lcom/zkunity/wx/WXUtils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 134
    invoke-direct {p0, v2, p2}, Lcom/zkunity/wx/WXUtils;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    goto :goto_0

    .line 128
    .end local v1    # "len":I
    .end local v3    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v4    # "thumbBmp_old":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public sendText(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "isTimelineCb"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    const/4 v2, 0x0

    .line 117
    :goto_0
    return v2

    .line 111
    :cond_1
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    .line 112
    .local v1, "textObj":Lcom/tencent/mm/sdk/modelmsg/WXTextObject;
    iput-object p1, v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 114
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 115
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 116
    invoke-direct {p0, v0, p2}, Lcom/zkunity/wx/WXUtils;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    .line 117
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendWebpage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "extInfo"    # Ljava/lang/String;
    .param p4, "isTimelineCb"    # Z
    .param p5, "bm"    # Landroid/graphics/Bitmap;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x96

    const/4 v4, 0x1

    .line 141
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 142
    .local v2, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iput-object p6, v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 144
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 145
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 146
    invoke-static {p5, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    invoke-direct {p0, v1, v4}, Lcom/zkunity/wx/WXUtils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 149
    invoke-direct {p0, v0, p4}, Lcom/zkunity/wx/WXUtils;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    .line 150
    return v4
.end method

.method public startNativeWX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "prepayid"    # Ljava/lang/String;
    .param p2, "packageValue"    # Ljava/lang/String;
    .param p3, "noncestr"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "sign"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/zkunity/wx/WXUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zkunity/wx/WXUtils$2;-><init>(Lcom/zkunity/wx/WXUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public startPayWithRemoteWX(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "g_role_id"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 51
    const-string v1, "zk_string_wechat_pay"

    const/16 v2, 0xcc

    .line 52
    const-string v3, "zk_not_install_wx"

    .line 51
    invoke-static {v1, v2, v3}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 56
    .local v0, "event":Lcom/zkunity/json/MJsonObject;
    const-string v1, "type"

    const-string v2, "iw"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "sid"

    invoke-virtual {v0, v1, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "gid"

    invoke-virtual {v0, v1, p3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "g_role_id"

    invoke-virtual {v0, v1, p4}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "plat_url"

    const-string v2, "create_order_req"

    .line 62
    new-instance v3, Lcom/zkunity/wx/WXUtils$1;

    invoke-direct {v3, p0}, Lcom/zkunity/wx/WXUtils$1;-><init>(Lcom/zkunity/wx/WXUtils;)V

    .line 61
    invoke-static {v1, v2, v0, v3}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    goto :goto_0
.end method
