.class Lcom/zkunity/core/ZKManager$6;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sendBitmapAndWordsToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V
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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$6;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$6;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 170
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$6;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 171
    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 172
    const/4 v2, 0x0

    .line 170
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 173
    .local v0, "bs":[B
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$6;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 174
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zkunity/core/ZKManager$6;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v3, "summary"

    invoke-virtual {v2, v3}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/zkunity/core/ZKManager$6;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    const-string v4, "targetUrl"

    invoke-virtual {v3, v4}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zkunity/core/SDKManager;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 173
    invoke-static {v1, v2, v3, v4}, Lcom/zkunity/core/SendToQQ;->sendBitmapAndWordsToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 177
    return-void
.end method
