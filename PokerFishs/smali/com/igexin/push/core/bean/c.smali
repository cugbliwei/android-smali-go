.class public Lcom/igexin/push/core/bean/c;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/c.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/bean/c.smali"
    const-string v1,  ".method public a([I)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/bean/c;->a:[I

    return-void
.end method

.method public a()[I
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/bean/c.smali"
    const-string v2,  ".method public a()[I"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/bean/c;->a:[I

    return-object v0
.end method
