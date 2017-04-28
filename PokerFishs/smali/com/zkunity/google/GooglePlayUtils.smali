.class public Lcom/zkunity/google/GooglePlayUtils;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"


# static fields
.field private static obj:Lcom/zkunity/google/GooglePlayUtils;


# instance fields
.field private isInitOk:Z

.field private isconsumeAsync:Z

.field mConsumeFinishedListener:Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;

.field private mHelper:Lcom/zkunity/google/IabHelper;

.field mPurchaseFinishedListener:Lcom/zkunity/google/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/zkunity/google/GooglePlayUtils;->isInitOk:Z

    .line 29
    iput-boolean v0, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    .line 151
    new-instance v0, Lcom/zkunity/google/GooglePlayUtils$1;

    invoke-direct {v0, p0}, Lcom/zkunity/google/GooglePlayUtils$1;-><init>(Lcom/zkunity/google/GooglePlayUtils;)V

    iput-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mPurchaseFinishedListener:Lcom/zkunity/google/IabHelper$OnIabPurchaseFinishedListener;

    .line 172
    new-instance v0, Lcom/zkunity/google/GooglePlayUtils$2;

    invoke-direct {v0, p0}, Lcom/zkunity/google/GooglePlayUtils$2;-><init>(Lcom/zkunity/google/GooglePlayUtils;)V

    iput-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mConsumeFinishedListener:Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/google/GooglePlayUtils;->saveSQLiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 199
    invoke-direct/range {p0 .. p5}, Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/zkunity/google/GooglePlayUtils;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/zkunity/google/GooglePlayUtils;->isInitOk:Z

    return-void
.end method

