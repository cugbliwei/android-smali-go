.class Lcom/zkunity/core/ZKManager$1;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sLoginRelated(Lcom/zkunity/sdk/ZKReqEvent;)V
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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$1;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$1;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$1;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v1, "isLimit"

    invoke-virtual {v0, v1}, Lcom/zkunity/sdk/ZKReqEvent;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/zkunity/config/MConfig;->setIsLimit(Z)V

    .line 109
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/ZKManager$1;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/zkunity/core/ZKManager$1;->val$req:Lcom/zkunity/sdk/ZKReqEvent;

    invoke-virtual {v2}, Lcom/zkunity/sdk/ZKReqEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/zkunity/core/SDKManager;->sLoginRelated(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
