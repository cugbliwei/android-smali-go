.class Lcom/zkunity/core/SendToQQ$4;
.super Ljava/lang/Object;
.source "SendToQQ.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SendToQQ;->sendBitmapAndWordsToQzone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SendToQQ$4;->val$params:Landroid/os/Bundle;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    # getter for: Lcom/zkunity/core/SendToQQ;->mTen:Lcom/tencent/tauth/Tencent;
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->access$0()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/zkunity/core/SendToQQ$4;->val$params:Landroid/os/Bundle;

    # getter for: Lcom/zkunity/core/SendToQQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;
    invoke-static {}, Lcom/zkunity/core/SendToQQ;->access$1()Lcom/tencent/tauth/IUiListener;

    move-result-object v3

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 162
    return-void
.end method
