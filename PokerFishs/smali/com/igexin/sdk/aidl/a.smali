.class public abstract Lcom/igexin/sdk/aidl/a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/igexin/sdk/aidl/ICACallback;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/ICACallback;
    .locals 4

    const-string v2, "======================== igexin/sdk/aldl/a.smali"
    const-string v3,  ".method public static a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/ICACallback;"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/igexin/sdk/aidl/ICACallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/igexin/sdk/aidl/ICACallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/igexin/sdk/aidl/b;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/aidl/b;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const-string v8, "======================== igexin/sdk/aldl/a.smali"
    const-string v9,  ".method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z"
    invoke-static {v8,v9} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/sdk/aidl/a;->onAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v6

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/aidl/a;->onError(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method