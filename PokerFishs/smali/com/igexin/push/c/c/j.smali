.class public Lcom/igexin/push/c/c/j;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/c/c/j.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/c/c/j.smali"
    const-string v1,  ".method public a([B)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()[B
    .locals 8

    const-string v6, "======================== PokerFishs/smali/com/igexin/push/c/c/j.smali"
    const-string v7,  ".method public d()[B"
    invoke-static {v6,v7} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    if-ne v1, v4, :cond_1

    iget-object v0, p0, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iget-byte v2, p0, Lcom/igexin/push/c/c/j;->a:B

    aput-byte v2, v1, v3

    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    array-length v2, v0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    if-eq v1, v5, :cond_0

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
