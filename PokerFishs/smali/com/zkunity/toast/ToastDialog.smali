.class public Lcom/zkunity/toast/ToastDialog;
.super Landroid/app/Dialog;
.source "ToastDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private onCancel:Lcom/zkunity/toast/ToastCallback;

.field private onOK:Lcom/zkunity/toast/ToastCallback;

.field private titleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "style"

    const-string v1, "toast"

    invoke-static {p1, v0, v1}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/toast/ToastDialog;)Lcom/zkunity/toast/ToastCallback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialog;->onCancel:Lcom/zkunity/toast/ToastCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zkunity/toast/ToastDialog;)Lcom/zkunity/toast/ToastCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialog;->onOK:Lcom/zkunity/toast/ToastCallback;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 40
    const-string v6, "layout"

    const-string v7, "zk_prompt"

    .line 39
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialog;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 43
    const-string v6, "string"

    iget-object v7, p0, Lcom/zkunity/toast/ToastDialog;->titleName:Ljava/lang/String;

    .line 42
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 44
    .local v3, "titleStringId":I
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    .line 45
    const-string v7, "zk_prompt_title"

    .line 44
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    .local v2, "titleId":I
    invoke-virtual {p0, v2}, Lcom/zkunity/toast/ToastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 47
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "zk_prompt_content"

    .line 49
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "contentView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zkunity/toast/ToastDialog;->content:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 56
    const-string v6, "id"

    const-string v7, "zk_prompt_btn_cancel"

    .line 55
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 57
    .restart local v0    # "btn":Landroid/widget/Button;
    new-instance v5, Lcom/zkunity/toast/ToastDialog$1;

    invoke-direct {v5, p0}, Lcom/zkunity/toast/ToastDialog$1;-><init>(Lcom/zkunity/toast/ToastDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 67
    const-string v6, "id"

    const-string v7, "zk_prompt_btn_ok"

    .line 66
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 68
    .restart local v0    # "btn":Landroid/widget/Button;
    new-instance v5, Lcom/zkunity/toast/ToastDialog$2;

    invoke-direct {v5, p0}, Lcom/zkunity/toast/ToastDialog$2;-><init>(Lcom/zkunity/toast/ToastDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v5, Lcom/zkunity/toast/ToastDialog$3;

    invoke-direct {v5, p0}, Lcom/zkunity/toast/ToastDialog$3;-><init>(Lcom/zkunity/toast/ToastDialog;)V

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    return-void
.end method

.method public setClickListeners(Lcom/zkunity/toast/ToastCallback;Lcom/zkunity/toast/ToastCallback;)V
    .locals 0
    .param p1, "onOK"    # Lcom/zkunity/toast/ToastCallback;
    .param p2, "onCancel"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialog;->onOK:Lcom/zkunity/toast/ToastCallback;

    .line 33
    iput-object p2, p0, Lcom/zkunity/toast/ToastDialog;->onCancel:Lcom/zkunity/toast/ToastCallback;

    .line 34
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialog;->content:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialog;->titleName:Ljava/lang/String;

    .line 25
    return-void
.end method
