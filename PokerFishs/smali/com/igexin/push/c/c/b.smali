.class public Lcom/igexin/push/c/c/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:B

.field public c:B

.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/c/c/b.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/c/c/b.smali"
    const-string v2,  ".method public a([B)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/c/c/b;->a:I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/igexin/push/c/c/b;->d:[B

    array-length v0, p1

    iput v0, p0, Lcom/igexin/push/c/c/b;->a:I

    goto :goto_0
.end method

.method public a()[B
    .locals 7

    const-string v5, "======================== PokerFishs/smali/com/igexin/push/c/c/b.smali"
    const-string v6,  ".method public a()[B"
    invoke-static {v5,v6} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/igexin/push/c/c/b;->d:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/igexin/push/c/c/b;->a:I

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iget v1, p0, Lcom/igexin/push/c/c/b;->a:I

    invoke-static {v1, v0, v4}, Lcom/igexin/a/a/b/g;->b(I[BI)I

    iget-byte v1, p0, Lcom/igexin/push/c/c/b;->b:B

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/igexin/a/a/b/g;->c(I[BI)I

    iget-object v1, p0, Lcom/igexin/push/c/c/b;->d:[B

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/igexin/push/c/c/b;->d:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    goto :goto_0
.end method
