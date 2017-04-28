.class Lcom/zkunity/core/SDKOpt$7;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sendBitmapAndWordsToQzone(Lcom/zkunity/json/MJsonObject;)V
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
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$7;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$7;->val$data:Lcom/zkunity/json/MJsonObject;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 156
    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$7;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 156
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 158
    .local v0, "bs":[B
    invoke-static {}, Lcom/zkunity/qq/QQUtils;->getObj()Lcom/zkunity/qq/QQUtils;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$7;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$7;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v4, "summary"

    invoke-virtual {v3, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    iget-object v4, p0, Lcom/zkunity/core/SDKOpt$7;->val$data:Lcom/zkunity/json/MJsonObject;

    const-string v5, "targetUrl"

    invoke-virtual {v4, v5}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zkunity/core/SDKOpt$7;->this$0:Lcom/zkunity/core/SDKOpt;

    # invokes: Lcom/zkunity/core/SDKOpt;->getBitmapFromByte([B)Landroid/graphics/Bitmap;
    invoke-static {v5, v0}, Lcom/zkunity/core/SDKOpt;->access$4(Lcom/zkunity/core/SDKOpt;[B)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 158
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zkunity/qq/QQUtils;->sendBitmapAndWordsToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 161
    return-void
.end method
