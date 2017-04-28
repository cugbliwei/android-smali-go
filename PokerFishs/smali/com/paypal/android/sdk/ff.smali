.class public final Lcom/paypal/android/sdk/ff;
.super Lcom/paypal/android/sdk/fn;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/dc;->j:Lcom/paypal/android/sdk/dc;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/fn;-><init>(Lcom/paypal/android/sdk/dc;Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/paypal/android/sdk/ff;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ff;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/ff;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/ff;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "mockDeleteCreditCardResponse"

    return-object v0
.end method
