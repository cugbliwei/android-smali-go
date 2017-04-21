.class public Lcom/zkunity/core/SendToQQ;
.super Ljava/lang/Object;
.source "SendToQQ.java"


# static fields
.field private static mMainHandlerLock:Ljava/lang/Object;

.field private static mManinHandler:Landroid/os/Handler;

.field private static mTen:Lcom/tencent/tauth/Tencent;

.field private static qqShareListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zkunity/core/SendToQQ;->mMainHandlerLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/zkunity/core/SendToQQ$1;

    invoke-direct {v0}, Lcom/zkunity/core/SendToQQ$1;-><init>()V

    sput-object v0, Lcom/zkunity/core/SendToQQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/zkunity/core/SendToQQ;->mTen:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$1()Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/zkunity/core/SendToQQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method public static checkQQ()Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/zkunity/core/SendToQQ;->mTen:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "1105308232"

    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/zkunity/core/SendToQQ;->mTen:Lcom/tencent/tauth/Tencent;

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 185
    sget-object v0, Lcom/zkunity/core/SendToQQ;->mManinHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 186
    sget-object v1, Lcom/zkunity/core/SendToQQ;->mMainHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v0, Lcom/zkunity/core/SendToQQ;->mManinHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zkunity/core/SendToQQ;->mManinHandler:Landroid/os/Handler;

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    sget-object v0, Lcom/zkunity/core/SendToQQ;->mManinHandler:Landroid/os/Handler;

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->checkQQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2777

    if-eq p0, v0, :cond_1

    .line 198
    :cond_0
    const/16 v0, 0x2778

    if-ne p0, v0, :cond_2

    .line 200
    :cond_1
    sget-object v0, Lcom/zkunity/core/SendToQQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 199
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 202
    :cond_2
    return-void
.end method

.method public static sendBitmapAndWordsToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->checkQQ()Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v7, "/account/pic.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 53
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 54
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 56
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v5, "stream":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 61
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v4, "params":Landroid/os/Bundle;
    const-string v6, "req_type"

    .line 63
    const/4 v7, 0x1

    .line 62
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v6, "title"

    invoke-virtual {v4, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v6, "summary"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v6, "targetUrl"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v6, "imageUrl"

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/zkunity/core/SendToQQ$2;

    invoke-direct {v7, v4}, Lcom/zkunity/core/SendToQQ$2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static sendBitmapAndWordsToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->checkQQ()Z

    move-result v7

    if-nez v7, :cond_0

    .line 164
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v5, "params":Landroid/os/Bundle;
    const-string v7, "req_type"

    .line 129
    const/4 v8, 0x1

    .line 128
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v7, "title"

    invoke-virtual {v5, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "summary"

    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v7, "targetUrl"

    invoke-virtual {v5, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p3, :cond_1

    .line 136
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v3, "is":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v8, "/account/pic.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 141
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 142
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v6, "stream":Ljava/io/OutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 147
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v7, "imageUrl"

    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "is":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "stream":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/zkunity/core/SendToQQ$4;

    invoke-direct {v8, v5}, Lcom/zkunity/core/SendToQQ$4;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static sendPictureToFriends(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->checkQQ()Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v7, "/account/pic.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 96
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, p0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v5, "stream":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 99
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 101
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v4, "params":Landroid/os/Bundle;
    const-string v6, "imageLocalUrl"

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "req_type"

    .line 105
    const/4 v7, 0x5

    .line 104
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/zkunity/core/SendToQQ$3;

    invoke-direct {v7, v4}, Lcom/zkunity/core/SendToQQ$3;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
