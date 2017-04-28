.class public Lcom/zkunity/http/HTTPTools;
.super Ljava/lang/Object;
.source "HTTPTools.java"


# static fields
.field private static service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/zkunity/http/HTTPTools;->service:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(ZLjava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V
    .locals 2
    .param p0, "isPost"    # Z
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/zkunity/json/MJsonObject;
    .param p4, "fn"    # Lcom/zkunity/http/HTTPSyncResponse;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    new-instance v0, Lcom/zkunity/http/HTTPPost;

    invoke-direct {v0}, Lcom/zkunity/http/HTTPPost;-><init>()V

    .line 35
    .local v0, "base":Lcom/zkunity/http/HTTPBase;
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zkunity/http/HTTPBase;->setParams(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 36
    sget-object v1, Lcom/zkunity/http/HTTPTools;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void

    .line 34
    .end local v0    # "base":Lcom/zkunity/http/HTTPBase;
    :cond_0
    new-instance v0, Lcom/zkunity/http/HTTPGet;

    invoke-direct {v0}, Lcom/zkunity/http/HTTPGet;-><init>()V

    goto :goto_0
.end method

.method public static sendGet(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V
    .locals 3
    .param p0, "urlName"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/zkunity/json/MJsonObject;
    .param p3, "fn"    # Lcom/zkunity/http/HTTPSyncResponse;

    .prologue
    .line 26
    const-string v1, "plat_id"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1, v0, p1, p2, p3}, Lcom/zkunity/http/HTTPTools;->send(ZLjava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 29
    return-void
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V
    .locals 3
    .param p0, "urlName"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/zkunity/json/MJsonObject;
    .param p3, "fn"    # Lcom/zkunity/http/HTTPSyncResponse;

    .prologue
    .line 18
    const-string v1, "plat_id"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2, p3}, Lcom/zkunity/http/HTTPTools;->send(ZLjava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 21
    return-void
.end method
