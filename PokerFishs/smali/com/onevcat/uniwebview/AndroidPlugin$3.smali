.class final Lcom/onevcat/uniwebview/AndroidPlugin$3;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewLoad(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$3;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    const-string v1, "UniWebView"

    const-string v2, "_UniWebViewLoad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$3;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 179
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method
