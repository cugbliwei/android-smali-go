.class Lcom/zkunity/core/SDKOpt$DonotOptResponse;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/SDKOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonotOptResponse"
.end annotation


# instance fields
.field private oUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;


# direct methods
.method public constructor <init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V
    .locals 1
    .param p2, "oUri"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->oUri:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->oUri:Ljava/lang/String;

    .line 343
    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 6
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "rss":Lcom/zkunity/json/MJsonObject;
    if-nez p1, :cond_1

    .line 349
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    .end local v0    # "rss":Lcom/zkunity/json/MJsonObject;
    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 350
    .restart local v0    # "rss":Lcom/zkunity/json/MJsonObject;
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->oUri:Ljava/lang/String;

    const-string v3, "sGetNewTokenCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string v2, "uri"

    const-string v3, "sGetNewTokenCall"

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v2, "rs"

    const-string v3, "-3"

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 394
    return-void

    .line 354
    :cond_0
    const-string v2, "uri"

    const-string v3, "sNonetwork"

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "oUri"

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->oUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "rs"

    const-string v3, "-3"

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    .end local v0    # "rss":Lcom/zkunity/json/MJsonObject;
    invoke-virtual {p1}, Lcom/zkunity/json/MJsonObject;->getObj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zkunity/json/MJsonObject;-><init>(Lorg/json/JSONObject;)V

    .line 360
    .restart local v0    # "rss":Lcom/zkunity/json/MJsonObject;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "sRregisterByMobileNumsCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$0(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v2

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;
    invoke-static {v3}, Lcom/zkunity/core/SDKOpt;->access$1(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/zkunity/core/SDKBiOpt;->sendLoginLog(Ljava/lang/String;I)V

    .line 365
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$2(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "mobile"

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$3(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    .line 368
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "uid"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {v2, v3, v4}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    .line 391
    :cond_2
    :goto_1
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    const-string v2, "sLoginCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$0(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v3

    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;
    invoke-static {v2}, Lcom/zkunity/core/SDKOpt;->access$1(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v4

    .line 373
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->oUri:Ljava/lang/String;

    const-string v5, "visitorLogin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 372
    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/zkunity/core/SDKBiOpt;->sendLoginLog(Ljava/lang/String;I)V

    .line 374
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$2(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    .line 376
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "uid"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v2, v3, v4}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    .line 377
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "mobile"

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$3(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 378
    :cond_5
    const-string v2, "sGetNewTokenCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$0(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zkunity/core/SDKOpt;->access$2(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    .line 383
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "uid"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {v2, v3, v4}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 384
    :cond_6
    const-string v2, "sUpdateMimaCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 385
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 386
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v2

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;
    invoke-static {v3}, Lcom/zkunity/core/SDKOpt;->access$1(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/zkunity/core/SDKBiOpt;->sendLoginLog(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 387
    :cond_7
    const-string v2, "sVisAccountCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    invoke-static {}, Lcom/zkunity/core/SDKBiOpt;->opt()Lcom/zkunity/core/SDKBiOpt;

    move-result-object v2

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$DonotOptResponse;->this$0:Lcom/zkunity/core/SDKOpt;

    # getter for: Lcom/zkunity/core/SDKOpt;->uid:Ljava/lang/String;
    invoke-static {v3}, Lcom/zkunity/core/SDKOpt;->access$1(Lcom/zkunity/core/SDKOpt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/zkunity/core/SDKBiOpt;->sendLoginLog(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
