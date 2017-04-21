.class Lcom/zkunity/core/MIWXPay$1;
.super Ljava/lang/Object;
.source "MIWXPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/MIWXPay;->send(Lcom/tencent/mm/sdk/modelpay/PayReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MIWXPay;

.field private final synthetic val$req:Lcom/tencent/mm/sdk/modelpay/PayReq;


# direct methods
.method constructor <init>(Lcom/zkunity/core/MIWXPay;Lcom/tencent/mm/sdk/modelpay/PayReq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/MIWXPay$1;->this$0:Lcom/zkunity/core/MIWXPay;

    iput-object p2, p0, Lcom/zkunity/core/MIWXPay$1;->val$req:Lcom/tencent/mm/sdk/modelpay/PayReq;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zkunity/core/MIWXPay$1;->this$0:Lcom/zkunity/core/MIWXPay;

    # getter for: Lcom/zkunity/core/MIWXPay;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v0}, Lcom/zkunity/core/MIWXPay;->access$1(Lcom/zkunity/core/MIWXPay;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/zkunity/core/MIWXPay$1;->this$0:Lcom/zkunity/core/MIWXPay;

    # getter for: Lcom/zkunity/core/MIWXPay;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v0}, Lcom/zkunity/core/MIWXPay;->access$1(Lcom/zkunity/core/MIWXPay;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    const-string v1, "wxbffae0764e6dbd19"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 84
    iget-object v0, p0, Lcom/zkunity/core/MIWXPay$1;->this$0:Lcom/zkunity/core/MIWXPay;

    # getter for: Lcom/zkunity/core/MIWXPay;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v0}, Lcom/zkunity/core/MIWXPay;->access$1(Lcom/zkunity/core/MIWXPay;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/MIWXPay$1;->val$req:Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->ispayWx:Z

    goto :goto_0
.end method
