.class Lcom/igexin/push/core/b/f;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/b/e;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/b/e;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/core/b/f.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/core/b/e;Landroid/content/ContentValues;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/core/b/f;->a:Lcom/igexin/push/core/b/e;

    invoke-direct {p0, p2}, Lcom/igexin/push/b/d;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v4, "======================== PokerFishs/smali/com/igexin/push/core/b/f.smali"
    const-string v5,  ".method public a()V"
    invoke-static {v4,v5} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/core/b/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ca"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/push/core/b/f;->e:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
