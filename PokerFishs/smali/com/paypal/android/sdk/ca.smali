.class public final enum Lcom/paypal/android/sdk/ca;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/ca;

.field public static final enum b:Lcom/paypal/android/sdk/ca;

.field public static final enum c:Lcom/paypal/android/sdk/ca;

.field private static enum d:Lcom/paypal/android/sdk/ca;

.field private static enum e:Lcom/paypal/android/sdk/ca;

.field private static final synthetic f:[Lcom/paypal/android/sdk/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/ca;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->a:Lcom/paypal/android/sdk/ca;

    new-instance v0, Lcom/paypal/android/sdk/ca;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    new-instance v0, Lcom/paypal/android/sdk/ca;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->d:Lcom/paypal/android/sdk/ca;

    new-instance v0, Lcom/paypal/android/sdk/ca;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->c:Lcom/paypal/android/sdk/ca;

    new-instance v0, Lcom/paypal/android/sdk/ca;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ca;->e:Lcom/paypal/android/sdk/ca;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/paypal/android/sdk/ca;

    sget-object v1, Lcom/paypal/android/sdk/ca;->a:Lcom/paypal/android/sdk/ca;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/ca;->b:Lcom/paypal/android/sdk/ca;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/ca;->d:Lcom/paypal/android/sdk/ca;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/ca;->c:Lcom/paypal/android/sdk/ca;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/ca;->e:Lcom/paypal/android/sdk/ca;

    aput-object v1, v0, v6

    sput-object v0, Lcom/paypal/android/sdk/ca;->f:[Lcom/paypal/android/sdk/ca;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/ca;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ca;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ca;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/ca;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/ca;->f:[Lcom/paypal/android/sdk/ca;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/ca;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/ca;

    return-object v0
.end method
