.class public Lcom/zkunity/core/MIWXPay;
.super Ljava/lang/Object;
.source "MIWXPay.java"

# interfaces
.implements Lcom/zkunity/core/MPay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/MIWXPay$CreateWXListener;
    }
.end annotation


# instance fields
.field private wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/MIWXPay;Lcom/tencent/mm/sdk/modelpay/PayReq;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/zkunity/core/MIWXPay;->send(Lcom/tencent/mm/sdk/modelpay/PayReq;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/MIWXPay;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zkunity/core/MIWXPay;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method private send(Lcom/tencent/mm/sdk/modelpay/PayReq;)V
    .locals 2
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelpay/PayReq;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zkunity/core/MIWXPay$1;

    invoke-direct {v1, p0, p1}, Lcom/zkunity/core/MIWXPay$1;-><init>(Lcom/zkunity/core/MIWXPay;Lcom/tencent/mm/sdk/modelpay/PayReq;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wxbffae0764e6dbd19"

    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/zkunity/core/MIWXPay;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 24
    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Lcom/zkunity/core/SendToWX;->checkWX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    .line 41
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 33
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->createNewFromNull()V

    .line 34
    const-string v1, "uri"

    const-string v2, "createIWXPayOrderInfo"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "gid"

    invoke-virtual {v0, v1, p2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "roleId"

    invoke-virtual {v0, v1, p4}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "baseUrl"

    invoke-static {v2}, Lcom/zkunity/config/MConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "pay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zkunity/core/MIWXPay$CreateWXListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zkunity/core/MIWXPay$CreateWXListener;-><init>(Lcom/zkunity/core/MIWXPay;Lcom/zkunity/core/MIWXPay$CreateWXListener;)V

    .line 39
    invoke-static {v1, v2, v3}, Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V

    goto :goto_0
.end method
