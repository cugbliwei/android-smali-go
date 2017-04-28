.class Lcom/zkunity/wx/WXUtils$1;
.super Ljava/lang/Object;
.source "WXUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/wx/WXUtils;->startPayWithRemoteWX(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/wx/WXUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/wx/WXUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/wx/WXUtils$1;->this$0:Lcom/zkunity/wx/WXUtils;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 6
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const/4 v2, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 69
    const-string v0, "zk_string_wechat_pay"

    const/16 v1, 0x6b

    .line 70
    const-string v2, "zk_not_create_order"

    .line 68
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "rs"

    invoke-virtual {p1, v0}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/zkunity/wx/WXUtils$1;->this$0:Lcom/zkunity/wx/WXUtils;

    const-string v1, "prepayid"

    invoke-virtual {p1, v1}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "Sign=WXPay"

    const-string v3, "noncestr"

    invoke-virtual {p1, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v4, "timestamp"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string v5, "sign"

    invoke-virtual {p1, v5}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/wx/WXUtils;->startNativeWX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 79
    const-string v0, "zk_string_wechat_pay"

    const/16 v1, 0x6c

    .line 80
    const-string v2, "zk_not_create_order"

    .line 78
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
