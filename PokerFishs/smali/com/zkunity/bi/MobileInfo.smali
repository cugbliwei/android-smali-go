.class public Lcom/zkunity/bi/MobileInfo;
.super Ljava/lang/Object;
.source "MobileInfo.java"


# static fields
.field public static final ANDROID_ID:Ljava/lang/String; = "androidId"

.field public static final CPU_TYPE:Ljava/lang/String; = "cpu_type"

.field public static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final DEVICE_VENDER:Ljava/lang/String; = "deviceVender"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final MAC:Ljava/lang/String; = "mac"

.field public static final MEMORY:Ljava/lang/String; = "memory"

.field public static final SD_STATUS:Ljava/lang/String; = "sd_status"

.field public static final SYS_VERSION:Ljava/lang/String; = "sysVersion"


# instance fields
.field private info:Lcom/zkunity/json/MJsonObject;

.field private isUpdate:Z


# direct methods
.method public constructor <init>(Lcom/zkunity/json/MJsonObject;)V
    .locals 1
    .param p1, "info"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 24
    iput-object p1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    .line 25
    return-void
.end method


# virtual methods
.method public addAndroidId(Ljava/lang/String;)V
    .locals 4
    .param p1, "androidId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "androidId"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    .line 80
    const-string v3, "androidId"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "androidId"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public addCpuType(Ljava/lang/String;)V
    .locals 4
    .param p1, "cpu_type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "cpu_type"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "cpu_type"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "cpu_type"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public addDeviceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "deviceName"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    .line 53
    const-string v3, "deviceName"

    .line 52
    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "deviceName"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public addDeviceVender(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceVender"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "deviceVender"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    .line 44
    const-string v3, "deviceVender"

    .line 43
    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 46
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "deviceVender"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public addIMEI(Ljava/lang/String;)V
    .locals 4
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "imei"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "imei"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "imei"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public addMac(Ljava/lang/String;)V
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 89
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 90
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "mac"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public addMemory(Ljava/lang/String;)V
    .locals 4
    .param p1, "memory"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "memory"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "memory"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "memory"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public addSDStatus(I)V
    .locals 4
    .param p1, "sd_status"    # I

    .prologue
    const/4 v1, 0x1

    .line 96
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "sd_status"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "sd_status"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x0

    .line 97
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "sd_status"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 100
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public addSysVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "sysVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v3, "sysVersion"

    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    .line 62
    const-string v3, "sysVersion"

    .line 61
    invoke-virtual {v2, v3}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "isUpdate_a":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    iput-boolean v1, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    const-string v2, "sysVersion"

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .end local v0    # "isUpdate_a":Z
    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public cleanUpdate()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    .line 34
    return-void
.end method

.method public getMJsonObject()Lcom/zkunity/json/MJsonObject;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/zkunity/bi/MobileInfo;->isUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/bi/MobileInfo;->info:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v0}, Lcom/zkunity/json/MJsonObject;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
