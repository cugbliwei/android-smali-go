.class Lcom/zkunity/toast/ToastUtils$1$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/toast/ToastUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zkunity/toast/ToastUtils$1;


# direct methods
.method constructor <init>(Lcom/zkunity/toast/ToastUtils$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/toast/ToastUtils$1$1;->this$1:Lcom/zkunity/toast/ToastUtils$1;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zkunity/toast/ToastUtils;->access$1(Z)V

    .line 66
    # invokes: Lcom/zkunity/toast/ToastUtils;->showToast()V
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->access$2()V

    .line 67
    return-void
.end method
