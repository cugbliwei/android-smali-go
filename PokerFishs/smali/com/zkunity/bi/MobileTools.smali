.class public Lcom/zkunity/bi/MobileTools;
.super Ljava/lang/Object;
.source "MobileTools.java"


# static fields
.field private static mobileInfo:Lcom/zkunity/bi/MobileInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cheakMobileInfoForUpdate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v1, "mobileWithJson"

    .line 31
    invoke-static {p0, v1}, Lcom/zkunity/nativedata/NativeDataTools;->getMJsonDataWithContext(Landroid/content/Context;Ljava/lang/String;)Lcom/zkunity/json/MJsonObject;

    move-result-object v0

    .line 33
    .local v0, "mobileWithJson":Lcom/zkunity/json/MJsonObject;
    invoke-virtual {v0}, Lcom/zkunity/json/MJsonObject;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    .end local v0    # "mobileWithJson":Lcom/zkunity/json/MJsonObject;
    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 35
    .restart local v0    # "mobileWithJson":Lcom/zkunity/json/MJsonObject;
    :cond_0
    new-instance v1, Lcom/zkunity/bi/MobileInfo;

    invoke-direct {v1, v0}, Lcom/zkunity/bi/MobileInfo;-><init>(Lcom/zkunity/json/MJsonObject;)V

    sput-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    .line 36
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getVender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addDeviceVender(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addDeviceName(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addSysVersion(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {p0}, Lcom/zkunity/system/SystemTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addIMEI(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {p0}, Lcom/zkunity/system/SystemTools;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addAndroidId(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getMACAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addMac(Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/nativedata/NativeDataTools;->isSdCardExist()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/zkunity/bi/MobileInfo;->addSDStatus(I)V

    .line 43
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getCPUType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addCpuType(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-static {}, Lcom/zkunity/system/SystemTools;->getTotalMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/bi/MobileInfo;->addMemory(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v1}, Lcom/zkunity/bi/MobileInfo;->isUpdate()Z

    move-result v1

    return v1

    .line 42
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyMobileInfo()Lcom/zkunity/json/MJsonObject;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v1}, Lcom/zkunity/bi/MobileInfo;->getMJsonObject()Lcom/zkunity/json/MJsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zkunity/json/MJsonObject;->getObj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zkunity/json/MJsonObject;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 19
    .line 20
    const-string v1, "device_id"

    .line 19
    invoke-static {p0, v1, v3}, Lcom/zkunity/nativedata/NativeDataTools;->getDataWithPermanent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "device_id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "device_id"

    invoke-static {p0, v1, v0, v3}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByPermanent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    :cond_0
    return-object v0
.end method

.method public static getMobileInfo()Lcom/zkunity/json/MJsonObject;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v0}, Lcom/zkunity/bi/MobileInfo;->getMJsonObject()Lcom/zkunity/json/MJsonObject;

    move-result-object v0

    return-object v0
.end method

.method public static saveMobileInfo(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v1}, Lcom/zkunity/bi/MobileInfo;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v1}, Lcom/zkunity/bi/MobileInfo;->getMJsonObject()Lcom/zkunity/json/MJsonObject;

    move-result-object v0

    .line 62
    .local v0, "mobileWithJson":Lcom/zkunity/json/MJsonObject;
    const-string v1, "mobileWithJson"

    .line 63
    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v1, v0, v2}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByContext(Landroid/content/Context;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Z)V

    .line 64
    sget-object v1, Lcom/zkunity/bi/MobileTools;->mobileInfo:Lcom/zkunity/bi/MobileInfo;

    invoke-virtual {v1}, Lcom/zkunity/bi/MobileInfo;->cleanUpdate()V

    .line 66
    .end local v0    # "mobileWithJson":Lcom/zkunity/json/MJsonObject;
    :cond_0
    return-void
.end method
