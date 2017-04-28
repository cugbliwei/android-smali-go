.class Lcom/zkunity/core/PaySelectDialog$3$1;
.super Ljava/lang/Object;
.source "PaySelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/PaySelectDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zkunity/core/PaySelectDialog$3;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/zkunity/core/PaySelectDialog$3;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$3$1;->this$1:Lcom/zkunity/core/PaySelectDialog$3;

    iput p2, p0, Lcom/zkunity/core/PaySelectDialog$3$1;->val$type:I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 189
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 190
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "type"

    iget v3, p0, Lcom/zkunity/core/PaySelectDialog$3$1;->val$type:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/zkunity/core/PaySelectDialog$3$1;->this$1:Lcom/zkunity/core/PaySelectDialog$3;

    # getter for: Lcom/zkunity/core/PaySelectDialog$3;->this$0:Lcom/zkunity/core/PaySelectDialog;
    invoke-static {v2}, Lcom/zkunity/core/PaySelectDialog$3;->access$0(Lcom/zkunity/core/PaySelectDialog$3;)Lcom/zkunity/core/PaySelectDialog;

    move-result-object v2

    # getter for: Lcom/zkunity/core/PaySelectDialog;->aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;
    invoke-static {v2}, Lcom/zkunity/core/PaySelectDialog;->access$2(Lcom/zkunity/core/PaySelectDialog;)Lcom/zkunity/core/PaySelectDialog$AniHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zkunity/core/PaySelectDialog$AniHandler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method
