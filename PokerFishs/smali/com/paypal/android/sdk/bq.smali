.class public Lcom/paypal/android/sdk/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/cu;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/a;

.field private final c:Lcom/paypal/android/sdk/bp;

.field private final d:Lcom/paypal/android/sdk/bu;

.field private final e:Lcom/paypal/android/sdk/br;

.field private f:Lcom/paypal/android/sdk/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/bq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/a;Lcom/paypal/android/sdk/bp;Lcom/paypal/android/sdk/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/bq;->b:Lcom/paypal/android/sdk/a;

    iput-object p2, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    new-instance v0, Lcom/paypal/android/sdk/bu;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bq;->d:Lcom/paypal/android/sdk/bu;

    new-instance v0, Lcom/paypal/android/sdk/br;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/br;-><init>(Lcom/paypal/android/sdk/bq;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bq;->e:Lcom/paypal/android/sdk/br;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/bq;Lcom/paypal/android/sdk/ct;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->d:Lcom/paypal/android/sdk/bu;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/paypal/android/sdk/bu;->a(Lcom/paypal/android/sdk/ct;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/cr;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mEnvironment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnvironment.getEndpoints():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bp;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bp;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bp;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/paypal/android/sdk/cr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->f:Lcom/paypal/android/sdk/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cp;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/bw;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->d:Lcom/paypal/android/sdk/bu;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/bu;->a(Lcom/paypal/android/sdk/bw;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cp;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->f:Lcom/paypal/android/sdk/cp;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/bq;->f:Lcom/paypal/android/sdk/cp;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ct;)V
    .locals 2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->l()V

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->f()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/bq;->e:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/br;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->d:Lcom/paypal/android/sdk/bu;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bu;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/ct;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->f:Lcom/paypal/android/sdk/cp;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/cp;->a(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->b:Lcom/paypal/android/sdk/a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bq;->c:Lcom/paypal/android/sdk/bp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bp;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
