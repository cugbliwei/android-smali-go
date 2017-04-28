.class public abstract Lcom/zkunity/http/HTTPBase;
.super Ljava/lang/Object;
.source "HTTPBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected fn:Lcom/zkunity/http/HTTPSyncResponse;

.field protected params:Lcom/zkunity/json/MJsonObject;

.field protected uri:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/zkunity/http/HTTPBase;->url:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/zkunity/http/HTTPBase;->uri:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/zkunity/http/HTTPBase;->params:Lcom/zkunity/json/MJsonObject;

    .line 33
    iput-object v0, p0, Lcom/zkunity/http/HTTPBase;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    .line 34
    return-void
.end method

.method public getFromInputStream(Ljava/io/InputStream;)Lcom/zkunity/json/MJsonObject;
    .locals 8
    .param p1, "inStream"    # Ljava/io/InputStream;

    .prologue
    .line 57
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v3, "in":Ljava/io/InputStreamReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 60
    .local v0, "cs":[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zkunity/http/HTTPAlgorithmUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "data":Ljava/lang/String;
    new-instance v4, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v4, v1}, Lcom/zkunity/json/MJsonObject;-><init>(Ljava/lang/String;)V

    .line 70
    .end local v0    # "cs":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 61
    .restart local v0    # "cs":[C
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "cs":[C
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public openConnection(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isPost"    # Z

    .prologue
    .line 39
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 41
    .local v3, "rulConnection":Ljava/net/URLConnection;
    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 42
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 43
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 45
    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 46
    if-eqz p2, :cond_0

    const-string v5, "POST"

    :goto_0
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "rulConnection":Ljava/net/URLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v2

    .line 46
    .restart local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "rulConnection":Ljava/net/URLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    const-string v5, "GET"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "rulConnection":Ljava/net/URLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/zkunity/http/HTTPBase;->action()V

    .line 79
    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/zkunity/json/MJsonObject;
    .param p4, "fn"    # Lcom/zkunity/http/HTTPSyncResponse;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zkunity/http/HTTPBase;->url:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/zkunity/http/HTTPBase;->uri:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/zkunity/http/HTTPBase;->params:Lcom/zkunity/json/MJsonObject;

    .line 25
    iput-object p4, p0, Lcom/zkunity/http/HTTPBase;->fn:Lcom/zkunity/http/HTTPSyncResponse;

    .line 26
    return-void
.end method
