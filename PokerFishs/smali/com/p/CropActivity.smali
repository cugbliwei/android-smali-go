.class public Lcom/p/CropActivity;
.super Lcom/p/BaseActivity;
.source "CropActivity.java"


# static fields
.field private static final CROP_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/p/BaseActivity;-><init>()V

    return-void
.end method

.method private startPhotoZoom(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x1

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/p/CropActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 29
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 30
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, v0}, Lcom/p/AlbumUtil;->saveBitmapToContext(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/p/AlbumUtil;->actionPath(Ljava/lang/String;)V

    .line 35
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/p/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/p/CropActivity;->finish()V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/p/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v1, "img_camera"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/p/ResTools;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 20
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/p/CropActivity;->setContentView(I)V

    .line 22
    sget-object v1, Lcom/p/AlbumUtil;->fileUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/p/CropActivity;->startPhotoZoom(Landroid/net/Uri;)V

    .line 23
    return-void
.end method

.method public onRequestPermissions(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isFlag"    # Z

    .prologue
    .line 55
    return-void
.end method
