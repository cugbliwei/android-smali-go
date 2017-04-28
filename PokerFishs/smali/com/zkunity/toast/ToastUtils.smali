.class public Lcom/zkunity/toast/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static infos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/zkunity/toast/ToastInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static isShowOne:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zkunity/toast/ToastUtils;->isShowOne:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 14
    sput-boolean p0, Lcom/zkunity/toast/ToastUtils;->isShowOne:Z

    return-void
.end method

.method static synthetic access$2()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->showToast()V

    return-void
.end method

.method private static declared-synchronized showToast()V
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/zkunity/toast/ToastUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/zkunity/toast/ToastUtils;->isShowOne:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/zkunity/toast/ToastUtils;->isShowOne:Z

    .line 48
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/zkunity/toast/ToastUtils$1;

    invoke-direct {v2}, Lcom/zkunity/toast/ToastUtils$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static toast(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/toast/ToastCallback;)V
    .locals 2
    .param p0, "titleName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "onOK"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 19
    new-instance v0, Lcom/zkunity/toast/ToastInfo;

    invoke-direct {v0}, Lcom/zkunity/toast/ToastInfo;-><init>()V

    .line 20
    .local v0, "info":Lcom/zkunity/toast/ToastInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zkunity/toast/ToastInfo;->setType(I)V

    .line 21
    invoke-virtual {v0, p0}, Lcom/zkunity/toast/ToastInfo;->setTitleName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/zkunity/toast/ToastInfo;->setContent(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/zkunity/toast/ToastInfo;->setOnOK(Lcom/zkunity/toast/ToastCallback;)V

    .line 24
    sget-object v1, Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->showToast()V

    .line 27
    return-void
.end method

.method public static toast(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/toast/ToastCallback;Lcom/zkunity/toast/ToastCallback;)V
    .locals 2
    .param p0, "titleName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "onOK"    # Lcom/zkunity/toast/ToastCallback;
    .param p3, "onCancel"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 32
    new-instance v0, Lcom/zkunity/toast/ToastInfo;

    invoke-direct {v0}, Lcom/zkunity/toast/ToastInfo;-><init>()V

    .line 33
    .local v0, "info":Lcom/zkunity/toast/ToastInfo;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zkunity/toast/ToastInfo;->setType(I)V

    .line 34
    invoke-virtual {v0, p0}, Lcom/zkunity/toast/ToastInfo;->setTitleName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/zkunity/toast/ToastInfo;->setContent(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p2}, Lcom/zkunity/toast/ToastInfo;->setOnOK(Lcom/zkunity/toast/ToastCallback;)V

    .line 37
    invoke-virtual {v0, p3}, Lcom/zkunity/toast/ToastInfo;->setOnCancel(Lcom/zkunity/toast/ToastCallback;)V

    .line 38
    sget-object v1, Lcom/zkunity/toast/ToastUtils;->infos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/zkunity/toast/ToastUtils;->showToast()V

    .line 41
    return-void
.end method
