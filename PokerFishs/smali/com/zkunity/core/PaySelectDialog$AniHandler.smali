.class Lcom/zkunity/core/PaySelectDialog$AniHandler;
.super Landroid/os/Handler;
.source "PaySelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/PaySelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AniHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/PaySelectDialog;


# direct methods
.method public constructor <init>(Lcom/zkunity/core/PaySelectDialog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$AniHandler;->this$0:Lcom/zkunity/core/PaySelectDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/zkunity/core/PaySelectDialog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "L"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$AniHandler;->this$0:Lcom/zkunity/core/PaySelectDialog;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/zkunity/core/PaySelectDialog$AniHandler;->this$0:Lcom/zkunity/core/PaySelectDialog;

    # invokes: Lcom/zkunity/core/PaySelectDialog;->showPayUI()V
    invoke-static {v1}, Lcom/zkunity/core/PaySelectDialog;->access$0(Lcom/zkunity/core/PaySelectDialog;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "type":I
    iget-object v1, p0, Lcom/zkunity/core/PaySelectDialog$AniHandler;->this$0:Lcom/zkunity/core/PaySelectDialog;

    # invokes: Lcom/zkunity/core/PaySelectDialog;->closePayUI(I)V
    invoke-static {v1, v0}, Lcom/zkunity/core/PaySelectDialog;->access$1(Lcom/zkunity/core/PaySelectDialog;I)V

    goto :goto_0
.end method
