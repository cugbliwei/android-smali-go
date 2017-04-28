.class Lcom/zkunity/google/GooglePlayUtils$4;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/GooglePlayUtils;->startPayWithRemoteGoogle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/google/GooglePlayUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$4;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 6
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const/4 v5, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 113
    const-string v2, "zk_string_google_play"

    const/16 v3, 0x68

    .line 114
    const-string v4, "zk_not_create_order"

    .line 112
    invoke-static {v2, v3, v4}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/zkunity/google/GooglePlayUtils$4;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-static {v2, v5}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v2, "rs"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x4e21

    if-ne v2, v3, :cond_0

    .line 117
    const-string v2, "google_id"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "sku":Ljava/lang/String;
    const-string v2, "g_tran_id"

    invoke-virtual {p1, v2}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "gameOrderId":Ljava/lang/String;
    iget-object v2, p0, Lcom/zkunity/google/GooglePlayUtils$4;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-virtual {v2, v1, v0}, Lcom/zkunity/google/GooglePlayUtils;->launchPurchaseFlow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
