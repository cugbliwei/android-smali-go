.class public abstract Lcom/igexin/push/e/a/b;
.super Lcom/igexin/a/a/d/a;


# instance fields
.field e:Ljava/lang/String;

.field f:[B

.field g:Ljava/io/InputStream;

.field h:J

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v1,  ".method public constructor <init>(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/e/a/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v1,  ".method public a(Ljava/lang/Exception;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a([B)V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v3,  ".method public a([B)V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/e/a/b;->i:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/a/b;->i:Z

    goto :goto_0
.end method

.method public b([B)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v1,  ".method public b([B)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/e/a/b;->f:[B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v2,  ".method public c()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/e/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v2,  ".method public d()[B"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/e/a/b;->f:[B

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v2,  ".method public e()Ljava/io/InputStream;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/e/a/b;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public f()J
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/e/a/b.smali"
    const-string v3,  ".method public f()J"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/igexin/push/e/a/b;->h:J

    return-wide v0
.end method
