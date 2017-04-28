.class public Lcom/zkunity/http/HTTPGet;
.super Lcom/zkunity/http/HTTPBase;
.source "HTTPGet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zkunity/http/HTTPBase;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 5

    .prologue
    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/zkunity/http/HTTPGet;->params:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v3}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zkunity/http/HTTPAlgorithmUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zkunity/http/HTTPGet;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zkunity/http/HTTPGet;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    invoke-virtual {p0, v3, v4}, Lcom/zkunity/http/HTTPGet;->openConnection(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 15
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "who"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zkunity/http/HTTPGet;->getFromInputStream(Ljava/io/InputStream;)Lcom/zkunity/json/MJsonObject;

    move-result-object v3

    iput-object v3, p0, Lcom/zkunity/http/HTTPGet;->params:Lcom/zkunity/json/MJsonObject;

    .line 18
    iget-object v3, p0, Lcom/zkunity/http/HTTPGet;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    iget-object v4, p0, Lcom/zkunity/http/HTTPGet;->params:Lcom/zkunity/json/MJsonObject;

    invoke-interface {v3, v4}, Lcom/zkunity/http/HTTPSyncResponse;->action(Lcom/zkunity/json/MJsonObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/zkunity/http/HTTPGet;->clear()V

    .line 24
    return-void

    .line 19
    :catch_0
    move-exception v2

    .line 20
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    iget-object v3, p0, Lcom/zkunity/http/HTTPGet;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/zkunity/http/HTTPSyncResponse;->action(Lcom/zkunity/json/MJsonObject;)V

    goto :goto_0
.end method
