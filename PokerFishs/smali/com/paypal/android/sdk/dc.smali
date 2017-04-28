.class public final enum Lcom/paypal/android/sdk/dc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/dc;

.field public static final enum b:Lcom/paypal/android/sdk/dc;

.field public static final enum c:Lcom/paypal/android/sdk/dc;

.field public static final enum d:Lcom/paypal/android/sdk/dc;

.field public static final enum e:Lcom/paypal/android/sdk/dc;

.field public static final enum f:Lcom/paypal/android/sdk/dc;

.field public static final enum g:Lcom/paypal/android/sdk/dc;

.field public static final enum h:Lcom/paypal/android/sdk/dc;

.field public static final enum i:Lcom/paypal/android/sdk/dc;

.field public static final enum j:Lcom/paypal/android/sdk/dc;

.field public static final enum k:Lcom/paypal/android/sdk/dc;

.field private static enum l:Lcom/paypal/android/sdk/dc;

.field private static final synthetic o:[Lcom/paypal/android/sdk/dc;


# instance fields
.field private m:Lcom/paypal/android/sdk/ca;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "FptiRequest"

    sget-object v2, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "PreAuthRequest"

    sget-object v2, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v3, "oauth2/token"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "LoginRequest"

    sget-object v2, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v3, "oauth2/login"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->c:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "LoginChallengeRequest"

    sget-object v2, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v3, "oauth2/login/challenge"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->d:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "ConsentRequest"

    sget-object v2, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v3, "oauth2/consent"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->e:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "CreditCardPaymentRequest"

    const/4 v2, 0x5

    sget-object v3, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v4, "payments/payment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->f:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "PayPalPaymentRequest"

    const/4 v2, 0x6

    sget-object v3, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v4, "payments/payment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->l:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "CreateSfoPaymentRequest"

    const/4 v2, 0x7

    sget-object v3, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v4, "orchestration/msdk-create-sfo-payment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "ApproveAndExecuteSfoPaymentRequest"

    const/16 v2, 0x8

    sget-object v3, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v4, "orchestration/msdk-approve-and-execute-sfo-payment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->h:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "TokenizeCreditCardRequest"

    const/16 v2, 0x9

    sget-object v3, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    const-string v4, "vault/credit-card"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->i:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "DeleteCreditCardRequest"

    const/16 v2, 0xa

    sget-object v3, Lcom/paypal/android/sdk/ca;->c:Lcom/paypal/android/sdk/ca;

    const-string v4, "vault/credit-card"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->j:Lcom/paypal/android/sdk/dc;

    new-instance v0, Lcom/paypal/android/sdk/dc;

    const-string v1, "GetAppInfoRequest"

    const/16 v2, 0xb

    sget-object v3, Lcom/paypal/android/sdk/ca;->a:Lcom/paypal/android/sdk/ca;

    const-string v4, "apis/applications"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/dc;-><init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V

    sput-object v0, Lcom/paypal/android/sdk/dc;->k:Lcom/paypal/android/sdk/dc;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/paypal/android/sdk/dc;

    sget-object v1, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/dc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/dc;->b:Lcom/paypal/android/sdk/dc;

    aput-object v1, v0, v6

    sget-object v1, Lcom/paypal/android/sdk/dc;->c:Lcom/paypal/android/sdk/dc;

    aput-object v1, v0, v7

    sget-object v1, Lcom/paypal/android/sdk/dc;->d:Lcom/paypal/android/sdk/dc;

    aput-object v1, v0, v8

    sget-object v1, Lcom/paypal/android/sdk/dc;->e:Lcom/paypal/android/sdk/dc;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/dc;->f:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/dc;->l:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/paypal/android/sdk/dc;->g:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/paypal/android/sdk/dc;->h:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/paypal/android/sdk/dc;->i:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/paypal/android/sdk/dc;->j:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/paypal/android/sdk/dc;->k:Lcom/paypal/android/sdk/dc;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/dc;->o:[Lcom/paypal/android/sdk/dc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/paypal/android/sdk/ca;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/paypal/android/sdk/dc;->m:Lcom/paypal/android/sdk/ca;

    iput-object p4, p0, Lcom/paypal/android/sdk/dc;->n:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/dc;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dc;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/dc;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/dc;->o:[Lcom/paypal/android/sdk/dc;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/dc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/dc;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/paypal/android/sdk/ca;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->m:Lcom/paypal/android/sdk/ca;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->n:Ljava/lang/String;

    return-object v0
.end method
