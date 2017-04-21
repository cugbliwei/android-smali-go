.class public Lcom/igexin/push/c/b;
.super Lcom/igexin/a/a/d/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/c/b.smali"
    const-string v2,  ".method public constructor <init>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/a/a/d/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/c/b.smali"
    const-string v1,  ".method public a()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/igexin/a/a/d/b;->a()V

    return-void
.end method

.method public a(Lcom/igexin/a/a/d/d;)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/c/b.smali"
    const-string v2,  ".method public a(Lcom/igexin/a/a/d/d;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/igexin/push/core/g;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/e/b/c;->g()Lcom/igexin/push/e/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b/c;->i()V

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/push/c/b;->a()V

    return-void
.end method
