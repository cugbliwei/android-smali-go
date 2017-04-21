.class Lcom/igexin/push/core/b/g;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/b/e;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/b/e;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/g.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/core/b/e;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/b/g;->a:Lcom/igexin/push/core/b/e;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/core/b/g.smali"
    const-string v4,  ".method public a()V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/push/core/b/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ca"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
