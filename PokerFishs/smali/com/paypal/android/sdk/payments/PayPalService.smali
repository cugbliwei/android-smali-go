.class public final Lcom/paypal/android/sdk/payments/PayPalService;
.super Landroid/app/Service;


# static fields
.field public static final EXTRA_PAYPAL_CONFIGURATION:Ljava/lang/String; = "com.paypal.android.sdk.paypalConfiguration"

.field static final a:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/lang/String;

.field private static t:Landroid/content/Intent;


# instance fields
.field b:Lcom/paypal/android/sdk/dq;

.field private d:Lcom/paypal/android/sdk/b;

.field private e:Lcom/paypal/android/sdk/dd;

.field private f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private g:Z

.field private h:Lcom/paypal/android/sdk/payments/a;

.field private i:Lcom/paypal/android/sdk/payments/a;

.field private j:Lcom/paypal/android/sdk/payments/i;

.field private k:Ljava/lang/String;

.field private l:Lcom/paypal/android/sdk/bq;

.field private m:Lcom/paypal/android/sdk/payments/ce;

.field private n:Ljava/lang/String;

.field private o:Lcom/paypal/android/sdk/a;

.field private p:Lcom/paypal/android/sdk/di;

.field private q:Ljava/util/List;

.field private r:Z

.field private s:Z

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/sdk/cy;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/h;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/h;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    new-instance v0, Lcom/paypal/android/sdk/payments/ca;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ca;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/paypal/android/sdk/payments/cd;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cd;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-void
.end method

.method private A()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static B()Lcom/paypal/android/sdk/dd;
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/dd;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dd;-><init>()V

    return-object v0
.end method

