.class public Lcom/igexin/push/config/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/config/k.smali"
    const-string v2,  ".method static constructor <clinit>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PushSdk"

    sput-object v0, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    return-void
.end method
