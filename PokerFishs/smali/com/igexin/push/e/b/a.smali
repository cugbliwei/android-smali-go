.class public Lcom/igexin/push/e/b/a;
.super Lcom/igexin/push/e/b/f;


# static fields
.field private static b:Lcom/igexin/push/e/b/a;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v3,  ".method private constructor <init>()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x57e40

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/f;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/b/a;->z:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b/a;->a:Ljava/util/List;

    return-void
.end method

.method public static g()Lcom/igexin/push/e/b/a;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v2,  ".method public static g()Lcom/igexin/push/e/b/a;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/e/b/a;->b:Lcom/igexin/push/e/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/e/b/a;

    invoke-direct {v0}, Lcom/igexin/push/e/b/a;-><init>()V

    sput-object v0, Lcom/igexin/push/e/b/a;->b:Lcom/igexin/push/e/b/a;

    :cond_0
    sget-object v0, Lcom/igexin/push/e/b/a;->b:Lcom/igexin/push/e/b/a;

    return-object v0
.end method

.method private h()V
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v4,  ".method private h()V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x57e40

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/a;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v5,  ".method protected a()V"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->B()V

    iget-object v0, p0, Lcom/igexin/push/e/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/b/d;

    invoke-interface {v0}, Lcom/igexin/push/e/b/d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/igexin/push/e/b/d;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/igexin/push/e/b/d;->a(J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/igexin/push/e/b/a;->h()V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/igexin/push/e/b/d;)Z
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v2,  ".method public a(Lcom/igexin/push/e/b/d;)Z"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/e/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/e/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/e/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/a.smali"
    const-string v2,  ".method public b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
