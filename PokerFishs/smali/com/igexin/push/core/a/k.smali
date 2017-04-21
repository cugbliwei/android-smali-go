.class public Lcom/igexin/push/core/a/k;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/a/k.smali"
    const-string v2,  ".method static constructor <clinit>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/a/k.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/d/d;)Z
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/a/k.smali"
    const-string v2,  ".method public a(Lcom/igexin/a/a/d/d;)Z"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/a/k.smali"
    const-string v2,  ".method public a(Ljava/lang/Object;)Z"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/igexin/push/c/c/m;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
