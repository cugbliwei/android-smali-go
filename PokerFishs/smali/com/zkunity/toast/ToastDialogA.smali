.class public Lcom/zkunity/toast/ToastDialogA;
.super Landroid/app/Dialog;
.source "ToastDialogA.java"


# instance fields
.field private content:Ljava/lang/String;

.field private onOK:Lcom/zkunity/toast/ToastCallback;

.field private titleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string v0, "style"

    const-string v1, "toast"

    invoke-static {p1, v0, v1}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/toast/ToastDialogA;)Lcom/zkunity/toast/ToastCallback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zkunity/toast/ToastDialogA;->onOK:Lcom/zkunity/toast/ToastCallback;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialogA;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 38
    const-string v6, "layout"

    const-string v7, "zk_prompt_a"

    .line 37
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialogA;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialogA;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 41
    const-string v6, "string"

    iget-object v7, p0, Lcom/zkunity/toast/ToastDialogA;->titleName:Ljava/lang/String;

    .line 40
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 42
    .local v3, "titleStringId":I
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialogA;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    .line 43
    const-string v7, "zk_prompt_title_a"

    .line 42
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 44
    .local v2, "titleId":I
    invoke-virtual {p0, v2}, Lcom/zkunity/toast/ToastDialogA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialogA;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "zk_prompt_content_a"

    .line 46
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialogA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "contentView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zkunity/toast/ToastDialogA;->content:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/zkunity/toast/ToastDialogA;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    const-string v6, "id"

    const-string v7, "zk_prompt_btn_ok_a"

    .line 50
    invoke-static {v5, v6, v7}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialogA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "btn":Landroid/widget/Button;
    new-instance v5, Lcom/zkunity/toast/ToastDialogA$1;

    invoke-direct {v5, p0}, Lcom/zkunity/toast/ToastDialogA$1;-><init>(Lcom/zkunity/toast/ToastDialogA;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v5, Lcom/zkunity/toast/ToastDialogA$2;

    invoke-direct {v5, p0}, Lcom/zkunity/toast/ToastDialogA$2;-><init>(Lcom/zkunity/toast/ToastDialogA;)V

    invoke-virtual {p0, v5}, Lcom/zkunity/toast/ToastDialogA;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 70
    return-void
.end method

.method public setClickListener(Lcom/zkunity/toast/ToastCallback;)V
    .locals 0
    .param p1, "onOK"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialogA;->onOK:Lcom/zkunity/toast/ToastCallback;

    .line 32
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialogA;->content:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zkunity/toast/ToastDialogA;->titleName:Ljava/lang/String;

    .line 24
    return-void
.end method
