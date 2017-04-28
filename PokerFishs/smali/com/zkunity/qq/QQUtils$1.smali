.class Lcom/zkunity/qq/QQUtils$1;
.super Ljava/lang/Object;
.source "QQUtils.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/qq/QQUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/qq/QQUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/qq/QQUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/qq/QQUtils$1;->this$0:Lcom/zkunity/qq/QQUtils;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "1111111111111111111111111"

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 178
    const-string v0, "1111111111111111111111111"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .param p1, "e"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 184
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

    .line 185
    return-void
.end method
