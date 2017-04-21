.class Lcom/igexin/push/core/c/g;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/c/g.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/core/c/f;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/core/c/g.smali"
    const-string v3,  ".method public a()V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/c/g;->a:Lcom/igexin/push/core/c/f;

    iget-object v1, p0, Lcom/igexin/push/core/c/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/igexin/push/f/b;->a()V

    return-void
.end method
