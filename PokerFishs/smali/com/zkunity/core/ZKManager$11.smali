.class Lcom/zkunity/core/ZKManager$11;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sendWXWebpage(Lcom/zkunity/sdk/ZKReqEvent;)V
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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$11;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v4, "desc"

    invoke-virtual {v2, v4}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v4, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v5, "isTimelineCb"

    invoke-virtual {v4, v5}, Lcom/zkunity/sdk/ZKReqEvent;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 237
    :goto_0
    iget-object v4, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v5, "bmp"

    invoke-virtual {v4, v5}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/ZKManager$11;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/core/SDKManager;->sendWXWebpage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
