.class Lcom/zkunity/core/MAlipay$CreateAlipayListener;
.super Ljava/lang/Object;
.source "MAlipay.java"

# interfaces
.implements Lcom/zkunity/network/SyncNetworkCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/MAlipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAlipayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MAlipay;


# direct methods
.method private constructor <init>(Lcom/zkunity/core/MAlipay;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zkunity/core/MAlipay$CreateAlipayListener;->this$0:Lcom/zkunity/core/MAlipay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/core/MAlipay;Lcom/zkunity/core/MAlipay$CreateAlipayListener;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/zkunity/core/MAlipay$CreateAlipayListener;-><init>(Lcom/zkunity/core/MAlipay;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 87
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    .line 88
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "rs"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 81
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0, p2}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/zkunity/core/MAlipay$CreateAlipayListener;->this$0:Lcom/zkunity/core/MAlipay;

    const-string v2, "alipayInfos"

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/zkunity/core/MAlipay;->activePay(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zkunity/core/MAlipay;->access$0(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V

    .line 83
    return-void
.end method
