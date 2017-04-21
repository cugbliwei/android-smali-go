.class Lcom/zkunity/core/ZKManager$3;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sPay(Lcom/zkunity/sdk/ZKReqEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/ZKManager;

.field private final synthetic val$req:Lcom/zkunity/sdk/ZKReqEvent;


# direct methods
.method constructor <init>(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$3;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$3;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$3;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v2, "sid"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "sid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zkunity/core/SDKManager;->setSid(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$3;->this$0:Lcom/zkunity/core/ZKManager;

    iget-object v2, p0, Lcom/zkunity/core/ZKManager$3;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    # invokes: Lcom/zkunity/core/ZKManager;->openSelect(Lcom/zkunity/sdk/ZKReqEvent;)V
    invoke-static {v1, v2}, Lcom/zkunity/core/ZKManager;->access$0(Lcom/zkunity/core/ZKManager;Lcom/zkunity/sdk/ZKReqEvent;)V

    .line 138
    return-void
.end method
