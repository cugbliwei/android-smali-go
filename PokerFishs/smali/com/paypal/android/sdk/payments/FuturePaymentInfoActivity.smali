.class public final Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/paypal/android/sdk/payments/ah;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.paypal.details.scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ag;

    const v1, 0x103006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v1, Lcom/paypal/android/sdk/payments/ah;

    invoke-direct {v1, p0, v0}, Lcom/paypal/android/sdk/payments/ah;-><init>(Landroid/content/Context;Lcom/paypal/android/sdk/payments/ag;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/ah;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/ah;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ah;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/ah;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ah;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/ft;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/ah;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ah;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/ft;->d:Lcom/paypal/android/sdk/ft;

    invoke-static {v1}, Lcom/paypal/android/sdk/fr;->a(Lcom/paypal/android/sdk/ft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/ah;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ah;->c:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/af;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/af;-><init>(Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method