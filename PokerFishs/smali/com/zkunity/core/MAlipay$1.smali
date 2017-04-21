.class Lcom/zkunity/core/MAlipay$1;
.super Landroid/os/Handler;
.source "MAlipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/MAlipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MAlipay;


# direct methods
.method constructor <init>(Lcom/zkunity/core/MAlipay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/MAlipay$1;->this$0:Lcom/zkunity/core/MAlipay;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 94
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 96
    :pswitch_0
    new-instance v0, Lcom/zkunity/core/MAlipay$PayResult;

    iget-object v3, p0, Lcom/zkunity/core/MAlipay$1;->this$0:Lcom/zkunity/core/MAlipay;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/zkunity/core/MAlipay$PayResult;-><init>(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V

    .line 97
    .local v0, "payResult":Lcom/zkunity/core/MAlipay$PayResult;
    invoke-virtual {v0}, Lcom/zkunity/core/MAlipay$PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "resultStatus":Ljava/lang/String;
    const-string v2, "9000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 105
    :cond_0
    const-string v2, "8000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 107
    :cond_1
    const-string v2, "6001"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lcom/zkunity/core/PayManager;->getManager()Lcom/zkunity/core/PayManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zkunity/core/PayManager;->sPayCall(I)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x14d
        :pswitch_0
    .end packed-switch
.end method
