.class public Lcom/p/CameraActivity;
.super Lcom/p/BaseActivity;
.source "CameraActivity.java"


# static fields
.field private static final CAMERA_TYPE:Ljava/lang/String; = "camera_type"

.field private static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64


# instance fields
.field private fileUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/p/BaseActivity;-><init>()V

    return-void
.end method

.method private openSystemCamera()V
    .locals 4

    .prologue
    .line 52
    const-string v2, "imgs"

    invoke-static {p0, v2}, Lcom/p/AlbumUtil;->getCameraFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-static {p0, v0}, Lcom/p/AlbumUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/p/CameraActivity;->fileUri:Landroid/net/Uri;

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/p/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/p/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 42
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/p/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/p/AlbumUtil;->CropImage(Landroid/net/Uri;)V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/p/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/p/CameraActivity;->finish()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/p/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v1, "img_camera"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/p/ResTools;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/p/CameraActivity;->setContentView(I)V

    .line 27
    const-string v1, "camera_type"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/p/CameraActivity;->checkSelfPermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onRequestPermissions(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isFlag"    # Z

    .prologue
    .line 31
    const-string v0, "camera_type"

    if-ne v0, p1, :cond_0

    .line 32
    if-eqz p2, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/p/CameraActivity;->openSystemCamera()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/p/CameraActivity;->finish()V

    goto :goto_0
.end method
