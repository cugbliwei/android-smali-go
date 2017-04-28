.class Lcom/zkunity/toast/ToastDialogA$1;
.super Ljava/lang/Object;
.source "ToastDialogA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/toast/ToastDialogA;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/toast/ToastDialogA;


# direct methods
.method constructor <init>(Lcom/zkunity/toast/ToastDialogA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialogA$1;->this$0:Lcom/zkunity/toast/ToastDialogA;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialogA$1;->this$0:Lcom/zkunity/toast/ToastDialogA;

    # getter for: Lcom/zkunity/toast/ToastDialogA;->onOK:Lcom/zkunity/toast/ToastCallback;
    invoke-static {v0}, Lcom/zkunity/toast/ToastDialogA;->access$0(Lcom/zkunity/toast/ToastDialogA;)Lcom/zkunity/toast/ToastCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialogA$1;->this$0:Lcom/zkunity/toast/ToastDialogA;

    # getter for: Lcom/zkunity/toast/ToastDialogA;->onOK:Lcom/zkunity/toast/ToastCallback;
    invoke-static {v0}, Lcom/zkunity/toast/ToastDialogA;->access$0(Lcom/zkunity/toast/ToastDialogA;)Lcom/zkunity/toast/ToastCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zkunity/toast/ToastCallback;->onClick()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialogA$1;->this$0:Lcom/zkunity/toast/ToastDialogA;

    invoke-virtual {v0}, Lcom/zkunity/toast/ToastDialogA;->dismiss()V

    .line 59
    return-void
.end method
