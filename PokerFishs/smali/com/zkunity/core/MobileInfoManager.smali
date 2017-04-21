.class public Lcom/zkunity/core/MobileInfoManager;
.super Ljava/lang/Object;
.source "MobileInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/zkunity/core/MobileInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/zkunity/core/MobileInfoManager;

    invoke-direct {v0}, Lcom/zkunity/core/MobileInfoManager;-><init>()V

    sput-object v0, Lcom/zkunity/core/MobileInfoManager;->instance:Lcom/zkunity/core/MobileInfoManager;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 97
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "text":Ljava/lang/String;
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v0

    if-lt v4, v6, :cond_0

    .line 103
    const/4 v6, 0x1

    aget-object v6, v0, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "i":I
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 101
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "i":I
    .restart local v5    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "i":I
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 109
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v6, ""

    goto :goto_1

    .line 106
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getManager()Lcom/zkunity/core/MobileInfoManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/zkunity/core/MobileInfoManager;->instance:Lcom/zkunity/core/MobileInfoManager;

    return-object v0
.end method

.method private getTotalMemory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 117
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v7, 0x8

    invoke-direct {v2, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "text":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "array":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 129
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 134
    .end local v0    # "array":[Ljava/lang/String;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_1
    return-object v7

    .line 130
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v7, ""

    goto :goto_1

    .line 130
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 131
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 125
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 130
    :catch_4
    move-exception v3

    .line 131
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 128
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 133
    :goto_6
    throw v7

    .line 130
    :catch_5
    move-exception v3

    .line 131
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 124
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 122
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public pushMobileInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v3

    .line 37
    const-string v4, "mbinfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 38
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "mi"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "mi":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/zkunity/core/MobileInfoManager;->pushMobileInfos()V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 43
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->createNewFromNull()V

    .line 44
    const-string v3, "uri"

    const-string v4, "loginInfos"

    invoke-virtual {v0, v3, v4}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v3, "uid"

    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zkunity/core/SDKManager;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "mi"

    invoke-virtual {v0, v3, v1}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "deviceId"

    invoke-static {}, Lcom/zkunity/info/MobileInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "baseUrl"

    invoke-static {v4}, Lcom/zkunity/config/MConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "plat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;

    invoke-direct {v5, p0, v6}, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;-><init>(Lcom/zkunity/core/MobileInfoManager;Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;)V

    .line 48
    invoke-static {v3, v4, v5}, Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V

    goto :goto_0
.end method

.method public pushMobileInfos()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 55
    .local v0, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->createNewFromNull()V

    .line 56
    const-string v1, "uri"

    const-string v2, "loginInfos"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "uid"

    invoke-static {}, Lcom/zkunity/core/SDKManager;->getManager()Lcom/zkunity/core/SDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zkunity/core/SDKManager;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "mi"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "miBrands"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "miModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "miCpu"

    invoke-direct {p0}, Lcom/zkunity/core/MobileInfoManager;->getCpuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "miMemory"

    invoke-direct {p0}, Lcom/zkunity/core/MobileInfoManager;->getTotalMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "miOs"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "miOsVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "deviceId"

    invoke-static {}, Lcom/zkunity/info/MobileInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "baseUrl"

    invoke-static {v2}, Lcom/zkunity/config/MConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "plat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;-><init>(Lcom/zkunity/core/MobileInfoManager;Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;)V

    .line 67
    invoke-static {v1, v2, v3}, Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V

    .line 69
    return-void
.end method
