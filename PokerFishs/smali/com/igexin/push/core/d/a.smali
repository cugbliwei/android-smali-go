.class public Lcom/igexin/push/core/d/a;
.super Lcom/igexin/push/e/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/d/a.smali"
    const-string v1,  ".method public constructor <init>(Ljava/lang/String;[B)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/igexin/push/core/d/a;->b([B)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/d/a.smali"
    const-string v2,  ".method public final b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10016

    return v0
.end method
