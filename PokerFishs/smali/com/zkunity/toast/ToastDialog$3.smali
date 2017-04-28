.class Lcom/zkunity/toast/ToastDialog$3;
.super Ljava/lang/Object;
.source "ToastDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/toast/ToastDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/toast/ToastDialog;


# direct methods
.method constructor <init>(Lcom/zkunity/toast/ToastDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialog$3;->this$0:Lcom/zkunity/toast/ToastDialog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialog$3;->this$0:Lcom/zkunity/toast/ToastDialog;

    # getter for: Lcom/zkunity/toast/ToastDialog;->onCancel:Lcom/zkunity/toast/ToastCallback;
    invoke-static {v0}, Lcom/zkunity/toast/ToastDialog;->access$0(Lcom/zkunity/toast/ToastDialog;)Lcom/zkunity/toast/ToastCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialog$3;->this$0:Lcom/zkunity/toast/ToastDialog;

    # getter for: Lcom/zkunity/toast/ToastDialog;->onCancel:Lcom/zkunity/toast/ToastCallback;
    invoke-static {v0}, Lcom/zkunity/toast/ToastDialog;->access$0(Lcom/zkunity/toast/ToastDialog;)Lcom/zkunity/toast/ToastCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zkunity/toast/ToastCallback;->onClick()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialog$3;->this$0:Lcom/zkunity/toast/ToastDialog;

    invoke-virtual {v0}, Lcom/zkunity/toast/ToastDialog;->dismiss()V

    .line 83
    return-void
.end method
