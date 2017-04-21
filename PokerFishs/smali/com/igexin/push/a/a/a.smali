.class public Lcom/igexin/push/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/e/b/d;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/a/a/a.smali"
    const-string v3,  ".method public constructor <init>()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/a/a/a;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/a/a/a.smali"
    const-string v3,  ".method public a()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v1, Lcom/igexin/push/core/a;->j:I

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/a/a/a.smali"
    const-string v2,  ".method public a(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/a/a/a;->a:J

    return-void
.end method

.method public b()Z
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/a/a/a.smali"
    const-string v5,  ".method public b()Z"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/a;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
