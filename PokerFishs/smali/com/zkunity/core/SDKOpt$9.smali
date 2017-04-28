.class Lcom/zkunity/core/SDKOpt$9;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sendWXImage(Lcom/zkunity/json/MJsonObject;)V
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
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$9;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$9;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$9;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v4, "bmp"

    invoke-virtual {v3, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 192
    invoke-static {v3, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 194
    .local v0, "bs":[B
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/zkunity/core/SDKOpt$9;->this$0:Lcom/zkunity/core/SDKOpt;

    # invokes: Lcom/zkunity/core/SDKOpt;->getBitmapFromByte([B)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/zkunity/core/SDKOpt;->access$4(Lcom/zkunity/core/SDKOpt;[B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 195
    iget-object v5, p0, Lcom/zkunity/core/SDKOpt$9;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v6, "isTimelineCb"

    invoke-virtual {v5, v6}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 194
    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/zkunity/wx/WXUtils;->sendImage(Landroid/graphics/Bitmap;Z)Z

    .line 196
    return-void

    :cond_0
    move v1, v2

    .line 195
    goto :goto_0
.end method
