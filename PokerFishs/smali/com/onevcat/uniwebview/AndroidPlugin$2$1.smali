.class Lcom/onevcat/uniwebview/AndroidPlugin$2$1;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/AndroidPlugin$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/AndroidPlugin$2;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 158
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeUniWebView(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "keyCode"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewKeyDown"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onDialogShouldCloseByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 149
    const-string v0, "UniWebView"

    const-string v1, "dialog should be closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewDone"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "EvalJavaScriptFinished"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadBegin"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    invoke-static {v0, v1, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dialog"    # Lcom/onevcat/uniwebview/UniWebViewDialog;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "shouldOverride":Z
    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    const/4 v3, 0x1

    .line 145
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    .line 130
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x0

    .line 134
    .local v0, "canResponseScheme":Z
    iget-object v4, p1, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "scheme":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    const/4 v0, 0x1

    .line 140
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 141
    iget-object v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v4, v4, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v5, "ReceivedMessage"

    invoke-static {v4, v5, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x1

    goto :goto_0
.end method
