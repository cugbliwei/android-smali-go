.class public Lcom/zkunity/core/MAlipay;
.super Ljava/lang/Object;
.source "MAlipay.java"

# interfaces
.implements Lcom/zkunity/core/MPay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/MAlipay$CreateAlipayListener;,
        Lcom/zkunity/core/MAlipay$PayResult;
    }
.end annotation


# instance fields
.field private payHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/zkunity/core/MAlipay$1;

    invoke-direct {v0, p0}, Lcom/zkunity/core/MAlipay$1;-><init>(Lcom/zkunity/core/MAlipay;)V

    iput-object v0, p0, Lcom/zkunity/core/MAlipay;->payHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zkunity/core/MAlipay;->activePay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/core/MAlipay;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zkunity/core/MAlipay;->payHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private activePay(Ljava/lang/String;)V
    .locals 2
    .param p1, "payInfos"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/zkunity/core/MAlipay$2;

    invoke-direct {v0, p0, p1}, Lcom/zkunity/core/MAlipay$2;-><init>(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V

    .line 72
    .local v0, "payRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    .local v1, "payThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method private paySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 33
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->createNewFromNull()V

    .line 34
    const-string v1, "uri"

    const-string v2, "createAlipayOrderInfo"

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

    new-instance v3, Lcom/zkunity/core/MAlipay$CreateAlipayListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zkunity/core/MAlipay$CreateAlipayListener;-><init>(Lcom/zkunity/core/MAlipay;Lcom/zkunity/core/MAlipay$CreateAlipayListener;)V

    .line 39
    invoke-static {v1, v2, v3}, Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/core/MAlipay;->paySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
