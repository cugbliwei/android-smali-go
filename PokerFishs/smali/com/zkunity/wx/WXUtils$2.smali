.class Lcom/zkunity/wx/WXUtils$2;
.super Ljava/lang/Object;
.source "WXUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/wx/WXUtils;->startNativeWX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/wx/WXUtils;

.field private final synthetic val$noncestr:Ljava/lang/String;

.field private final synthetic val$packageValue:Ljava/lang/String;

.field private final synthetic val$prepayid:Ljava/lang/String;

.field private final synthetic val$sign:Ljava/lang/String;

.field private final synthetic val$timeStamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/wx/WXUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/wx/WXUtils$2;->this$0:Lcom/zkunity/wx/WXUtils;

    iput-object p2, p0, Lcom/zkunity/wx/WXUtils$2;->val$prepayid:Ljava/lang/String;

    iput-object p3, p0, Lcom/zkunity/wx/WXUtils$2;->val$packageValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/zkunity/wx/WXUtils$2;->val$noncestr:Ljava/lang/String;

    iput-object p5, p0, Lcom/zkunity/wx/WXUtils$2;->val$timeStamp:Ljava/lang/String;

    iput-object p6, p0, Lcom/zkunity/wx/WXUtils$2;->val$sign:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 94
    .local v0, "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    const-string v1, "wx_app_id"

    invoke-static {v1}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 95
    const-string v1, "wx_partner_id"

    invoke-static {v1}, Lcom/zkunity/config/AppConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->val$prepayid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->val$packageValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->val$noncestr:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->val$timeStamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->val$sign:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/zkunity/wx/WXUtils$2;->this$0:Lcom/zkunity/wx/WXUtils;

    # getter for: Lcom/zkunity/wx/WXUtils;->wxObj:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v1}, Lcom/zkunity/wx/WXUtils;->access$0(Lcom/zkunity/wx/WXUtils;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 102
    return-void
.end method
