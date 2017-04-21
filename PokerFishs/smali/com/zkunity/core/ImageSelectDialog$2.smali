.class Lcom/zkunity/core/ImageSelectDialog$2;
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
    iput-object p1, p0, Lcom/zkunity/core/ImageSelectDialog$2;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zkunity/core/ImageSelectDialog$2;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    # getter for: Lcom/zkunity/core/ImageSelectDialog;->dataListener:Lcom/zkunity/core/ImageSelectDialog$OnDataListener;
    invoke-static {v0}, Lcom/zkunity/core/ImageSelectDialog;->access$0(Lcom/zkunity/core/ImageSelectDialog;)Lcom/zkunity/core/ImageSelectDialog$OnDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/zkunity/core/ImageSelectDialog$2;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    # getter for: Lcom/zkunity/core/ImageSelectDialog;->dataListener:Lcom/zkunity/core/ImageSelectDialog$OnDataListener;
    invoke-static {v0}, Lcom/zkunity/core/ImageSelectDialog;->access$0(Lcom/zkunity/core/ImageSelectDialog;)Lcom/zkunity/core/ImageSelectDialog$OnDataListener;

    move-result-object v0

    const-string v1, "Camera"

    invoke-interface {v0, v1}, Lcom/zkunity/core/ImageSelectDialog$OnDataListener;->onData(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/zkunity/core/ImageSelectDialog$2;->this$0:Lcom/zkunity/core/ImageSelectDialog;

    invoke-virtual {v0}, Lcom/zkunity/core/ImageSelectDialog;->dismiss()V

    .line 51
    return-void
.end method
