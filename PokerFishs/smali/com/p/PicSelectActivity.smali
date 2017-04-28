.class public Lcom/p/PicSelectActivity;
.super Lcom/p/BaseActivity;
.source "PicSelectActivity.java"


# static fields
.field private static final SELECT_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/p/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 34
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, "fileUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/p/AlbumUtil;->CropImage(Landroid/net/Uri;)V

    .line 40
    .end local v0    # "fileUri":Landroid/net/Uri;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/p/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/p/PicSelectActivity;->finish()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/p/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v2, "img_camera"

    const-string v3, "layout"

    invoke-static {p0, v2, v3}, Lcom/p/ResTools;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/p/PicSelectActivity;->setContentView(I)V

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    .line 25
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 24
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/p/PicSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method

.method public onRequestPermissions(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isFlag"    # Z

    .prologue
    .line 47
    return-void
.end method
