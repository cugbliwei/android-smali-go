.class public Lcom/igexin/push/config/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/config/j;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/config/j.smali"
    const-string v1,  ".method private constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/config/j;
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/config/j.smali"
    const-string v3,  ".method public static declared-synchronized a()Lcom/igexin/push/config/j;"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/igexin/push/config/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/igexin/push/config/j;->a:Lcom/igexin/push/config/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/config/j;

    invoke-direct {v0}, Lcom/igexin/push/config/j;-><init>()V

    sput-object v0, Lcom/igexin/push/config/j;->a:Lcom/igexin/push/config/j;

    :cond_0
    sget-object v0, Lcom/igexin/push/config/j;->a:Lcom/igexin/push/config/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/config/j.smali"
    const-string v2,  ".method public b()Z"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/config/o;->a()V

    invoke-static {}, Lcom/igexin/push/config/m;->a()V

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/config/m;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
