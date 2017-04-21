.class Lcom/igexin/push/config/i;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/config/i.smali"
    const-string v1,  ".method constructor <init>(Lcom/igexin/push/config/a;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/igexin/push/config/i;->a:Lcom/igexin/push/config/a;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/i.smali"
    const-string v4,  ".method public a()V"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igexin/push/config/i;->a:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method
