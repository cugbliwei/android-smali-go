.class Lcom/zkunity/core/ZKManager$10;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sendWXImage(Lcom/zkunity/sdk/ZKReqEvent;)V
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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$10;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$10;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zkunity/core/ZKManager$10;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v3, "bmp"

    invoke-virtual {v2, v3}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/zkunity/core/ZKManager$10;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v4, "isTimelineCb"

    invoke-virtual {v3, v4}, Lcom/zkunity/sdk/ZKReqEvent;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 223
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zkunity/core/SDKManager;->sendWXImage(Ljava/lang/String;Z)V

    .line 225
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
