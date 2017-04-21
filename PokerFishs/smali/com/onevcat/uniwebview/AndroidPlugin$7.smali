.class final Lcom/onevcat/uniwebview/AndroidPlugin$7;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    const-string v1, "UniWebView"

    const-string v2, "_UniWebViewShow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$7;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 232
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setShow(Z)V

    .line 235
    :cond_0
    return-void
.end method
