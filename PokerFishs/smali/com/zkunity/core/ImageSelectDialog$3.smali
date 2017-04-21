.class Lcom/zkunity/core/ImageSelectDialog$3;
.super Ljava/lang/Object;
.source "ImageSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ImageSelectDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/ImageSelectDialog;


# direct methods
.method constructor <init>(Lcom/zkunity/core/ImageSelectDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/ImageSelectDialog$3;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zkunity/core/ImageSelectDialog$3;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    invoke-virtual {v0}, Lcom/zkunity/core/ImageSelectDialog;->cancel()V

    .line 59
    return-void
.end method