.method private C()V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/payments/cb;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cb;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/bp;
    .locals 6

    new-instance v1, Lcom/paypal/android/sdk/bp;

    invoke-direct {v1, p0, p1}, Lcom/paypal/android/sdk/bp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not start with \'https://\', ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not end with a slash, adding one."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/cz;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cr;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bp;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/paypal/android/sdk/cr;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/paypal/android/sdk/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/ce;)Lcom/paypal/android/sdk/payments/ce;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const/4 v4, 0x1

    sput-object p1, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "init:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_0

    const-string v0, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing EXTRA_PAYPAL_CONFIGURATION. To avoid this error, set EXTRA_PAYPAL_CONFIGURATION in both PayPalService, and the initializing activity."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras invalid.  Please check the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/paypal/android/sdk/payments/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Credit Cards cannot be accepted without card.io dependency. Please check the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/bo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "https://api-m.paypal.com/v1/"

    :goto_0
    new-instance v5, Lcom/paypal/android/sdk/di;

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v7}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/paypal/android/sdk/di;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    invoke-static {v3, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/bp;

    move-result-object v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_2
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_3
    iput-boolean v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    :cond_3
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    :cond_4
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v6, v4

    :goto_4
    new-instance v4, Lcom/paypal/android/sdk/bq;

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v8

    invoke-direct {v4, v7, v5, v8}, Lcom/paypal/android/sdk/bq;-><init>(Lcom/paypal/android/sdk/a;Lcom/paypal/android/sdk/bp;Lcom/paypal/android/sdk/b;)V

    iput-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v5, Lcom/paypal/android/sdk/ec;

    new-instance v7, Lcom/paypal/android/sdk/payments/cg;

    invoke-direct {v7, p0, v2}, Lcom/paypal/android/sdk/payments/cg;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V

    invoke-direct {v5, v7}, Lcom/paypal/android/sdk/ec;-><init>(Lcom/paypal/android/sdk/eb;)V

    invoke-virtual {v4, v5}, Lcom/paypal/android/sdk/bq;->a(Lcom/paypal/android/sdk/bw;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bo;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/paypal/android/sdk/fq;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/paypal/android/sdk/fq;-><init>(Lcom/paypal/android/sdk/cu;IZI)V

    move-object v0, v2

    :goto_5
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v2, Lcom/paypal/android/sdk/cp;

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-direct {v2, v3, v0}, Lcom/paypal/android/sdk/cp;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/cq;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/bq;->a(Lcom/paypal/android/sdk/cp;)V

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/fr;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->clearAllUserData(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ez;->a:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    return-void

    :cond_8
    invoke-static {v3}, Lcom/paypal/android/sdk/bo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://api-m.sandbox.paypal.com/v1/"

    goto/16 :goto_0

    :cond_9
    invoke-static {v3}, Lcom/paypal/android/sdk/bo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid environment selected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto/16 :goto_2

    :cond_e
    move v3, v4

    goto/16 :goto_3

    :cond_f
    new-instance v0, Lcom/paypal/android/sdk/cj;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    const/16 v5, 0x5a

    new-instance v7, Lcom/paypal/android/sdk/de;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v8

    invoke-interface {v8}, Lcom/paypal/android/sdk/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/paypal/android/sdk/de;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/paypal/android/sdk/cj;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/cu;IZLjava/util/List;)V

    goto/16 :goto_5

    :cond_10
    move v6, v4

    goto/16 :goto_4
.end method

.method private a(Lcom/paypal/android/sdk/ct;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method private a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/i;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/i;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iput-object v3, v0, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/payments/ce;->a(Lcom/paypal/android/sdk/payments/cf;)V

    iput-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/paypal/android/sdk/dt;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return v0
.end method

.method private a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fl;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    new-array v6, v1, [Lcom/paypal/android/sdk/fl;

    array-length v10, p1

    move v7, v0

    move v8, v0

    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v5, p1, v7

    add-int/lit8 v9, v8, 0x1

    new-instance v0, Lcom/paypal/android/sdk/fl;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/fl;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v8

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v9

    goto :goto_1

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-object v0
.end method

.method private b(Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;
    .locals 4

    new-instance v0, Lcom/paypal/android/sdk/payments/cf;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/cf;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "Intent = null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", cmp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null extras"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "extras:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private b(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ct;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->p()Lcom/paypal/android/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/ez;->h:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ct;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/ct;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public static clearAllUserData(Landroid/content/Context;)V
    .locals 2

    const-string v0, "paypal.sdk"

    const-string v1, "clearing user data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/paypal/android/sdk/payments/by;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/by;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/di;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    return-object v0
.end method

.method static synthetic y()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static z()Z
    .locals 2

    const-string v0, "partner"

    const-string v1, "general"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/paypal/android/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/d;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 9

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fi;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bq;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v5, v5, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v8, v8, Lcom/paypal/android/sdk/dd;->f:Lcom/paypal/android/sdk/ea;

    iget-object v8, v8, Lcom/paypal/android/sdk/ea;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/paypal/android/sdk/fi;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/em;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 13

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fj;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bq;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v7, v5, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/fj;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/em;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/em;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 11

    iget-object v10, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fj;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bq;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/fj;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/em;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/fd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v5, v5, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/dd;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fl;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/fd;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/fl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fd;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fd;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fd;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fd;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fd;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fd;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fd;->a(Z)Lcom/paypal/android/sdk/fd;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fd;->g(Ljava/lang/String;)Lcom/paypal/android/sdk/fd;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ez;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ez;Ljava/lang/Boolean;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ez;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ez;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/cc;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cc;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/ce;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dd;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/ez;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ez;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v1, Lcom/paypal/android/sdk/fo;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/fo;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/fe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v5, v5, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p9

    move-object/from16 v16, p10

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/fe;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/fl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    const-string v2, "4111111111111111"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bo;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p3, "4444333322221111"

    move-object/from16 v8, p3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    move-object/from16 v21, v0

    new-instance v2, Lcom/paypal/android/sdk/fe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v5, v5, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v20, p13

    invoke-direct/range {v2 .. v20}, Lcom/paypal/android/sdk/fe;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/paypal/android/sdk/eo;Ljava/util/Map;[Lcom/paypal/android/sdk/fl;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fe;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fe;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void

    :cond_0
    move-object/from16 v8, p3

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 9

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fc;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bq;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v5, v5, Lcom/paypal/android/sdk/dd;->e:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dv;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v6, v6, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/paypal/android/sdk/fc;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fa;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v3, v3, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/dd;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move v5, p1

    move-object/from16 v6, p6

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/fa;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method protected final a(Lcom/paypal/android/sdk/payments/ch;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Lcom/paypal/android/sdk/bq;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    return-object v0
.end method

.method final b(Lcom/paypal/android/sdk/payments/cc;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cc;)V

    return-void
.end method

.method protected final c()Lcom/paypal/android/sdk/dd;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    return-object v0
.end method

.method final d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method public final doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/ff;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/paypal/android/sdk/ff;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method public final doTrackingRequest(Lcom/paypal/android/sdk/bt;)V
    .locals 4

    new-instance v0, Lcom/paypal/android/sdk/fg;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-static {p1}, Lcom/paypal/android/sdk/ex;->a(Lcom/paypal/android/sdk/bt;)Lcom/paypal/android/sdk/bt;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/fg;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bt;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/di;->b()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->u()V

    return-void
.end method

.method final h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/df;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->d:Lcom/paypal/android/sdk/dj;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iput-object v1, v0, Lcom/paypal/android/sdk/dd;->c:Ljava/lang/String;

    return-void
.end method

.method final i()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dd;->c()Z

    move-result v0

    return v0
.end method

.method final j()Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v1, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->e:Lcom/paypal/android/sdk/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/di;->a()Lcom/paypal/android/sdk/dj;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v1, v1, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/df;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/dt;

    move-result-object v2

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/dt;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/dt;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iput-object v2, v1, Lcom/paypal/android/sdk/dd;->g:Lcom/paypal/android/sdk/dt;

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dj;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dj;->c()Lcom/paypal/android/sdk/dl;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/dl;->a:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/dl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dj;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/paypal/android/sdk/dd;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/paypal/android/sdk/dj;->a()Lcom/paypal/android/sdk/es;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/db;->a()Lcom/paypal/android/sdk/db;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/es;->a(Lcom/paypal/android/sdk/er;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final m()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final n()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-object v0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 4

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created. API:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/paypal/android/sdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/paypal/android/sdk/a;

    new-instance v1, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v1}, Lcom/paypal/android/sdk/payments/d;-><init>()V

    const-string v1, "AndroidBasePrefs"

    new-instance v2, Lcom/paypal/android/sdk/d;

    invoke-direct {v2}, Lcom/paypal/android/sdk/d;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/paypal/android/sdk/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/d;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-static {v0}, Lcom/paypal/android/sdk/ee;->a(Lcom/paypal/android/sdk/a;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-static {v0}, Lcom/paypal/android/sdk/ej;->a(Lcom/paypal/android/sdk/a;)V

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.15.1"

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/paypal/android/sdk/e;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bq;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bq;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service destroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRebind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/paypal/android/sdk/gp;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gp;->a()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras required. Please see the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ch;

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/ch;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnbind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method final p()V
    .locals 7

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    new-instance v0, Lcom/paypal/android/sdk/fh;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/bq;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bq;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v4, v4, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/fh;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/paypal/android/sdk/bq;->b(Lcom/paypal/android/sdk/ct;)V

    return-void
.end method

.method final q()Lcom/paypal/android/sdk/dj;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/di;->a()Lcom/paypal/android/sdk/dj;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->c:Ljava/lang/String;

    return-object v0
.end method

.method final s()Lcom/paypal/android/sdk/dq;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/di;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/dq;

    move-result-object v0

    return-object v0
.end method

.method final t()V
    .locals 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dq;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/di;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/di;->c()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    iget-object v0, v0, Lcom/paypal/android/sdk/dd;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dq;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dq;

    :cond_0
    return-void
.end method

.method final u()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dd;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    :cond_0
    return-void
.end method

.method protected final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    return-object v0
.end method

.method final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    return v0
.end method

.method final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    return v0
.end method