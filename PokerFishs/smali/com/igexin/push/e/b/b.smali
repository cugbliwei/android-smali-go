.class public Lcom/igexin/push/e/b/b;
.super Lcom/igexin/push/e/b/f;


# instance fields
.field private a:Lcom/igexin/push/core/bean/PushTaskBean;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/b.smali"
    const-string v2,  ".method public constructor <init>(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p4}, Lcom/igexin/push/e/b/f;-><init>(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/e/b/b;->z:Z

    iput-object p1, p0, Lcom/igexin/push/e/b/b;->a:Lcom/igexin/push/core/bean/PushTaskBean;

    iput-object p2, p0, Lcom/igexin/push/e/b/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/e/b/b.smali"
    const-string v4,  ".method protected a()V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/e/b/b;->a:Lcom/igexin/push/core/bean/PushTaskBean;

    iget-object v2, p0, Lcom/igexin/push/e/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/a/e;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/b/b.smali"
    const-string v2,  ".method public b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/b/b.smali"
    const-string v1,  ".method public c()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/igexin/push/e/b/f;->c()V

    return-void
.end method
