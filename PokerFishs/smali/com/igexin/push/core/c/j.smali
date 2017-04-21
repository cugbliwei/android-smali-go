.class Lcom/igexin/push/core/c/j;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/c/j.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/core/c/f;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/c/j;->a:Lcom/igexin/push/core/c/f;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/core/c/j.smali"
    const-string v5,  ".method public a()V"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xd

    sget-object v3, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
