.class Lcom/zkunity/core/SDKOpt$3;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sendPictureToFriends(Lcom/zkunity/json/MJsonObject;)V
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
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$3;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$3;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$3;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 111
    .local v0, "bs":[B
    invoke-static {}, Lcom/zkunity/qq/QQUtils;->getObj()Lcom/zkunity/qq/QQUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$3;->this$0:Lcom/zkunity/core/SDKOpt;

    # invokes: Lcom/zkunity/core/SDKOpt;->getBitmapFromByte([B)Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/zkunity/core/SDKOpt;->access$4(Lcom/zkunity/core/SDKOpt;[B)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/qq/QQUtils;->sendPictureToFriends(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method
