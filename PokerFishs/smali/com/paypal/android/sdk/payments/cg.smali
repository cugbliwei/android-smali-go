.class final Lcom/paypal/android/sdk/payments/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/eb;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/cg;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/dt;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, v0

    new-instance v1, Lcom/paypal/android/sdk/dt;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/paypal/android/sdk/dt;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fa;)V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->j:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fa;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fa;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fa;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/ct;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/df;->a(Lcom/paypal/android/sdk/dt;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->d:Lcom/paypal/android/sdk/dj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/di;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dd;->d:Lcom/paypal/android/sdk/dj;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Lcom/paypal/android/sdk/dj;)V

    goto :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/fc;)V
    .locals 3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->v:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fd;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fe;)V
    .locals 11

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->j:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/ct;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->A()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/bq;

    move-result-object v10

    new-instance v0, Lcom/paypal/android/sdk/fp;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/bq;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v3

    iget-object v3, v3, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->w()I

    move-result v8

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->x()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/fp;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    goto :goto_1
.end method

.method public final a(Lcom/paypal/android/sdk/ff;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ff;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fh;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fi;)V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fi;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fj;)V
    .locals 5

    const-wide/16 v0, 0x348

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-wide v2, p1, Lcom/paypal/android/sdk/fj;->f:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    :goto_0
    iget-object v2, p1, Lcom/paypal/android/sdk/fj;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fj;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/paypal/android/sdk/fj;->e:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/paypal/android/sdk/payments/cg;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/dt;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->f:Lcom/paypal/android/sdk/ea;

    new-instance v0, Lcom/paypal/android/sdk/dj;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dj;-><init>()V

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/em;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/em;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dj;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/dl;->a:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dj;->a(Lcom/paypal/android/sdk/dl;)V

    :goto_2
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v1

    iput-object v0, v1, Lcom/paypal/android/sdk/dd;->d:Lcom/paypal/android/sdk/dj;

    iget-object v0, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/em;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/em;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->l:Lcom/paypal/android/sdk/ez;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fj;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/dv;

    iget-object v2, p1, Lcom/paypal/android/sdk/fj;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/paypal/android/sdk/fj;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/paypal/android/sdk/dv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->e:Lcom/paypal/android/sdk/dv;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/em;->d()Lcom/paypal/android/sdk/es;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dj;->a(Lcom/paypal/android/sdk/es;)V

    sget-object v1, Lcom/paypal/android/sdk/dl;->b:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dj;->a(Lcom/paypal/android/sdk/dl;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/em;->d()Lcom/paypal/android/sdk/es;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/db;->a()Lcom/paypal/android/sdk/db;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/es;->a(Lcom/paypal/android/sdk/er;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->m:Lcom/paypal/android/sdk/ez;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fj;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/fo;)V
    .locals 6

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fo;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/fo;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/paypal/android/sdk/fo;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/paypal/android/sdk/payments/cg;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/dt;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-boolean v1, p1, Lcom/paypal/android/sdk/fo;->d:Z

    iput-boolean v1, v0, Lcom/paypal/android/sdk/dd;->h:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/ce;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/ce;)Lcom/paypal/android/sdk/payments/ce;

    :cond_0
    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fp;)V
    .locals 9

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/dq;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fp;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->v()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->x()I

    move-result v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->y()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/dq;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/di;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/paypal/android/sdk/di;->a(Lcom/paypal/android/sdk/dq;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fa;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fa;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApproveAndExecuteSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fc;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConsentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fd;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fd;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fe;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreditCardPaymentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fh;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fh;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfoRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fi;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fi;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginChallengeRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fj;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginRequest Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "paypal.sdk"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p1, Lcom/paypal/android/sdk/fj;->a:Lcom/paypal/android/sdk/em;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fj;->b:Z

    invoke-virtual {v0}, Lcom/paypal/android/sdk/em;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->l:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/di;->b()V

    iget-boolean v0, p1, Lcom/paypal/android/sdk/fj;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fj;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/ea;

    iget-object v2, p1, Lcom/paypal/android/sdk/fj;->i:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/ea;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->f:Lcom/paypal/android/sdk/ea;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ez;->m:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/paypal/android/sdk/fo;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fp;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenizeCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cg;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method
