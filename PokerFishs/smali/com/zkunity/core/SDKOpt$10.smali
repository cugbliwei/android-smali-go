.class Lcom/zkunity/core/SDKOpt$10;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sendWXWebpage(Lcom/zkunity/json/MJsonObject;)V
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
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$10;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 204
    iget-object v0, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 204
    invoke-static {v0, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    .line 206
    .local v7, "bs":[B
    invoke-static {}, Lcom/zkunity/wx/WXUtils;->getObj()Lcom/zkunity/wx/WXUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v3, "desc"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v6, "extInfo"

    invoke-virtual {v3, v6}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    iget-object v6, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v8, "isTimelineCb"

    invoke-virtual {v6, v8}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 209
    :goto_0
    iget-object v5, p0, Lcom/zkunity/core/SDKOpt$10;->this$0:Lcom/zkunity/core/SDKOpt;

    # invokes: Lcom/zkunity/core/SDKOpt;->getBitmapFromByte([B)Landroid/graphics/Bitmap;
    invoke-static {v5, v7}, Lcom/zkunity/core/SDKOpt;->access$4(Lcom/zkunity/core/SDKOpt;[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/zkunity/core/SDKOpt$10;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v8, "url"

    invoke-virtual {v6, v8}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual/range {v0 .. v6}, Lcom/zkunity/wx/WXUtils;->sendWebpage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 210
    return-void

    :cond_0
    move v4, v5

    .line 208
    goto :goto_0
.end method
