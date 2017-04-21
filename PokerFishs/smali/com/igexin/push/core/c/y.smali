.class final enum Lcom/igexin/push/core/c/y;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/push/core/c/y;

.field public static final enum b:Lcom/igexin/push/core/c/y;

.field public static final enum c:Lcom/igexin/push/core/c/y;

.field private static final synthetic d:[Lcom/igexin/push/core/c/y;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "======================== PokerFishs/smali/com/igexin/push/core/c/y.smali"
    const-string v6,  ".method static constructor <clinit>()V"
    invoke-static {v5,v6} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/push/core/c/y;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/core/c/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/y;->a:Lcom/igexin/push/core/c/y;

    new-instance v0, Lcom/igexin/push/core/c/y;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v3}, Lcom/igexin/push/core/c/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/y;->b:Lcom/igexin/push/core/c/y;

    new-instance v0, Lcom/igexin/push/core/c/y;

    const-string v1, "TRY_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/igexin/push/core/c/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/y;->c:Lcom/igexin/push/core/c/y;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/igexin/push/core/c/y;

    sget-object v1, Lcom/igexin/push/core/c/y;->a:Lcom/igexin/push/core/c/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/push/core/c/y;->b:Lcom/igexin/push/core/c/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/push/core/c/y;->c:Lcom/igexin/push/core/c/y;

    aput-object v1, v0, v4

    sput-object v0, Lcom/igexin/push/core/c/y;->d:[Lcom/igexin/push/core/c/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/c/y.smali"
    const-string v1,  ".method private constructor <init>(Ljava/lang/String;I)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/push/core/c/y;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/c/y.smali"
    const-string v2,  ".method public static a()[Lcom/igexin/push/core/c/y;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/core/c/y;->d:[Lcom/igexin/push/core/c/y;

    invoke-virtual {v0}, [Lcom/igexin/push/core/c/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/core/c/y;

    return-object v0
.end method
