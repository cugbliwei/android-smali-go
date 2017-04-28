.class Lcom/pay/PayUtils$2;
.super Ljava/lang/Object;
.source "PayUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog1"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pay/PayUtils;->access$1(Lcom/pay/PayDialog;)V

    .line 106
    invoke-static {}, Lcom/pay/PayUtils;->openPay()V

    .line 107
    return-void
.end method
