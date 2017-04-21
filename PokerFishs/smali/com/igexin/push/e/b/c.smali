.class public Lcom/igexin/push/e/b/c;
.super Lcom/igexin/push/e/b/f;


# static fields
.field private static a:Lcom/igexin/push/e/b/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v3,  ".method public constructor <init>()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/f;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/b/c;->z:Z

    return-void
.end method

.method public static g()Lcom/igexin/push/e/b/c;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v2,  ".method public static g()Lcom/igexin/push/e/b/c;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/e/b/c;->a:Lcom/igexin/push/e/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/e/b/c;

    invoke-direct {v0}, Lcom/igexin/push/e/b/c;-><init>()V

    sput-object v0, Lcom/igexin/push/e/b/c;->a:Lcom/igexin/push/e/b/c;

    :cond_0
    sget-object v0, Lcom/igexin/push/e/b/c;->a:Lcom/igexin/push/e/b/c;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v3,  ".method protected a()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->B()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->E:J

    sget-boolean v0, Lcom/igexin/push/core/g;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "heartbeatReq"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->f()I

    :goto_0
    return-void

    :cond_0
    const-string v0, "HeartBeatTimerTask doTaskMethod isOnline = false, refresh wait time !!!!!!"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/e/b/c;->h()V

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v2,  ".method public final b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x7ffffffa

    return v0
.end method

.method public c()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v2,  ".method public c()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/igexin/push/e/b/f;->c()V

    iget-boolean v0, p0, Lcom/igexin/push/e/b/c;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/push/e/b/c;->h()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v1,  ".method public d()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()V
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v4,  ".method public h()V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/c;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/b/c.smali"
    const-string v1,  ".method public i()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
