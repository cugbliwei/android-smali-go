.class public Lcom/zkunity/qq/QQUtils;
.super Ljava/lang/Object;
.source "QQUtils.java"


# static fields
.field private static obj:Lcom/zkunity/qq/QQUtils;


# instance fields
.field private mTen:Lcom/tencent/tauth/Tencent;

.field private qqShareListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/zkunity/qq/QQUtils$1;

    invoke-direct {v0, p0}, Lcom/zkunity/qq/QQUtils$1;-><init>(Lcom/zkunity/qq/QQUtils;)V

    iput-object v0, p0, Lcom/zkunity/qq/QQUtils;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 32
    iget-object v0, p0, Lcom/zkunity/qq/QQUtils;->mTen:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "1105308232"

    .line 34
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/zkunity/qq/QQUtils;->mTen:Lcom/tencent/tauth/Tencent;

    .line 35
    :cond_0
    return-void
.end method

.method public static getObj()Lcom/zkunity/qq/QQUtils;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zkunity/qq/QQUtils;->obj:Lcom/zkunity/qq/QQUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zkunity/qq/QQUtils;

    invoke-direct {v0}, Lcom/zkunity/qq/QQUtils;-><init>()V

    sput-object v0, Lcom/zkunity/qq/QQUtils;->obj:Lcom/zkunity/qq/QQUtils;

    .line 40
    :cond_0
    sget-object v0, Lcom/zkunity/qq/QQUtils;->obj:Lcom/zkunity/qq/QQUtils;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/16 v0, 0x2777

    if-eq p1, v0, :cond_0

    .line 190
    const/16 v0, 0x2778

    if-ne p1, v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/zkunity/qq/QQUtils;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 191
    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 194
    :cond_1
    return-void
.end method

.method public sendBitmapAndWordsToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "targetUrl"    # Ljava/lang/String;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v7, "/account/pic.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 51
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 52
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, p4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v5, "stream":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 59
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v4, "params":Landroid/os/Bundle;
    const-string v6, "req_type"

    .line 61
    const/4 v7, 0x1

    .line 60
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v6, "title"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v6, "summary"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v6, "targetUrl"

    invoke-virtual {v4, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v6, "imageUrl"

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v6, p0, Lcom/zkunity/qq/QQUtils;->mTen:Lcom/tencent/tauth/Tencent;

    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 72
    iget-object v8, p0, Lcom/zkunity/qq/QQUtils;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 71
    invoke-virtual {v6, v7, v4, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "stream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendBitmapAndWordsToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "targetUrl"    # Ljava/lang/String;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v5, "params":Landroid/os/Bundle;
    const-string v7, "req_type"

    .line 122
    const/4 v8, 0x1

    .line 121
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v7, "title"

    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v7, "summary"

    invoke-virtual {v5, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v7, "targetUrl"

    invoke-virtual {v5, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz p4, :cond_0

    .line 129
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "is":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v8, "/account/pic.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 134
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 137
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p4, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    .local v6, "stream":Ljava/io/OutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v7, "imageUrl"

    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "is":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "stream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/zkunity/qq/QQUtils;->mTen:Lcom/tencent/tauth/Tencent;

    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 154
    iget-object v9, p0, Lcom/zkunity/qq/QQUtils;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 153
    invoke-virtual {v7, v8, v5, v9}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 157
    return-void

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPictureToFriends(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v7, "/account/pic.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "bitmapFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 90
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 92
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v5, "stream":Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 97
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v4, "params":Landroid/os/Bundle;
    const-string v6, "imageLocalUrl"

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v6, "req_type"

    .line 101
    const/4 v7, 0x5

    .line 100
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    iget-object v6, p0, Lcom/zkunity/qq/QQUtils;->mTen:Lcom/tencent/tauth/Tencent;

    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 107
    iget-object v8, p0, Lcom/zkunity/qq/QQUtils;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 106
    invoke-virtual {v6, v7, v4, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "stream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
