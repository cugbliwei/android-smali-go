.class public Lcom/igexin/push/c/c/l;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/c/c/l.smali"
    const-string v2,  ".method public constructor <init>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    const/16 v0, 0x24

    iput v0, p0, Lcom/igexin/push/c/c/l;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/push/c/c/l;->j:B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/c/c/l.smali"
    const-string v3,  ".method public a([B)V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/c/l;->a:J

    return-void
.end method

.method public d()[B
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/c/c/l.smali"
    const-string v5,  ".method public d()[B"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v2, p0, Lcom/igexin/push/c/c/l;->a:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    return-object v0
.end method