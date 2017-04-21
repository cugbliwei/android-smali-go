.class public Lcom/igexin/push/d/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v2,  ".method public a()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v2,  ".method public a(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/d/i;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v1,  ".method public a(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/i;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v2,  ".method public b()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v2,  ".method public b(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/d/i;->e:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v1,  ".method public b(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/i;->b:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v3,  ".method public c()J"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/igexin/push/d/i;->d:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/i.smali"
    const-string v1,  ".method public c(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/i;->c:Ljava/lang/String;

    return-void
.end method
