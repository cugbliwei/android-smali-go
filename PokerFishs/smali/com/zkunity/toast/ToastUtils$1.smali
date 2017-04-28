.class Lcom/zkunity/toast/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/toast/ToastUtils;->showToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    # getter for: Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    # getter for: Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zkunity/toast/ToastInfo;

    .line 54
    .local v1, "info":Lcom/zkunity/toast/ToastInfo;
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 55
    new-instance v0, Lcom/zkunity/toast/ToastDialogA;

    .line 56
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 55
    invoke-direct {v0, v2}, Lcom/zkunity/toast/ToastDialogA;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "dialog":Lcom/zkunity/toast/ToastDialogA;
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getTitleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialogA;->setTitle(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialogA;->setContent(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getOnOK()Lcom/zkunity/toast/ToastCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialogA;->setClickListener(Lcom/zkunity/toast/ToastCallback;)V

    .line 60
    invoke-virtual {v0, v4}, Lcom/zkunity/toast/ToastDialogA;->setCancelable(Z)V

    .line 61
    invoke-virtual {v0, v4}, Lcom/zkunity/toast/ToastDialogA;->setCanceledOnTouchOutside(Z)V

    .line 62
    new-instance v2, Lcom/zkunity/toast/ToastUtils$1$1;

    invoke-direct {v2, p0}, Lcom/zkunity/toast/ToastUtils$1$1;-><init>(Lcom/zkunity/toast/ToastUtils$1;)V

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialogA;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    invoke-virtual {v0}, Lcom/zkunity/toast/ToastDialogA;->show()V

    goto :goto_0

    .line 70
    .end local v0    # "dialog":Lcom/zkunity/toast/ToastDialogA;
    :cond_2
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 71
    new-instance v0, Lcom/zkunity/toast/ToastDialog;

    .line 72
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 71
    invoke-direct {v0, v2}, Lcom/zkunity/toast/ToastDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "dialog":Lcom/zkunity/toast/ToastDialog;
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getTitleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialog;->setTitle(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialog;->setContent(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getOnOK()Lcom/zkunity/toast/ToastCallback;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zkunity/toast/ToastInfo;->getOnCancel()Lcom/zkunity/toast/ToastCallback;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/zkunity/toast/ToastDialog;->setClickListeners(Lcom/zkunity/toast/ToastCallback;Lcom/zkunity/toast/ToastCallback;)V

    .line 76
    invoke-virtual {v0, v4}, Lcom/zkunity/toast/ToastDialog;->setCancelable(Z)V

    .line 77
    invoke-virtual {v0, v4}, Lcom/zkunity/toast/ToastDialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    new-instance v2, Lcom/zkunity/toast/ToastUtils$1$2;

    invoke-direct {v2, p0}, Lcom/zkunity/toast/ToastUtils$1$2;-><init>(Lcom/zkunity/toast/ToastUtils$1;)V

    invoke-virtual {v0, v2}, Lcom/zkunity/toast/ToastDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    invoke-virtual {v0}, Lcom/zkunity/toast/ToastDialog;->show()V

    goto :goto_0
.end method
