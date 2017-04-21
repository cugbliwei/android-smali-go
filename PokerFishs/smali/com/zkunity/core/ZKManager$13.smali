.class Lcom/zkunity/core/ZKManager$13;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->openSelect(Lcom/zkunity/sdk/ZKReqEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/ZKManager;

.field private final synthetic val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;


# direct methods
.method constructor <init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$13;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    # getter for: Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;
    invoke-static {v0}, Lcom/zkunity/core/ZKManager;->access$2(Lcom/zkunity/core/ZKManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    # getter for: Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;
    invoke-static {v0}, Lcom/zkunity/core/ZKManager;->access$2(Lcom/zkunity/core/ZKManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 259
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zkunity/core/SDKManager;->getSid()Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/zkunity/core/ZKManager$13;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/core/SDKManager;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v5, p0, Lcom/zkunity/core/ZKManager$13;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v6, "roleid"

    invoke-virtual {v5, v6}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/core/PayManager;->startPayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zkunity/core/ZKManager;->access$1(Lcom/zkunity/core/ZKManager;Ljava/lang/String;)V

    .line 273
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    # getter for: Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;
    invoke-static {v0}, Lcom/zkunity/core/ZKManager;->access$2(Lcom/zkunity/core/ZKManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zkunity/core/ZKManager$13;->this$0:Lcom/zkunity/core/ZKManager;

    # getter for: Lcom/zkunity/core/ZKManager;->selectType:Ljava/lang/String;
    invoke-static {v0}, Lcom/zkunity/core/ZKManager;->access$2(Lcom/zkunity/core/ZKManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 265
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zkunity/core/SDKManager;->getSid()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/zkunity/core/ZKManager$13;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/core/SDKManager;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 268
    iget-object v5, p0, Lcom/zkunity/core/ZKManager$13;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v6, "roleid"

    invoke-virtual {v5, v6}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/core/PayManager;->startPayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0
.end method
