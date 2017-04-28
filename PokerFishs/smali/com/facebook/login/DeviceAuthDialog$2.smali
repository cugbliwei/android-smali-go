.class Lcom/facebook/login/DeviceAuthDialog$2;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->appendIconToTextView(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$2;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/internal/ImageResponse;

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 247
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method
