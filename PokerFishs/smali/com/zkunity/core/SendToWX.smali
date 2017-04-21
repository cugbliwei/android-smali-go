.class public Lcom/zkunity/core/SendToWX;
.super Ljava/lang/Object;
.source "SendToWX.java"


# static fields
.field private static api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "needRecycle"    # Z

    .prologue
    .line 90
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 98
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkWX()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 24
    sget-object v1, Lcom/zkunity/core/SendToWX;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v1, :cond_0

    .line 25
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wxbffae0764e6dbd19"

    .line 25
    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    sput-object v1, Lcom/zkunity/core/SendToWX;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 27
    :cond_0
    sget-object v1, Lcom/zkunity/core/SendToWX;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/zkunity/core/SendToWX;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v1

    .line 31
    const-string v2, "\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\u6216\u8005\u5fae\u4fe1\u5ba2\u6237\u7aef\u7248\u672c\u4e0d\u652f\u6301."

    .line 30
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static sendImage(Landroid/graphics/Bitmap;Z)Z
    .locals 10
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "isTimelineCb"    # Z

    .prologue
    const/16 v9, 0x96

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 62
    :goto_0
    return v5

    .line 51
    :cond_1
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v0, p0}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v0, "imgObj":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 53
    .local v2, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v0, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 56
    .local v1, "len":I
    :goto_1
    invoke-static {p0, v6, v6, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 57
    .local v4, "thumbBmp_old":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    invoke-static {v4, v9, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 59
    .local v3, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    invoke-static {v3, v5}, Lcom/zkunity/core/SendToWX;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 61
    invoke-static {v2, p1}, Lcom/zkunity/core/SendToWX;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    goto :goto_0

    .line 55
    .end local v1    # "len":I
    .end local v3    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v4    # "thumbBmp_old":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public static sendText(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "txt"    # Ljava/lang/String;
    .param p1, "isTimelineCb"    # Z

    .prologue
    .line 37
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    return v2

    .line 39
    :cond_1
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    .line 40
    .local v1, "textObj":Lcom/tencent/mm/sdk/modelmsg/WXTextObject;
    iput-object p0, v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 42
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 43
    iput-object p0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 44
    invoke-static {v0, p1}, Lcom/zkunity/core/SendToWX;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    .line 45
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V
    .locals 2
    .param p0, "msg"    # Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .param p1, "isTimelineCb"    # Z

    .prologue
    .line 80
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 81
    .local v0, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    const-string v1, "appdata"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 82
    iput-object p0, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 83
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 85
    sget-object v1, Lcom/zkunity/core/SendToWX;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 86
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendWebpage(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "isTimelineCb"    # Z
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x96

    const/4 v4, 0x1

    .line 66
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 67
    .local v2, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iput-object p4, v2, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, v2}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 69
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object p0, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 70
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 71
    invoke-static {p3, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    invoke-static {v1, v4}, Lcom/zkunity/core/SendToWX;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 74
    invoke-static {v0, p2}, Lcom/zkunity/core/SendToWX;->sendTransaction(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Z)V

    .line 76
    return v4
.end method
