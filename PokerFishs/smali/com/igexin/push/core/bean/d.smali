.class public Lcom/igexin/push/core/bean/d;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/d.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/bean/d.smali"
    const-string v3,  ".method public a()J"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/igexin/push/core/bean/d;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/d.smali"
    const-string v2,  ".method public a(J)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/igexin/push/core/bean/d;->a:J

    return-void
.end method
