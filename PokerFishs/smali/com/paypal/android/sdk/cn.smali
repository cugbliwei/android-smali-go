.class final Lcom/paypal/android/sdk/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final a:Lcom/paypal/android/sdk/ct;

.field private synthetic b:Lcom/paypal/android/sdk/cj;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/cn;-><init>(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ct;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PayPal Debug-ID: %s [%s, %s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    invoke-static {v4}, Lcom/paypal/android/sdk/cj;->d(Lcom/paypal/android/sdk/cj;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    invoke-static {v5}, Lcom/paypal/android/sdk/cj;->e(Lcom/paypal/android/sdk/cj;)Lcom/paypal/android/sdk/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/paypal/android/sdk/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    invoke-static {v5}, Lcom/paypal/android/sdk/cj;->e(Lcom/paypal/android/sdk/cj;)Lcom/paypal/android/sdk/b;

    const-string v5, "release"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ct;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "PayPal-Debug-Id"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/paypal/android/sdk/cj;->a(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;Lokhttp3/Response;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    :try_start_0
    const-string v0, "paypal-debug-id"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/ct;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/paypal/android/sdk/cj;->a(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;Lokhttp3/Response;Ljava/io/IOException;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ct;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/cj;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ct;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success. response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ct;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ct;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-static {v0}, Lcom/paypal/android/sdk/cj;->a(Lcom/paypal/android/sdk/ct;)V

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->b:Lcom/paypal/android/sdk/cj;

    invoke-static {v0}, Lcom/paypal/android/sdk/cj;->c(Lcom/paypal/android/sdk/cj;)Lcom/paypal/android/sdk/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/ct;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/cu;->a(Lcom/paypal/android/sdk/ct;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method