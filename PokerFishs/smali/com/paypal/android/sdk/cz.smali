.class public Lcom/paypal/android/sdk/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/cr;


# instance fields
.field final a:Lcom/paypal/android/sdk/dc;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/dc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/cz;->a:Lcom/paypal/android/sdk/dc;

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/dc;->values()[Lcom/paypal/android/sdk/dc;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/paypal/android/sdk/cz;

    invoke-direct {v5, v4}, Lcom/paypal/android/sdk/cz;-><init>(Lcom/paypal/android/sdk/dc;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cz;->a:Lcom/paypal/android/sdk/dc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/paypal/android/sdk/ca;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cz;->a:Lcom/paypal/android/sdk/dc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->a()Lcom/paypal/android/sdk/ca;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cz;->a:Lcom/paypal/android/sdk/dc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
