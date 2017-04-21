.class public Lcom/igexin/push/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/a/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/c/a/b.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/c/a/b.smali"
    const-string v2,  ".method public a(I)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/igexin/push/c/a/b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/c/a/b;->b:I

    return-void
.end method
