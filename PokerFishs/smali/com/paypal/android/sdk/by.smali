.class public final enum Lcom/paypal/android/sdk/by;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/by;

.field public static final enum b:Lcom/paypal/android/sdk/by;

.field public static final enum c:Lcom/paypal/android/sdk/by;

.field public static final enum d:Lcom/paypal/android/sdk/by;

.field public static final enum e:Lcom/paypal/android/sdk/by;

.field private static final synthetic f:[Lcom/paypal/android/sdk/by;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/by;

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/by;->a:Lcom/paypal/android/sdk/by;

    new-instance v0, Lcom/paypal/android/sdk/by;

    const-string v1, "SERVER_COMMUNICATION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/by;->b:Lcom/paypal/android/sdk/by;

    new-instance v0, Lcom/paypal/android/sdk/by;

    const-string v1, "PARSE_RESPONSE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/by;

    new-instance v0, Lcom/paypal/android/sdk/by;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/by;->d:Lcom/paypal/android/sdk/by;

    new-instance v0, Lcom/paypal/android/sdk/by;

    const-string v1, "DEVICE_OS_TOO_OLD"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/by;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/by;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/paypal/android/sdk/by;

    sget-object v1, Lcom/paypal/android/sdk/by;->a:Lcom/paypal/android/sdk/by;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/by;->b:Lcom/paypal/android/sdk/by;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/by;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/by;->d:Lcom/paypal/android/sdk/by;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/by;

    aput-object v1, v0, v6

    sput-object v0, Lcom/paypal/android/sdk/by;->f:[Lcom/paypal/android/sdk/by;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/by;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/by;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/by;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/by;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/by;->f:[Lcom/paypal/android/sdk/by;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/by;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/by;

    return-object v0
.end method
