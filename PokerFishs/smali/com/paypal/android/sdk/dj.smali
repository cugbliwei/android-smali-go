.class public final Lcom/paypal/android/sdk/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/paypal/android/sdk/es;

.field private b:Ljava/lang/String;

.field private c:Lcom/paypal/android/sdk/dl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/dk;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dk;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/paypal/android/sdk/es;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/es;

    iput-object v0, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dl;

    iput-object v0, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/paypal/android/sdk/es;Lcom/paypal/android/sdk/dl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    iput-object p3, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/paypal/android/sdk/es;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    return-object v0
.end method

.method public final a(Lcom/paypal/android/sdk/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/es;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/dl;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    return-object v0
.end method

.method public final d()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    sget-object v3, Lcom/paypal/android/sdk/dl;->b:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/dl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    sget-object v3, Lcom/paypal/android/sdk/dl;->a:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/dl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->a:Lcom/paypal/android/sdk/es;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dj;->c:Lcom/paypal/android/sdk/dl;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method