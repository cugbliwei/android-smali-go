.class Lcom/zkunity/core/SendToQQ$1;
.super Ljava/lang/Object;
.source "SendToQQ.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/SendToQQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "1111111111111111111111111"

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 174
    const-string v0, "1111111111111111111111111"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .param p1, "e"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 180
    const-string v0, "1111111111111111111111111"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
