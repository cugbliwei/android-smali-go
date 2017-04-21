.class public Lcom/igexin/push/core/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/igexin/push/core/b/b;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/b.smali"
    const-string v2,  ".method public constructor <init>()V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/b/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/b/b;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/b.smali"
    const-string v2,  ".method public static a()Lcom/igexin/push/core/b/b;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/core/b/b;->a:Lcom/igexin/push/core/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/b/b;

    invoke-direct {v0}, Lcom/igexin/push/core/b/b;-><init>()V

    sput-object v0, Lcom/igexin/push/core/b/b;->a:Lcom/igexin/push/core/b/b;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/b/b;->a:Lcom/igexin/push/core/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/igexin/push/core/b/a;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/b.smali"
    const-string v2,  ".method public a(Ljava/lang/String;)Lcom/igexin/push/core/b/a;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/b/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/b/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/core/b/a;)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/core/b/b.smali"
    const-string v2,  ".method public a(Ljava/lang/String;Lcom/igexin/push/core/b/a;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/b/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
