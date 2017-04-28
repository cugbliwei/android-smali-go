.class final Lcom/paypal/android/sdk/payments/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/an;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/an;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/an;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/an;->c:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0, p2}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/LoginActivity;I)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/an;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/an;->a:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/ge;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/an;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/an;->c:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->e(Lcom/paypal/android/sdk/payments/LoginActivity;)Lcom/paypal/android/sdk/ga;

    move-result-object v0

    iget-object v1, v0, Lcom/paypal/android/sdk/ga;->o:Lcom/paypal/android/sdk/gf;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/an;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/an;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/gf;->a(Ljava/lang/String;)V

    return-void
.end method
