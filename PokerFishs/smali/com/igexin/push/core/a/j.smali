.class Lcom/igexin/push/core/a/j;
.super Lcom/igexin/push/e/b/f;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/a/i;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/a/i;J)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/a/j.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/core/a/i;J)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/a/j;->a:Lcom/igexin/push/core/a/i;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/e/b/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/a/j.smali"
    const-string v2,  ".method protected a()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->i()V

    return-void
.end method

.method public b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/a/j.smali"
    const-string v2,  ".method public b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
