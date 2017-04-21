.class public Lcom/igexin/push/core/h;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/h.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/h.smali"
    const-string v3,  ".method public run()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/e;

    invoke-direct {v1}, Lcom/igexin/push/core/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/core/e;)V

    :cond_0
    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->b()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
