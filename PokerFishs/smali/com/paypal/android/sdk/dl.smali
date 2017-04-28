.class public final enum Lcom/paypal/android/sdk/dl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/dl;

.field public static final enum b:Lcom/paypal/android/sdk/dl;

.field private static final synthetic c:[Lcom/paypal/android/sdk/dl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/dl;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dl;->a:Lcom/paypal/android/sdk/dl;

    new-instance v0, Lcom/paypal/android/sdk/dl;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/dl;->b:Lcom/paypal/android/sdk/dl;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/paypal/android/sdk/dl;

    sget-object v1, Lcom/paypal/android/sdk/dl;->a:Lcom/paypal/android/sdk/dl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/dl;->b:Lcom/paypal/android/sdk/dl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/paypal/android/sdk/dl;->c:[Lcom/paypal/android/sdk/dl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/dl;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dl;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/dl;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/dl;->c:[Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/dl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/dl;

    return-object v0
.end method
