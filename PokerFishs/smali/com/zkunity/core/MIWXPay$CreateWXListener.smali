.class Lcom/zkunity/core/MIWXPay$CreateWXListener;
.super Ljava/lang/Object;
.source "MIWXPay.java"

# interfaces
.implements Lcom/zkunity/network/SyncNetworkCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/MIWXPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateWXListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MIWXPay;


# direct methods
.method private constructor <init>(Lcom/zkunity/core/MIWXPay;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zkunity/core/MIWXPay$CreateWXListener;->this$0:Lcom/zkunity/core/MIWXPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/core/MIWXPay;Lcom/zkunity/core/MIWXPay$CreateWXListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zkunity/core/MIWXPay$CreateWXListener;-><init>(Lcom/zkunity/core/MIWXPay;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 70
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    .line 71
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "rs"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 48
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0, p2}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 49
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x4e21

    if-ne v2, v3, :cond_0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wxbffae0764e6dbd19"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "partnerid"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1299952001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 54
    .local v1, "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 55
    const-string v2, "partnerid"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 56
    const-string v2, "prepayid"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 57
    const-string v2, "package"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 58
    const-string v2, "noncestr"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 59
    const-string v2, "timestamp"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 60
    const-string v2, "sign"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/zkunity/core/MIWXPay$CreateWXListener;->this$0:Lcom/zkunity/core/MIWXPay;

    # invokes: Lcom/zkunity/core/MIWXPay;->send(Lcom/tencent/mm/sdk/modelpay/PayReq;)V
    invoke-static {v2, v1}, Lcom/zkunity/core/MIWXPay;->access$0(Lcom/zkunity/core/MIWXPay;Lcom/tencent/mm/sdk/modelpay/PayReq;)V

    .line 66
    .end local v1    # "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0
.end method
