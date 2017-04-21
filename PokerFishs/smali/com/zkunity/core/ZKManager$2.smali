.class Lcom/zkunity/core/ZKManager$2;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sInit(Lcom/zkunity/sdk/ZKReqEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/ZKManager;


# direct methods
.method constructor <init>(Lcom/zkunity/core/ZKManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$2;->this$0:Lcom/zkunity/core/ZKManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v0}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 121
    .local v0, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v0}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 122
    const-string v1, "uri"

    const-string v2, "sInitCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "r"

    const/16 v2, 0x4e21

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    .line 125
    return-void
.end method
