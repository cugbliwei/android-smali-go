.class public Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field public static ispayWx:Z


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->ispayWx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "======================== speedfish/pokerfishs/wxapi/WXPayActivity.smali"
    const-string v3,  ".method public onCreate(Landroid/os/Bundle;)V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    .line 23
    const-string v0, "wxbffae0764e6dbd19"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 24
    iget-object v0, p0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 25
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "======================== speedfish/pokerfishs/wxapi/WXPayActivity.smali"
    const-string v2,  ".method protected onNewIntent(Landroid/content/Intent;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    .line 30
    invoke-virtual {p0, p1}, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 31
    iget-object v0, p0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 32
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 3

    const-string v1, "======================== speedfish/pokerfishs/wxapi/WXPayActivity.smali"
    const-string v2,  ".method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->ispayWx:Z

    .line 37
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 5

    const-string v3, "======================== speedfish/pokerfishs/wxapi/WXPayActivity.smali"
    const-string v4,  ".method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/4 v2, -0x5

    .line 41
    const-string v0, "BaseResp.errCode"

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/speedfish/pokerfishs/wxapi/WXPayEntryActivity;->finish()V

    .line 52
    return-void

    .line 44
    :cond_0
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 45
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_2

    .line 47
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0
.end method
