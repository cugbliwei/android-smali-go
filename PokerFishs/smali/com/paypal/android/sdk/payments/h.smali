.class final Lcom/paypal/android/sdk/payments/h;
.super Lcom/paypal/android/sdk/payments/i;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/payments/ci;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/payments/ci;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/i;-><init>(Lcom/paypal/android/sdk/payments/ci;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "msdk"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->a:Lcom/paypal/android/sdk/ev;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ev;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/ev;

    invoke-direct {v1}, Lcom/paypal/android/sdk/ev;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->a:Lcom/paypal/android/sdk/ev;

    :cond_0
    const-string v0, "v49"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v51"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->c()Lcom/paypal/android/sdk/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bq;->d()Lcom/paypal/android/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v52"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/ey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/sdk/ey;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v53"

    sget-object v1, Lcom/paypal/android/sdk/ey;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clid"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->c()Lcom/paypal/android/sdk/bq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/bq;->d()Lcom/paypal/android/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/paypal/android/sdk/bt;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dd;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dd;->a:Lcom/paypal/android/sdk/ev;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ev;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/paypal/android/sdk/bt;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/ci;->a(Lcom/paypal/android/sdk/bt;)V

    return-void
.end method

.method protected final a(Ljava/util/Map;Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "g"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/ey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "srce"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sv"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bchn"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adte"

    const-string v1, "FALSE"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bzsr"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calc"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p4}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "prid"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "e"

    invoke-virtual {p2}, Lcom/paypal/android/sdk/ez;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cl"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string v0, "im"

    goto :goto_0
.end method
