.class final Lcom/paypal/android/sdk/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/ct;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/paypal/android/sdk/cj;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ck;->c:Lcom/paypal/android/sdk/cj;

    iput-object p2, p0, Lcom/paypal/android/sdk/ck;->a:Lcom/paypal/android/sdk/ct;

    iput-object p3, p0, Lcom/paypal/android/sdk/ck;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/ck;->c:Lcom/paypal/android/sdk/cj;

    iget-object v1, p0, Lcom/paypal/android/sdk/ck;->a:Lcom/paypal/android/sdk/ct;

    iget-object v2, p0, Lcom/paypal/android/sdk/ck;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/ck;->c:Lcom/paypal/android/sdk/cj;

    invoke-static {v3}, Lcom/paypal/android/sdk/cj;->a(Lcom/paypal/android/sdk/cj;)Lokhttp3/OkHttpClient;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/co;

    iget-object v5, p0, Lcom/paypal/android/sdk/ck;->c:Lcom/paypal/android/sdk/cj;

    iget-object v6, p0, Lcom/paypal/android/sdk/ck;->a:Lcom/paypal/android/sdk/ct;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/paypal/android/sdk/co;-><init>(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/cj;->a(Lcom/paypal/android/sdk/cj;Lcom/paypal/android/sdk/ct;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
