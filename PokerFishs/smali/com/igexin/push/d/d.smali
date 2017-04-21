.class Lcom/igexin/push/d/d;
.super Lcom/igexin/push/e/b/f;


# instance fields
.field final synthetic a:Lcom/igexin/push/d/c;


# direct methods
.method constructor <init>(Lcom/igexin/push/d/c;J)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/d.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/d/c;J)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/d;->a:Lcom/igexin/push/d/c;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/e/b/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/d/d.smali"
    const-string v3,  ".method protected a()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->b:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/d/d;->a:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    return-void
.end method

.method public b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/d.smali"
    const-string v2,  ".method public b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7f63

    return v0
.end method
