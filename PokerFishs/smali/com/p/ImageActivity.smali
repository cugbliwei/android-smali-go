.class public Lcom/p/ImageActivity;
.super Landroid/app/Activity;
.source "ImageActivity.java"


# static fields
.field public static final ACCOUNT_DIR:Ljava/lang/String;

.field public static final ACCOUNT_MAINTRANCE_ICON_CACHE:Ljava/lang/String; = "icon_cache/"

.field private static final IMGPATH:Ljava/lang/String;

.field public static final SELECET_A_PICTURE_AFTER_KIKAT:I = 0x32

.field public static final SELECT_A_PICTURE:I = 0x14

.field public static final SET_ALBUM_PICTURE_KITKAT:I = 0x28

.field public static final SET_PICTURE:I = 0x1e

.field public static final TAKE_A_PICTURE:I = 0xa


# instance fields
.field private h:I

.field private mAlbumPicturePath:Ljava/lang/String;

.field final mIsKitKat:Z

.field private photoUri:Landroid/net/Uri;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/account/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/p/ImageActivity;->ACCOUNT_DIR:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/p/ImageActivity;->ACCOUNT_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "icon_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/p/ImageActivity;->mIsKitKat:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/p/ImageActivity;->mAlbumPicturePath:Ljava/lang/String;

    .line 25
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/p/ImageActivity;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/p/ImageActivity;->takePicture()V

    return-void
.end method

.method static synthetic access$1(Lcom/p/ImageActivity;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/p/ImageActivity;->selectImageUriAfterKikat()V

    return-void
.end method

.method static synthetic access$2(Lcom/p/ImageActivity;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/p/ImageActivity;->cropImageUri()V

    return-void
.end method

.method private cameraCropImageUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/png"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v1, "outputX"

    iget v2, p0, Lcom/p/ImageActivity;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "outputY"

    iget v2, p0, Lcom/p/ImageActivity;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/p/ImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "destFileName"    # Ljava/lang/String;
    .param p2, "reWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 226
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v6, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 253
    :goto_0
    return v7

    .line 231
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_1

    .line 232
    const-string v7, "copyFile"

    const-string v8, "copyFile, before copy File, delete first."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 236
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v4, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v5, "outStream":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 239
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 240
    .local v1, "byteRead":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 243
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 244
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 245
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .end local v0    # "buf":[B
    .end local v1    # "byteRead":I
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    const-string v7, "copyFile"

    const-string v8, "copyFile, success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v7, 0x1

    goto :goto_0

    .line 241
    .restart local v0    # "buf":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 246
    .end local v0    # "buf":[B
    .end local v1    # "byteRead":I
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private cropImageUri()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "outputX"

    iget v2, p0, Lcom/p/ImageActivity;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "outputY"

    iget v2, p0, Lcom/p/ImageActivity;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "scale"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    const-string v4, "tmp_r.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/p/ImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method

.method private cropImageUriAfterKikat(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/png"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "outputX"

    iget v2, p0, Lcom/p/ImageActivity;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v1, "outputY"

    iget v2, p0, Lcom/p/ImageActivity;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v1, "scale"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    const-string v4, "tmp_r.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/p/ImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method private finishBitmap(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    .line 221
    invoke-static {p1}, Lcom/p/NativeTools;->getPictureCallBack(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private selectImageUriAfterKikat()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/p/ImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    return-void
.end method

.method private takePicture()V
    .locals 8

    .prologue
    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 104
    const-string v4, "yyyy_MM_dd_HH_mm_ss"

    .line 103
    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "timeStampFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/sql/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "filename":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 110
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/p/ImageActivity;->photoUri:Landroid/net/Uri;

    .line 112
    const-string v4, "output"

    iget-object v5, p0, Lcom/p/ImageActivity;->photoUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const/16 v4, 0xa

    invoke-virtual {p0, v1, v4}, Lcom/p/ImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pVariableName"    # Ljava/lang/String;
    .param p3, "pResourcename"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v2, "string"

    invoke-virtual {p0, p0, p1, v2}, Lcom/p/ImageActivity;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 84
    .end local v1    # "p":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    .restart local v1    # "p":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 84
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    const/16 v3, 0x14

    if-ne p1, v3, :cond_2

    .line 175
    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    .line 176
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    const-string v5, "tmp_r.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->finishBitmap(Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    goto :goto_0

    .line 179
    :cond_2
    const/16 v3, 0x32

    if-ne p1, v3, :cond_4

    .line 180
    if-ne p2, v4, :cond_3

    if-eqz p3, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 181
    invoke-static {v3, v4}, Lcom/p/AlbumUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/p/ImageActivity;->mAlbumPicturePath:Ljava/lang/String;

    .line 183
    new-instance v3, Ljava/io/File;

    .line 184
    iget-object v4, p0, Lcom/p/ImageActivity;->mAlbumPicturePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->cropImageUriAfterKikat(Landroid/net/Uri;)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    goto :goto_0

    .line 188
    :cond_4
    const/16 v3, 0x28

    if-ne p1, v3, :cond_6

    .line 189
    if-ne p2, v4, :cond_5

    if-eqz p3, :cond_5

    .line 190
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    const-string v5, "tmp_r.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->finishBitmap(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    goto :goto_0

    .line 193
    :cond_6
    const/16 v3, 0xa

    if-ne p1, v3, :cond_9

    .line 194
    if-ne p2, v4, :cond_8

    .line 195
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 196
    iget-object v4, p0, Lcom/p/ImageActivity;->photoUri:Landroid/net/Uri;

    .line 195
    invoke-static {v3, v4}, Lcom/p/AlbumUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "oldPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    const-string v5, "r.jpg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "newPath":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v1, v3}, Lcom/p/ImageActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    iget-boolean v3, p0, Lcom/p/ImageActivity;->mIsKitKat:Z

    if-eqz v3, :cond_7

    .line 204
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->cropImageUriAfterKikat(Landroid/net/Uri;)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->cameraCropImageUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 208
    .end local v1    # "newPath":Ljava/lang/String;
    .end local v2    # "oldPath":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    goto/16 :goto_0

    .line 210
    :cond_9
    const/16 v3, 0x1e

    if-ne p1, v3, :cond_0

    .line 211
    if-ne p2, v4, :cond_a

    if-eqz p3, :cond_a

    .line 212
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 212
    invoke-static {v3, v4}, Lcom/p/AlbumUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/p/ImageActivity;->finishBitmap(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_a
    invoke-virtual {p0}, Lcom/p/ImageActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/16 v3, 0x80

    const/4 v5, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/p/ImageActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 45
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/p/ImageActivity;->w:I

    .line 46
    invoke-virtual {p0}, Lcom/p/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/p/ImageActivity;->h:I

    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/p/ImageActivity;->IMGPATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 54
    const v2, 0x1080028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 55
    const-string v2, "select"

    invoke-virtual {p0, v2}, Lcom/p/ImageActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "camera"

    invoke-virtual {p0, v4}, Lcom/p/ImageActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "album"

    invoke-virtual {p0, v3}, Lcom/p/ImageActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 58
    new-instance v3, Lcom/p/ImageActivity$1;

    invoke-direct {v3, p0}, Lcom/p/ImageActivity$1;-><init>(Lcom/p/ImageActivity;)V

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/p/ImageActivity$2;

    invoke-direct {v2, p0}, Lcom/p/ImageActivity$2;-><init>(Lcom/p/ImageActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    return-void
.end method
