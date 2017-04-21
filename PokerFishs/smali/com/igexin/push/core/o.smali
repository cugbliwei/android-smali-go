.class public Lcom/igexin/push/core/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/igexin/sdk/aidl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/o.smali"
    const-string v2,  ".method static constructor <clinit>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/o;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/igexin/sdk/aidl/c;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/o.smali"
    const-string v2,  ".method public static a()Lcom/igexin/sdk/aidl/c;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/p;

    invoke-direct {v0}, Lcom/igexin/push/core/p;-><init>()V

    sput-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/o;->b:Lcom/igexin/sdk/aidl/c;

    return-object v0
.end method
