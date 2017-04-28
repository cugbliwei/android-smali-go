.class Lcom/zkunity/core/PaySelectDialog$2$1;
.super Ljava/lang/Object;
.source "PaySelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/PaySelectDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zkunity/core/PaySelectDialog$2;


# direct methods
.method constructor <init>(Lcom/zkunity/core/PaySelectDialog$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$2$1;->this$1:Lcom/zkunity/core/PaySelectDialog$2;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 159
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 163
    iget-object v2, p0, Lcom/zkunity/core/PaySelectDialog$2$1;->this$1:Lcom/zkunity/core/PaySelectDialog$2;

    # getter for: Lcom/zkunity/core/PaySelectDialog$2;->this$0:Lcom/zkunity/core/PaySelectDialog;
    invoke-static {v2}, Lcom/zkunity/core/PaySelectDialog$2;->access$0(Lcom/zkunity/core/PaySelectDialog$2;)Lcom/zkunity/core/PaySelectDialog;

    move-result-object v2

    # getter for: Lcom/zkunity/core/PaySelectDialog;->aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;
    invoke-static {v2}, Lcom/zkunity/core/PaySelectDialog;->access$2(Lcom/zkunity/core/PaySelectDialog;)Lcom/zkunity/core/PaySelectDialog$AniHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zkunity/core/PaySelectDialog$AniHandler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method
