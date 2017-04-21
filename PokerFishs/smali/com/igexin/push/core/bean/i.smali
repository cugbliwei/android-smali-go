.class public Lcom/igexin/push/core/bean/i;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:B

.field d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;BJ)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v2,  ".method public constructor <init>(JLjava/lang/String;BJ)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/igexin/push/core/bean/i;->a:J

    iput-object p3, p0, Lcom/igexin/push/core/bean/i;->b:Ljava/lang/String;

    iput-byte p4, p0, Lcom/igexin/push/core/bean/i;->c:B

    iput-wide p5, p0, Lcom/igexin/push/core/bean/i;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v3,  ".method public a()J"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/igexin/push/core/bean/i;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v2,  ".method public a(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/core/bean/i;->d:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v2,  ".method public b()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/bean/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()B
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v2,  ".method public c()B"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v0, p0, Lcom/igexin/push/core/bean/i;->c:B

    return v0
.end method

.method public d()J
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/bean/i.smali"
    const-string v3,  ".method public d()J"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/igexin/push/core/bean/i;->d:J

    return-wide v0
.end method
