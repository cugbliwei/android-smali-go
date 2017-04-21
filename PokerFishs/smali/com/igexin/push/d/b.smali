.class public Lcom/igexin/push/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/igexin/sdk/aidl/IGexinMsgService;

.field private d:Landroid/content/ServiceConnection;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v2,  ".method public a()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/ServiceConnection;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public a(Landroid/content/ServiceConnection;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/b;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method public a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/b;->c:Lcom/igexin/sdk/aidl/IGexinMsgService;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public a(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v2,  ".method public b()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public b(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/igexin/sdk/aidl/IGexinMsgService;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v2,  ".method public c()Lcom/igexin/sdk/aidl/IGexinMsgService;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/b;->c:Lcom/igexin/sdk/aidl/IGexinMsgService;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v1,  ".method public c(Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Landroid/content/ServiceConnection;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v2,  ".method public d()Landroid/content/ServiceConnection;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/b;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/d/b.smali"
    const-string v2,  ".method public e()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/d/b;->e:Ljava/lang/String;

    return-object v0
.end method
