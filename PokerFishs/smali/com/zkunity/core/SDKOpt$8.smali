.class Lcom/zkunity/core/SDKOpt$8;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sendWXText(Lcom/zkunity/json/MJsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;

.field private final synthetic val$data:Lcom/zkunity/json/MJsonObject;


# direct methods
.method constructor <init>(Lcom/zkunity/core/SDKOpt;Lcom/zkunity/json/MJsonObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$8;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$8;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$8;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v3, "txt"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$8;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v4, "isTimelineCb"

    invoke-virtual {v3, v4}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 182
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zkunity/wx/WXUtils;->sendText(Ljava/lang/String;Z)Z

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
