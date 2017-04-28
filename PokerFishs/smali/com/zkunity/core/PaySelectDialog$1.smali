.class Lcom/zkunity/core/PaySelectDialog$1;
.super Ljava/lang/Object;
.source "PaySelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/PaySelectDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/PaySelectDialog;


# direct methods
.method constructor <init>(Lcom/zkunity/core/PaySelectDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$1;->this$0:Lcom/zkunity/core/PaySelectDialog;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 61
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 62
    iget-object v1, p0, Lcom/zkunity/core/PaySelectDialog$1;->this$0:Lcom/zkunity/core/PaySelectDialog;

    # getter for: Lcom/zkunity/core/PaySelectDialog;->aniHandler:Lcom/zkunity/core/PaySelectDialog$AniHandler;
    invoke-static {v1}, Lcom/zkunity/core/PaySelectDialog;->access$2(Lcom/zkunity/core/PaySelectDialog;)Lcom/zkunity/core/PaySelectDialog$AniHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zkunity/core/PaySelectDialog$AniHandler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
