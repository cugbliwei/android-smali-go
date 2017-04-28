.class public abstract Lcom/paypal/android/sdk/fb;
.super Lcom/paypal/android/sdk/cs;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/dc;Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/cz;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/cz;-><init>(Lcom/paypal/android/sdk/dc;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/paypal/android/sdk/cs;-><init>(Lcom/paypal/android/sdk/cr;Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
