.class Lcom/zkunity/network/SyncNetworkUtils$1;
.super Ljava/lang/Object;
.source "SyncNetworkUtils.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$call:Lcom/zkunity/network/SyncNetworkCall;


# direct methods
.method constructor <init>(Lcom/zkunity/network/SyncNetworkCall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/network/SyncNetworkUtils$1;->val$call:Lcom/zkunity/network/SyncNetworkCall;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zkunity/network/SyncNetworkUtils$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v1}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 42
    .local v1, "mjObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v1, p1}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 43
    const-string v4, "k"

    invoke-virtual {v1, v4}, Lcom/zkunity/model/MJSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "ek":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 45
    # invokes: Lcom/zkunity/network/SyncNetworkUtils;->calcEncryptKey(I)I
    invoke-static {v0}, Lcom/zkunity/network/SyncNetworkUtils;->access$0(I)I

    move-result v0

    .line 47
    const-string v4, "d"

    invoke-virtual {v1, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    # invokes: Lcom/zkunity/network/SyncNetworkUtils;->getEncryptString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/zkunity/network/SyncNetworkUtils;->access$1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v2}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 49
    .local v2, "mobj1":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v2, v3}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 50
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/zkunity/network/SyncNetworkUtils$1;->val$call:Lcom/zkunity/network/SyncNetworkCall;

    const/16 v5, 0xc8

    const-string v6, "rs"

    invoke-virtual {v2, v6}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/zkunity/network/SyncNetworkCall;->onSuccess(ILjava/lang/String;)V

    .line 56
    .end local v2    # "mobj1":Lcom/zkunity/model/MJSONObject;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v2    # "mobj1":Lcom/zkunity/model/MJSONObject;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/zkunity/network/SyncNetworkUtils$1;->val$call:Lcom/zkunity/network/SyncNetworkCall;

    const/16 v5, 0x1f5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/zkunity/network/SyncNetworkCall;->onFailure(ILcom/android/volley/VolleyError;)V

    goto :goto_0
.end method
