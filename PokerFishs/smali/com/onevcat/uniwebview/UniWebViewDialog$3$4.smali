.class Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog$3;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$3;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog$3;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 490
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 491
    .local v0, "editable":Landroid/text/Editable;
    const-string v1, ""

    .line 492
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 496
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3$4;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    iget-object v2, v2, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v3, 0x0

    # setter for: Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 498
    return-void
.end method
