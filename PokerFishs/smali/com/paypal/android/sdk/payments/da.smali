.class final Lcom/paypal/android/sdk/payments/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/gj;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/gj;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/da;->c:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/da;->a:Lcom/paypal/android/sdk/gj;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/da;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/paypal/android/sdk/ft;->aN:Lcom/paypal/android/sdk/ft;

    invoke-static {v1}, Lcom/paypal/android/sdk/fr;->a(Lcom/paypal/android/sdk/ft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/da;->a:Lcom/paypal/android/sdk/gj;

    new-instance v3, Lcom/paypal/android/sdk/payments/db;

    invoke-direct {v3, p0}, Lcom/paypal/android/sdk/payments/db;-><init>(Lcom/paypal/android/sdk/payments/da;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
