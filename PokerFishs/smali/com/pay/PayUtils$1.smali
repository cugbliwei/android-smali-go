.class Lcom/pay/PayUtils$1;
.super Ljava/lang/Object;
.source "PayUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/PayUtils;->payDialogShow(Landroid/app/Activity;Lcom/pay/PayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog_in"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 96
    # getter for: Lcom/pay/PayUtils;->dialog:Lcom/pay/PayDialog;
    invoke-static {}, Lcom/pay/PayUtils;->access$0()Lcom/pay/PayDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pay/PayDialog;->onCancelAction()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
