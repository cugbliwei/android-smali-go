.class Lcom/zkunity/core/MAlipay$2;
.super Ljava/lang/Object;
.source "MAlipay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/MAlipay;->activePay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MAlipay;

.field private final synthetic val$payInfos:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/MAlipay$2;->this$0:Lcom/zkunity/core/MAlipay;

    iput-object p2, p0, Lcom/zkunity/core/MAlipay$2;->val$payInfos:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 49
    iget-object v6, p0, Lcom/zkunity/core/MAlipay$2;->val$payInfos:Ljava/lang/String;

    .line 50
    const-string v7, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAKNPWtIoK1vJe+leiusHHzeAZDAtlnDMZDM7fCrADrIcqkRKigVupvL7kXLHb83cesvvYruewuGfCetgV2tAIZCIlOp8dSSeQ6Lge+oUiLpx4aiE9cKgTcbV2FhIGQM3LhGjevuDgfYsPGO8PYkAzyhjdRovrJ5w5GSm1BzXvrgVAgMBAAECgYAXxwgMLTkS5iUad192lNTgudrcgOa0ia3VH8YWW1xIZpAL3WZ3IANCwYoN0iffK0jdxH71nkn1m7hQAvj3bqD0NMEmIDYu2r7ulA7aatN/ETeJnmVvjEMKLaPC/V0HKn/AgZ9fWaprY/HZQRU2fOVhMyBku6e/DPC4jFEBW9NbiQJBANCV8C6CRTPrkmR7LUL0ABNqtLPQimu777RflnZxR/Qi9Lwxl8lEoYE8pcDMJ1d/nu8C2OMZq9t3A+pHvJ4cOlsCQQDIbrkFPAhwQIbhRRWhZho8YDuczQ/PMeOPodeFI5zMD2DngSrSmzP7E5Av9gjNNgwLLmHQc4n8neXi+qaZ/AJPAkBNoTAVryggTbFbMjjDLVqF33XHYnrR480vnU+7Xye/Ze8dx3tNTfypw6+Q1Kpjtzyoia+8vcYnVOEhJXe+hJT3AkA1RdChhopLo6r19xG/u06f24gcrhhUntL4GzEYbxW+2xuLjLZgEeZoBpQdW0yNlp7u3d4btInpfeJbSPm9FdFbAkBncc3/DXICwhaEX0BXJA08BWM592Q1xp7JkDxFtkA0ylhBflLoU8IB9pVJqav6aaf0si6jSN7acVAr3PbeXpHA"

    .line 49
    invoke-static {v6, v7}, Lcom/zkunity/core/SignUtils;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "sign":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 56
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zkunity/core/MAlipay$2;->val$payInfos:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&sign=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 57
    const-string v7, "\"&sign_type=\"RSA\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "payInfo":Ljava/lang/String;
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v6

    .line 60
    invoke-virtual {v6}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v6

    .line 59
    invoke-direct {v0, v6}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 62
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 65
    .local v2, "msg":Landroid/os/Message;
    const/16 v6, 0x14d

    iput v6, v2, Landroid/os/Message;->what:I

    .line 66
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    iget-object v6, p0, Lcom/zkunity/core/MAlipay$2;->this$0:Lcom/zkunity/core/MAlipay;

    # getter for: Lcom/zkunity/core/MAlipay;->payHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/zkunity/core/MAlipay;->access$1(Lcom/zkunity/core/MAlipay;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void

    .line 53
    .end local v0    # "alipay":Lcom/alipay/sdk/app/PayTask;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "payInfo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
