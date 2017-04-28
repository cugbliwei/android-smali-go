.class public Lcom/paypal/android/sdk/fg;
.super Lcom/paypal/android/sdk/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/fg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bt;)V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/cz;

    sget-object v1, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/dc;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/cz;-><init>(Lcom/paypal/android/sdk/dc;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/bs;-><init>(Lcom/paypal/android/sdk/cr;Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bt;)V

    return-void
.end method
