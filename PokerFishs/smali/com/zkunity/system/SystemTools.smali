.class public Lcom/zkunity/system/SystemTools;
.super Ljava/lang/Object;
.source "SystemTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 130
    .local v0, "hs":Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 131
    .local v3, "stmp":Ljava/lang/String;
    array-length v1, p0

    .line 132
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 133
    :cond_0
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 135
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 132
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    const-string v2, "android_id"

    .line 55
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v1, "-----"

    goto :goto_0
.end method

.method public static getCPUType()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    const-string v5, "/proc/cpuinfo"

    .line 83
    .local v5, "str1":Ljava/lang/String;
    const-string v6, ""

    .line 84
    .local v6, "str2":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v1, v8

    const-string v7, ""

    aput-object v7, v1, v9

    .line 87
    .local v1, "cpuInfo":[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v4, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 89
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 90
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-lt v3, v7, :cond_0

    .line 94
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 95
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v7, 0x1

    aget-object v8, v1, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 97
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "i":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 92
    .restart local v0    # "arrayOfString":[Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "i":I
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "i":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    .line 44
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const-string v2, "-----"

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 149
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 151
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 156
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "WifiPreference IpAddress"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMACAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    const-string v2, ""

    .line 70
    .local v2, "mac_s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/zkunity/system/SystemTools;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 69
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 71
    .local v3, "ne":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 72
    .local v1, "mac":[B
    invoke-static {v1}, Lcom/zkunity/system/SystemTools;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v1    # "mac":[B
    .end local v3    # "ne":Ljava/net/NetworkInterface;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalMemory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 108
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
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

    .line 110
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "text":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "array":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 120
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v1, v2

    .line 125
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v7

    .line 121
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 120
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 125
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v7, ""

    goto :goto_1

    .line 121
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 115
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 116
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 120
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 121
    :catch_4
    move-exception v3

    .line 122
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 119
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 120
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 124
    :goto_6
    throw v7

    .line 121
    :catch_5
    move-exception v3

    .line 122
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 117
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

    .line 115
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

    .line 113
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

.method public static getVender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method
