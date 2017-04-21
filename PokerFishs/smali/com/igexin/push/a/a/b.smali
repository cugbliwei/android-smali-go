.class public Lcom/igexin/push/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/e/b/d;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/a/a/b.smali"
    const-string v3,  ".method public constructor <init>()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/a/a/b;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v6, "======================== PokerFishs/smali/com/igexin/push/a/a/b.smali"
    const-string v7,  ".method public a()V"
    invoke-static {v6,v7} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->z()V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->r()V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->s()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v0, Lcom/igexin/push/core/g;->J:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/a/e;->a(J)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    const-string v4, "ccs"

    invoke-virtual {v1, v4}, Lcom/igexin/push/core/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    sput-wide v2, Lcom/igexin/push/core/g;->J:J

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->y()V

    :cond_1
    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->A()V

    return-void
.end method

.method public a(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/a/a/b.smali"
    const-string v2,  ".method public a(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/a/a/b;->a:J

    return-void
.end method

.method public b()Z
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/a/a/b.smali"
    const-string v5,  ".method public b()Z"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/b;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
