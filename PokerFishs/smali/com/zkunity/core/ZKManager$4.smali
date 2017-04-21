.class Lcom/zkunity/core/ZKManager$4;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->sendPictureToFriends(Lcom/zkunity/sdk/ZKReqEvent;)V
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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$4;->this$0:Lcom/zkunity/core/ZKManager;

    iput-object p2, p0, Lcom/zkunity/core/ZKManager$4;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/zkunity/core/ZKManager$4;->val$reqEvent:Lcom/zkunity/sdk/ZKReqEvent;

    .line 147
    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Lcom/zkunity/sdk/ZKReqEvent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    .line 146
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 149
    .local v0, "bs":[B
    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Lcom/zkunity/core/SDKManager;->getBitmapFromByte([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/zkunity/core/SendToQQ;->sendPictureToFriends(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method