.method static synthetic access$5(Lcom/zkunity/google/GooglePlayUtils;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/zkunity/google/GooglePlayUtils;->isInitOk:Z

    return v0
.end method

.method static synthetic access$6(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/google/GooglePlayUtils;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/zkunity/google/GooglePlayUtils;->deleteSQLiteInfo(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSQLiteInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "paymentId"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v2, "orders"

    invoke-static {v2}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/zkunity/google/GooglePlayUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 280
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v2, "google"

    const-string v3, "paymentId=?"

    invoke-static {v0, v2, v3, v1}, Lcom/zkunity/nativedata/SQLiteOpt;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    .end local v1    # "whereArgs":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "payment_id"    # Ljava/lang/String;
    .param p2, "receipt"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "waitTime"    # I

    .prologue
    .line 201
    if-gtz p5, :cond_0

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/google/GooglePlayUtils;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/zkunity/google/GooglePlayUtils$5;

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zkunity/google/GooglePlayUtils$5;-><init>(Lcom/zkunity/google/GooglePlayUtils;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 302
    const-string v0, "create table if not exists google(paymentId text primary key,receipt text, sign text,cvtime text);"

    .line 303
    .local v0, "createSql":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/zkunity/nativedata/SQLiteOpt;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getObj()Lcom/zkunity/google/GooglePlayUtils;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/zkunity/google/GooglePlayUtils;->obj:Lcom/zkunity/google/GooglePlayUtils;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/zkunity/google/GooglePlayUtils;

    invoke-direct {v0}, Lcom/zkunity/google/GooglePlayUtils;-><init>()V

    sput-object v0, Lcom/zkunity/google/GooglePlayUtils;->obj:Lcom/zkunity/google/GooglePlayUtils;

    .line 37
    :cond_0
    sget-object v0, Lcom/zkunity/google/GooglePlayUtils;->obj:Lcom/zkunity/google/GooglePlayUtils;

    return-object v0
.end method

.method private loadSQLiteInfos()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 220
    const-string v0, "orders"

    invoke-static {v0}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 221
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v7}, Lcom/zkunity/google/GooglePlayUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-array v9, v5, [Ljava/lang/String;

    .line 223
    .local v9, "whereArgs":[Ljava/lang/String;
    const-string v0, "select * from google"

    invoke-static {v7, v0, v9}, Lcom/zkunity/nativedata/SQLiteOpt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 225
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :cond_0
    return-void

    .line 228
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "whereArgs":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "payment_id":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "receipt":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "sign":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "time":Ljava/lang/String;
    const/16 v5, 0xbb8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "payment_id":Ljava/lang/String;
    .end local v2    # "receipt":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 233
    :catch_0
    move-exception v8

    .line 234
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSQLiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "payment_id"    # Ljava/lang/String;
    .param p2, "receipt"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v2, "orders"

    invoke-static {v2}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 288
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/zkunity/google/GooglePlayUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "paymentId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "cvtime"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "sign"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "receipt"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "google"

    invoke-static {v1, v2, v0}, Lcom/zkunity/nativedata/SQLiteOpt;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 295
    const/4 v2, 0x1

    .line 297
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "payment_id"    # Ljava/lang/String;
    .param p2, "receipt"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 246
    new-instance v6, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v6}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 247
    .local v6, "event":Lcom/zkunity/json/MJsonObject;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 249
    .local v7, "receipt_base":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 251
    .local v8, "signature_base":Ljava/lang/String;
    const-string v0, "payment_id"

    invoke-virtual {v6, v0, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "receipt"

    invoke-virtual {v6, v0, v7}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "signature"

    invoke-virtual {v6, v0, v8}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "cvtime"

    invoke-virtual {v6, v0, p4}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v9, "pay_url"

    const-string v10, "google"

    new-instance v0, Lcom/zkunity/google/GooglePlayUtils$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zkunity/google/GooglePlayUtils$6;-><init>(Lcom/zkunity/google/GooglePlayUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v10, v6, v0}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 273
    return-void
.end method


# virtual methods
.method public initGooglePlay(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;
    .param p2, "isLogger"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/zkunity/google/GooglePlayUtils;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/zkunity/google/IabHelper;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 59
    invoke-direct {v0, v1, p1}, Lcom/zkunity/google/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iput-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    .line 60
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    invoke-virtual {v0, p2}, Lcom/zkunity/google/IabHelper;->enableDebugLogging(Z)V

    .line 61
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    new-instance v1, Lcom/zkunity/google/GooglePlayUtils$3;

    invoke-direct {v1, p0}, Lcom/zkunity/google/GooglePlayUtils$3;-><init>(Lcom/zkunity/google/GooglePlayUtils;)V

    invoke-virtual {v0, v1}, Lcom/zkunity/google/IabHelper;->startSetup(Lcom/zkunity/google/IabHelper$OnIabSetupFinishedListener;)V

    .line 90
    invoke-direct {p0}, Lcom/zkunity/google/GooglePlayUtils;->loadSQLiteInfos()V

    goto :goto_0
.end method

.method public isSupport()Z
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 44
    .local v0, "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 46
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 47
    const-string v2, "1111111111111111"

    const-string v3, "\u4e0d\u652f\u6301google\u670d\u52a1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x0

    .line 51
    :goto_0
    return v2

    .line 50
    :cond_0
    const-string v2, "1111111111111111"

    const-string v3, "\u652f\u6301google\u670d\u52a1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public launchPurchaseFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "gameOrderId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/zkunity/google/GooglePlayUtils;->isInitOk:Z

    if-nez v0, :cond_0

    .line 128
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 129
    const-string v0, "zk_string_google_play"

    const/16 v1, 0x65

    .line 130
    const-string v2, "zk_google_not_start"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iput-boolean v3, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    if-nez v0, :cond_1

    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    .line 136
    const-string v0, "zk_string_google_play"

    const/16 v1, 0x66

    .line 137
    const-string v2, "zk_google_not_start"

    .line 136
    invoke-static {v0, v1, v2}, Lcom/zkunity/core/PaySyncPostUtils;->showPayError(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iput-boolean v3, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const v3, 0x85e3f

    .line 142
    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils;->mPurchaseFinishedListener:Lcom/zkunity/google/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v5, p2

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/zkunity/google/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/zkunity/google/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/google/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startPayWithRemoteGoogle(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "g_role_id"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zkunity/google/GooglePlayUtils;->isconsumeAsync:Z

    .line 99
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 100
    .local v0, "event":Lcom/zkunity/json/MJsonObject;
    const-string v1, "type"

    const-string v2, "google"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "sid"

    invoke-virtual {v0, v1, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "gid"

    invoke-virtual {v0, v1, p3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "g_role_id"

    invoke-virtual {v0, v1, p4}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "plat_url"

    const-string v2, "create_order_req"

    .line 106
    new-instance v3, Lcom/zkunity/google/GooglePlayUtils$4;

    invoke-direct {v3, p0}, Lcom/zkunity/google/GooglePlayUtils$4;-><init>(Lcom/zkunity/google/GooglePlayUtils;)V

    .line 105
    invoke-static {v1, v2, v0, v3}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    goto :goto_0
.end method
