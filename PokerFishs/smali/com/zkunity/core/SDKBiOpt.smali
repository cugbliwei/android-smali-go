.class public Lcom/zkunity/core/SDKBiOpt;
.super Ljava/lang/Object;
.source "SDKBiOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/core/SDKBiOpt$LoginID;,
        Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;
    }
.end annotation


# static fields
.field private static obj:Lcom/zkunity/core/SDKBiOpt;


# instance fields
.field private login_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zkunity/core/SDKBiOpt$LoginID;",
            ">;"
        }
    .end annotation
.end field

.field private mobileIsUpdate:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zkunity/core/SDKBiOpt;->mobileIsUpdate:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zkunity/core/SDKBiOpt;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/zkunity/core/SDKBiOpt;->mobileIsUpdate:Z

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/core/SDKBiOpt;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/zkunity/core/SDKBiOpt;->sendAllCacheLoginlogs()V

    return-void
.end method

.method public static opt()Lcom/zkunity/core/SDKBiOpt;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/zkunity/core/SDKBiOpt;->obj:Lcom/zkunity/core/SDKBiOpt;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/zkunity/core/SDKBiOpt;

    invoke-direct {v0}, Lcom/zkunity/core/SDKBiOpt;-><init>()V

    sput-object v0, Lcom/zkunity/core/SDKBiOpt;->obj:Lcom/zkunity/core/SDKBiOpt;

    .line 29
    :cond_0
    sget-object v0, Lcom/zkunity/core/SDKBiOpt;->obj:Lcom/zkunity/core/SDKBiOpt;

    return-object v0
.end method

.method private sendAllCacheLoginlogs()V
    .locals 8

    .prologue
    .line 131
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 132
    .local v3, "n":I
    const/4 v2, 0x0

    .line 133
    .local v2, "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 150
    return-void

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    check-cast v2, Lcom/zkunity/core/SDKBiOpt$LoginID;

    .line 135
    .restart local v2    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Lcom/zkunity/core/SDKBiOpt$LoginID;->isSend()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/zkunity/core/SDKBiOpt$LoginID;->setSend(Z)V

    .line 140
    invoke-static {}, Lcom/zkunity/bi/MobileTools;->copyMobileInfo()Lcom/zkunity/json/MJsonObject;

    move-result-object v0

    .line 141
    .local v0, "event":Lcom/zkunity/json/MJsonObject;
    const-string v4, "device_id"

    .line 142
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/zkunity/bi/MobileTools;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v0, v4, v5}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "login_id"

    invoke-virtual {v2}, Lcom/zkunity/core/SDKBiOpt$LoginID;->getLogin_id()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 144
    const-string v4, "plat_url"

    .line 145
    const-string v5, "save_android_login_log_b_req"

    .line 146
    new-instance v6, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;-><init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;)V

    .line 144
    invoke-static {v4, v5, v0, v6}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    goto :goto_1
.end method


# virtual methods
.method public sendLoginLog(Ljava/lang/String;I)V
    .locals 13
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v12, 0x0

    .line 39
    iget-boolean v9, p0, Lcom/zkunity/core/SDKBiOpt;->mobileIsUpdate:Z

    if-eqz v9, :cond_1

    .line 40
    invoke-static {}, Lcom/zkunity/bi/MobileTools;->copyMobileInfo()Lcom/zkunity/json/MJsonObject;

    move-result-object v2

    .line 41
    .local v2, "event":Lcom/zkunity/json/MJsonObject;
    const-string v9, "uid"

    invoke-virtual {v2, v9, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v9, "type"

    invoke-virtual {v2, v9, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 43
    const-string v9, "device_id"

    .line 44
    sget-object v10, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/zkunity/bi/MobileTools;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 43
    invoke-virtual {v2, v9, v10}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v9, "plat_url"

    const-string v10, "save_android_login_log_req"

    .line 46
    new-instance v11, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;

    invoke-direct {v11, p0, v12}, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;-><init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;)V

    .line 45
    invoke-static {v9, v10, v2, v11}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 75
    .end local v2    # "event":Lcom/zkunity/json/MJsonObject;
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v10, "mid"

    .line 48
    invoke-static {v9, v10}, Lcom/zkunity/nativedata/NativeDataTools;->getDataWithContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "mid":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 51
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 52
    .local v0, "data":Lcom/zkunity/json/MJsonObject;
    const-string v9, "uid"

    invoke-virtual {v0, v9, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v9, "type"

    invoke-virtual {v0, v9, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 54
    const-string v9, "mid"

    invoke-virtual {v0, v9, v7}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v9, "plat_url"

    const-string v10, "save_android_login_log_a_req"

    .line 56
    new-instance v11, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;

    invoke-direct {v11, p0, v12}, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;-><init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;)V

    .line 55
    invoke-static {v9, v10, v0, v11}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 59
    .end local v0    # "data":Lcom/zkunity/json/MJsonObject;
    :cond_2
    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v10, "login_ids_data"

    .line 58
    invoke-static {v9, v10}, Lcom/zkunity/nativedata/NativeDataTools;->getDataWithContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "login_ids_data":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 61
    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "login_ids_datas":[Ljava/lang/String;
    array-length v8, v6

    .line 63
    .local v8, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v8, :cond_3

    .line 72
    invoke-direct {p0}, Lcom/zkunity/core/SDKBiOpt;->sendAllCacheLoginlogs()V

    goto :goto_0

    .line 65
    :cond_3
    :try_start_0
    new-instance v4, Lcom/zkunity/core/SDKBiOpt$LoginID;

    const/4 v9, 0x0

    invoke-direct {v4, p0, v9}, Lcom/zkunity/core/SDKBiOpt$LoginID;-><init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$LoginID;)V

    .line 66
    .local v4, "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/zkunity/core/SDKBiOpt$LoginID;->setLogin_id(I)V

    .line 67
    iget-object v9, p0, Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v4    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public setMobileUpdate(Z)V
    .locals 0
    .param p1, "mobileIsUpdate"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/zkunity/core/SDKBiOpt;->mobileIsUpdate:Z

    .line 35
    return-void
.end method
