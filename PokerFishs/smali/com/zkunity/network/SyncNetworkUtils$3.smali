.class Lcom/zkunity/network/SyncNetworkUtils$3;
.super Lcom/zkunity/network/SyncNetworkUtils$UTFStringRequest;
.source "SyncNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$jsonStr:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 1
    .local p3, "$anonymous2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    .local p4, "$anonymous3":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    iput-object p5, p0, Lcom/zkunity/network/SyncNetworkUtils$3;->val$jsonStr:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/network/SyncNetworkUtils$UTFStringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/zkunity/network/SyncNetworkUtils$3;->val$jsonStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 66
    # invokes: Lcom/zkunity/network/SyncNetworkUtils;->getKey()I
    invoke-static {}, Lcom/zkunity/network/SyncNetworkUtils;->access$2()I

    move-result v0

    .line 67
    .local v0, "ek":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 68
    const-string v2, "k"

    # invokes: Lcom/zkunity/network/SyncNetworkUtils;->calcEncryptKey(I)I
    invoke-static {v0}, Lcom/zkunity/network/SyncNetworkUtils;->access$0(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "d"

    iget-object v3, p0, Lcom/zkunity/network/SyncNetworkUtils$3;->val$jsonStr:Ljava/lang/String;

    # invokes: Lcom/zkunity/network/SyncNetworkUtils;->getEncryptString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/zkunity/network/SyncNetworkUtils;->access$1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "ek":I
    :cond_0
    return-object v1
.end method
