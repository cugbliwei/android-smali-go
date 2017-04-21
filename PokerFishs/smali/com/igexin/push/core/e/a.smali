.class public abstract Lcom/igexin/push/core/e/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Long;

.field protected b:Landroid/app/Activity;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v3,  ".method public constructor <init>()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/e/a;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v2,  ".method public a()Ljava/lang/Long;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/e/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v1,  ".method public a(Landroid/app/Activity;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/e/a;->b:Landroid/app/Activity;

    return-void
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v1,  ".method public a(Ljava/lang/Long;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/e/a;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v1,  ".method public a(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method public abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract a(Landroid/view/Menu;)Z
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/e/a.smali"
    const-string v2,  ".method public b()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method
