.class public Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;
.super Landroid/app/Activity;
.source "UniWebViewCustomViewActivity.java"


# static fields
.field public static currentFullScreenClient:Lcom/onevcat/uniwebview/UniWebChromeClient;

.field public static customViewActivity:Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    .line 25
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;->currentFullScreenClient:Lcom/onevcat/uniwebview/UniWebChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->onHideCustomView()V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;->finish()V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sput-object p0, Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;->customViewActivity:Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;

    .line 19
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;->currentFullScreenClient:Lcom/onevcat/uniwebview/UniWebChromeClient;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->ToggleFullScreen(Lcom/onevcat/uniwebview/UniWebViewCustomViewActivity;)V

    .line 20
    return-void
.end method
