.class public Lcom/zkunity/core/PayManager;
.super Ljava/lang/Object;
.source "PayManager.java"


# static fields
.field private static manager:Lcom/zkunity/core/PayManager;


# instance fields
.field private pays:[Lcom/zkunity/core/MPay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/zkunity/core/PayManager;

    invoke-direct {v0}, Lcom/zkunity/core/PayManager;-><init>()V

    sput-object v0, Lcom/zkunity/core/PayManager;->manager:Lcom/zkunity/core/PayManager;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zkunity/core/MPay;

    const/4 v1, 0x0

    new-instance v2, Lcom/zkunity/core/MAlipay;

    invoke-direct {v2}, Lcom/zkunity/core/MAlipay;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/zkunity/core/MIWXPay;

    invoke-direct {v2}, Lcom/zkunity/core/MIWXPay;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    .line 20
    return-void
.end method

.method public static getManager()Lcom/zkunity/core/PayManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/zkunity/core/PayManager;->manager:Lcom/zkunity/core/PayManager;

    return-object v0
.end method


# virtual methods
.method public closeAllPaySystem()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    array-length v1, v2

    .line 51
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 54
    return-void

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/zkunity/core/MPay;->init()V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initAllPaySystem()V
    .locals 3

    .prologue
    .line 29
    iget-object v2, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    array-length v1, v2

    .line 30
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/zkunity/core/MPay;->init()V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sPayCall(I)V
    .locals 3
    .param p1, "r"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/zkunity/sdk/ZKResEvent;

    invoke-direct {v0}, Lcom/zkunity/sdk/ZKResEvent;-><init>()V

    .line 59
    .local v0, "rEvent":Lcom/zkunity/sdk/ZKResEvent;
    invoke-virtual {v0}, Lcom/zkunity/sdk/ZKResEvent;->createNewFromNull()V

    .line 60
    const-string v1, "uri"

    const-string v2, "sPayCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "rs"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/sdk/ZKResEvent;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/zkunity/sdk/MUnityPlayerProxy;->getManager()Lcom/zkunity/sdk/MUnityPlayerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zkunity/sdk/MUnityPlayerProxy;->sendMessage(Lcom/zkunity/sdk/ZKResEvent;)V

    .line 63
    return-void
.end method

.method public startPayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payType"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "roleId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/zkunity/core/MAlipay;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v2

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/zkunity/core/MPay;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/zkunity/core/MIWXPay;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/zkunity/core/PayManager;->pays:[Lcom/zkunity/core/MPay;

    aget-object v0, v0, v1

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/zkunity/core/MPay;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0
.end method
