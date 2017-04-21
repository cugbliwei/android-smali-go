.class public Lcom/zkunity/core/ImageSelectDialog;
.super Landroid/app/Dialog;
.source "ImageSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/ImageSelectDialog$OnDataListener;
    }
.end annotation


# instance fields
.field private dataListener:Lcom/zkunity/core/ImageSelectDialog$OnDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cp_imageselect"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ImageSelectDialog;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cp_imageselect"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zkunity/core/ImageSelectDialog;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->init()V

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/ImageSelectDialog;)Lcom/zkunity/core/ImageSelectDialog$OnDataListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zkunity/core/ImageSelectDialog;->dataListener:Lcom/zkunity/core/ImageSelectDialog$OnDataListener;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zkunity/core/ImageSelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_picname_btn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zkunity/core/ImageSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, "btn":Landroid/widget/Button;
    new-instance v1, Lcom/zkunity/core/ImageSelectDialog$1;

    invoke-direct {v1, p0}, Lcom/zkunity/core/ImageSelectDialog$1;-><init>(Lcom/zkunity/core/ImageSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_cameraname_btn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zkunity/core/ImageSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 44
    .restart local v0    # "btn":Landroid/widget/Button;
    new-instance v1, Lcom/zkunity/core/ImageSelectDialog$2;

    invoke-direct {v1, p0}, Lcom/zkunity/core/ImageSelectDialog$2;-><init>(Lcom/zkunity/core/ImageSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/zkunity/core/ImageSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_button_cancel_btn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zkunity/core/ImageSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 54
    .restart local v0    # "btn":Landroid/widget/Button;
    new-instance v1, Lcom/zkunity/core/ImageSelectDialog$3;

    invoke-direct {v1, p0}, Lcom/zkunity/core/ImageSelectDialog$3;-><init>(Lcom/zkunity/core/ImageSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public setOnDataListener(Lcom/zkunity/core/ImageSelectDialog$OnDataListener;)V
    .locals 0
    .param p1, "dataListener"    # Lcom/zkunity/core/ImageSelectDialog$OnDataListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zkunity/core/ImageSelectDialog;->dataListener:Lcom/zkunity/core/ImageSelectDialog$OnDataListener;

    .line 65
    return-void
.end method
