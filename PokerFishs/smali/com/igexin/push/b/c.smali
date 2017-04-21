.class public Lcom/igexin/push/b/c;
.super Lcom/igexin/a/a/d/a;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/b/c.smali"
    const-string v1,  ".method public constructor <init>(I)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    iput p1, p0, Lcom/igexin/push/b/c;->a:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/b/c.smali"
    const-string v2,  ".method public final b()I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10006

    return v0
.end method
