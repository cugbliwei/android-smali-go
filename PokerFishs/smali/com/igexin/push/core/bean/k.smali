.class public Lcom/igexin/push/core/bean/k;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v2,  ".method public a()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v1,  ".method public a(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v1,  ".method public a(Z)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/k;->b:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v2,  ".method public b()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/bean/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v1,  ".method public b(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/bean/k;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v1,  ".method public b(Z)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/k;->c:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/core/bean/k.smali"
    const-string v4,  ".method public c()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/igexin/push/core/bean/k;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/igexin/push/core/bean/k;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&nettype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?nettype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method