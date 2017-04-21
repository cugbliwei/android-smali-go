.class Lcom/onevcat/uniwebview/UniWebViewDialog$2;
.super Landroid/webkit/WebViewClient;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 356
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;
    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z
    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$202(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 360
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_transparent:Z
    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->updateTransparent(Z)V

    .line 361
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 362
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 343
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 345
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # invokes: Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$100(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x1

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z
    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$202(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 349
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 351
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 367
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 368
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;
    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z
    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$202(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    .line 372
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 382
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 384
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    # getter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
