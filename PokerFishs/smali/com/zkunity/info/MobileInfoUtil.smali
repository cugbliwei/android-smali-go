.class public Lcom/zkunity/info/MobileInfoUtil;
.super Ljava/lang/Object;
.source "MobileInfoUtil.java"


# static fields
.field private static deviceId1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 32
    .local v0, "uuid":Ljava/util/UUID;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 16
    sget-object v2, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 17
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v2

    .line 18
    const-string v3, "DeviceId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "DeviceId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    .line 20
    sget-object v2, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 21
    invoke-static {}, Lcom/zkunity/info/MobileInfoUtil;->calcDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DeviceId"

    sget-object v3, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-object v2, Lcom/zkunity/info/MobileInfoUtil;->deviceId1:Ljava/lang/String;

    return-object v2
.end method
