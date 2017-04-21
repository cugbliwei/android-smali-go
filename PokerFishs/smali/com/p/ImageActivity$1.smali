.class Lcom/p/ImageActivity$1;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/p/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/p/ImageActivity;


# direct methods
.method constructor <init>(Lcom/p/ImageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/p/ImageActivity$1;->this$0:Lcom/p/ImageActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    if-nez p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/p/ImageActivity$1;->this$0:Lcom/p/ImageActivity;

    # invokes: Lcom/p/ImageActivity;->takePicture()V
    invoke-static {v0}, Lcom/p/ImageActivity;->access$0(Lcom/p/ImageActivity;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/p/ImageActivity$1;->this$0:Lcom/p/ImageActivity;

    iget-boolean v0, v0, Lcom/p/ImageActivity;->mIsKitKat:Z

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/p/ImageActivity$1;->this$0:Lcom/p/ImageActivity;

    .line 66
    # invokes: Lcom/p/ImageActivity;->selectImageUriAfterKikat()V
    invoke-static {v0}, Lcom/p/ImageActivity;->access$1(Lcom/p/ImageActivity;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/p/ImageActivity$1;->this$0:Lcom/p/ImageActivity;

    # invokes: Lcom/p/ImageActivity;->cropImageUri()V
    invoke-static {v0}, Lcom/p/ImageActivity;->access$2(Lcom/p/ImageActivity;)V

    goto :goto_0
.end method
