.class Lcom/tencent/connect/auth/AuthAgent$b$1;
.super Lcom/tencent/connect/auth/AuthAgent$b$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthAgent$b;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/tencent/connect/auth/AuthAgent$b;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->c:Lcom/tencent/connect/auth/AuthAgent$b;

    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p4, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/auth/AuthAgent$b$a;-><init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->c:Lcom/tencent/connect/auth/AuthAgent$b;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthAgent$b;->a()V

    .line 544
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->a:Lcom/tencent/tauth/IUiListener;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$b$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 550
    :cond_1
    return-void
.end method
