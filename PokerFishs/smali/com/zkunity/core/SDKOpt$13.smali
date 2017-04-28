.class Lcom/zkunity/core/SDKOpt$13;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->safeDonotOpt(Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;

.field private final synthetic val$data:Lcom/zkunity/json/MJsonObject;

.field private final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$13;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$13;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/zkunity/core/SDKOpt$13;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 276
    const-string v0, "plat_url"

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$13;->this$0:Lcom/zkunity/core/SDKOpt;

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$13;->val$uri:Ljava/lang/String;

    # invokes: Lcom/zkunity/core/SDKOpt;->getUri(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/zkunity/core/SDKOpt;->access$6(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$13;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 277
    new-instance v3, Lcom/zkunity/core/SDKOpt$DonotOptResponse;

    iget-object v4, p0, Lcom/zkunity/core/SDKOpt$13;->this$0:Lcom/zkunity/core/SDKOpt;

    iget-object v5, p0, Lcom/zkunity/core/SDKOpt$13;->val$uri:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/zkunity/core/SDKOpt$DonotOptResponse;-><init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 276
    invoke-static {v0, v1, v2, v3}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 278
    return-void
.end method
