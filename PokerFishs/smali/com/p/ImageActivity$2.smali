.class Lcom/p/ImageActivity$2;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/p/ImageActivity$2;->this$0:Lcom/p/ImageActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/p/ImageActivity$2;->this$0:Lcom/p/ImageActivity;

    invoke-virtual {v0}, Lcom/p/ImageActivity;->finish()V

    .line 74
    return-void
.end method
