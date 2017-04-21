.class public Lcom/igexin/push/core/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/ServiceConnection;

.field private c:Lcom/igexin/sdk/aidl/ICACallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ServiceConnection;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v2,  ".method public a()Landroid/content/ServiceConnection;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/b/a;->b:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public a(Landroid/content/ServiceConnection;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v1,  ".method public a(Landroid/content/ServiceConnection;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/b/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public a(Lcom/igexin/sdk/aidl/ICACallback;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v1,  ".method public a(Lcom/igexin/sdk/aidl/ICACallback;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/b/a;->c:Lcom/igexin/sdk/aidl/ICACallback;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v1,  ".method public a(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/igexin/sdk/aidl/ICACallback;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/a.smali"
    const-string v2,  ".method public b()Lcom/igexin/sdk/aidl/ICACallback;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/b/a;->c:Lcom/igexin/sdk/aidl/ICACallback;

    return-object v0
.end method
