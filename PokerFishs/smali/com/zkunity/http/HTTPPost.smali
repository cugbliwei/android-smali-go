.class public Lcom/zkunity/http/HTTPPost;
.super Lcom/zkunity/http/HTTPBase;
.source "HTTPPost.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zkunity/http/HTTPBase;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 7

    .prologue
    .line 14
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zkunity/http/HTTPPost;->url:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zkunity/http/HTTPPost;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/zkunity/http/HTTPPost;->openConnection(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 15
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "who"

    const-string v6, "android"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 18
    .local v3, "outStrm":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 19
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    iget-object v5, p0, Lcom/zkunity/http/HTTPPost;->params:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v5}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zkunity/http/HTTPAlgorithmUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 22
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zkunity/http/HTTPPost;->getFromInputStream(Ljava/io/InputStream;)Lcom/zkunity/json/MJsonObject;

    move-result-object v5

    iput-object v5, p0, Lcom/zkunity/http/HTTPPost;->params:Lcom/zkunity/json/MJsonObject;

    .line 23
    iget-object v5, p0, Lcom/zkunity/http/HTTPPost;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    iget-object v6, p0, Lcom/zkunity/http/HTTPPost;->params:Lcom/zkunity/json/MJsonObject;

    invoke-interface {v5, v6}, Lcom/zkunity/http/HTTPSyncResponse;->action(Lcom/zkunity/json/MJsonObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "outStrm":Ljava/io/OutputStream;
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    :goto_0
    invoke-virtual {p0}, Lcom/zkunity/http/HTTPPost;->clear()V

    .line 29
    return-void

    .line 24
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    iget-object v5, p0, Lcom/zkunity/http/HTTPPost;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/zkunity/http/HTTPSyncResponse;->action(Lcom/zkunity/json/MJsonObject;)V

    goto :goto_0
.end method
