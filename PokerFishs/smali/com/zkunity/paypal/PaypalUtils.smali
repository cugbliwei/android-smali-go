.class public Lcom/zkunity/paypal/PaypalUtils;
.super Ljava/lang/Object;
.source "PaypalUtils.java"


# static fields
.field private static obj:Lcom/zkunity/paypal/PaypalUtils;


# instance fields
.field private config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private gTransactionId:Ljava/lang/String;

.field private isTestTmp:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zkunity/paypal/PaypalUtils;->gTransactionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zkunity/paypal/PaypalUtils;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zkunity/paypal/PaypalUtils;->isTestTmp:Z

    return-void
.end method

.method static synthetic access$2(Lcom/zkunity/paypal/PaypalUtils;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zkunity/paypal/PaypalUtils;->gTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/zkunity/paypal/PaypalUtils;->saveSQLiteInfo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/zkunity/paypal/PaypalUtils;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$5(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p7}, Lcom/zkunity/paypal/PaypalUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V

    return-void
.end method

.method static synthetic access$6(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/zkunity/paypal/PaypalUtils;->deleteSQLiteInfo(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSQLiteInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "g_transaction_id"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v2, "orders"

    invoke-static {v2}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/zkunity/paypal/PaypalUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 219
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v2, "paypal"

    const-string v3, "orderid=?"

    invoke-static {v0, v2, v3, v1}, Lcom/zkunity/nativedata/SQLiteOpt;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    .end local v1    # "whereArgs":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 11
    .param p1, "g_transaction_id"    # Ljava/lang/String;
    .param p2, "paymentid"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "isTest"    # Z
    .param p6, "waitTime"    # J

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gtz v0, :cond_0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zkunity/paypal/PaypalUtils;->updateSQLiteInfo(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 138
    invoke-direct/range {p0 .. p5}, Lcom/zkunity/paypal/PaypalUtils;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/zkunity/paypal/PaypalUtils$2;

    move-object v1, p0

    move-wide/from16 v2, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/zkunity/paypal/PaypalUtils$2;-><init>(Lcom/zkunity/paypal/PaypalUtils;JLjava/lang/String;Ljava/lang/String;JZ)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 257
    const-string v0, "create table if not exists paypal(orderid text primary key,status INTEGER,type INTEGER,paymentid text, cvtime text);"

    .line 258
    .local v0, "createSql":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/zkunity/nativedata/SQLiteOpt;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getObj()Lcom/zkunity/paypal/PaypalUtils;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zkunity/paypal/PaypalUtils;->obj:Lcom/zkunity/paypal/PaypalUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zkunity/paypal/PaypalUtils;

    invoke-direct {v0}, Lcom/zkunity/paypal/PaypalUtils;-><init>()V

    sput-object v0, Lcom/zkunity/paypal/PaypalUtils;->obj:Lcom/zkunity/paypal/PaypalUtils;

    .line 40
    :cond_0
    sget-object v0, Lcom/zkunity/paypal/PaypalUtils;->obj:Lcom/zkunity/paypal/PaypalUtils;

    return-object v0
.end method

.method private loadSQLiteInfos()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 187
    const-string v1, "orders"

    invoke-static {v1}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 188
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v8}, Lcom/zkunity/paypal/PaypalUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-array v11, v13, [Ljava/lang/String;

    .line 190
    .local v11, "whereArgs":[Ljava/lang/String;
    const-string v1, "select * from paypal"

    invoke-static {v8, v1, v11}, Lcom/zkunity/nativedata/SQLiteOpt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 212
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v11    # "whereArgs":[Ljava/lang/String;
    :cond_0
    return-void

    .line 194
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "whereArgs":[Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "orderid":Ljava/lang/String;
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 196
    .local v10, "status":I
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "paymentid":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "cvtime":Ljava/lang/String;
    if-ne v10, v12, :cond_2

    .line 201
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    if-ne v10, v12, :cond_3

    move v6, v12

    :goto_1
    move-object v1, p0

    .line 200
    invoke-direct/range {v1 .. v6}, Lcom/zkunity/paypal/PaypalUtils;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v6, v13

    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception v9

    .line 204
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveSQLiteInfo(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "g_transaction_id"    # Ljava/lang/String;
    .param p2, "isTest"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    const-string v4, "orders"

    invoke-static {v4}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 242
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/zkunity/paypal/PaypalUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "orderid"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v4, "type"

    if-eqz p2, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v2, "paymentid"

    const-string v4, "-"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "cvtime"

    const-string v4, "-"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "paypal"

    invoke-static {v1, v2, v0}, Lcom/zkunity/nativedata/SQLiteOpt;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 252
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method private sendDataToServer(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1, "g_transaction_id"    # Ljava/lang/String;
    .param p2, "paymentid"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "isTest"    # Z

    .prologue
    .line 157
    new-instance v7, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v7}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 158
    .local v7, "event":Lcom/zkunity/json/MJsonObject;
    const-string v1, "istest"

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v7, v1, v0}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 159
    const-string v0, "g_transaction_id"

    invoke-virtual {v7, v0, p1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "payment_id"

    invoke-virtual {v7, v0, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "cvtime"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v8, "pay_url"

    const-string v9, "paypal"

    new-instance v0, Lcom/zkunity/paypal/PaypalUtils$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zkunity/paypal/PaypalUtils$3;-><init>(Lcom/zkunity/paypal/PaypalUtils;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {v8, v9, v7, v0}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 183
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSQLiteInfo(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "g_transaction_id"    # Ljava/lang/String;
    .param p2, "paymentid"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 226
    const-string v5, "orders"

    invoke-static {v5}, Lcom/zkunity/nativedata/SQLiteOpt;->createOrOpenDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 227
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/zkunity/paypal/PaypalUtils;->ensureTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v5, "paymentid"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "cvtime"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v4

    .line 233
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "paypal"

    const-string v5, "orderid=?"

    invoke-static {v1, v4, v0, v5, v2}, Lcom/zkunity/nativedata/SQLiteOpt;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public closePaypal()V
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    .line 129
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v3, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 130
    return-void
.end method

.method public initPaypal(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSandbox"    # Z
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    iput-object v1, p0, Lcom/zkunity/paypal/PaypalUtils;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 46
    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz p1, :cond_0

    const-string v1, "sandbox"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 48
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1, p2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 50
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 51
    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    .line 50
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    iget-object v2, p0, Lcom/zkunity/paypal/PaypalUtils;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    invoke-direct {p0}, Lcom/zkunity/paypal/PaypalUtils;->loadSQLiteInfos()V

    .line 56
    return-void

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "live"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 102
    const-string v0, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    .line 103
    .local v8, "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    if-eqz v8, :cond_0

    .line 105
    :try_start_0
    const-string v0, "paymentExample"

    invoke-virtual {v8}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/zkunity/paypal/PaypalUtils;->gTransactionId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->getProofOfPayment()Lcom/paypal/android/sdk/payments/ProofOfPayment;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ProofOfPayment;->getPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 108
    iget-boolean v5, p0, Lcom/zkunity/paypal/PaypalUtils;->isTestTmp:Z

    const-wide/16 v6, 0x0

    move-object v0, p0

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/zkunity/paypal/PaypalUtils;->ensureServer(Ljava/lang/String;Ljava/lang/String;JZJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v0, v10

    .line 123
    .end local v8    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    :goto_1
    return v0

    .line 109
    .restart local v8    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    :catch_0
    move-exception v9

    .line 110
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "paymentExample"

    .line 111
    const-string v1, "an extremely unlikely failure occurred: "

    .line 110
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 116
    .end local v8    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_1
    if-nez p2, :cond_2

    .line 117
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    move v0, v10

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 120
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/core/PaySyncPostUtils;->postPayStatus(Ljava/lang/Boolean;)V

    move v0, v10

    .line 121
    goto :goto_1

    :cond_3
    move v0, v11

    .line 123
    goto :goto_1
.end method

.method public startPayPalPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v1, Lcom/paypal/android/sdk/payments/PayPalPayment;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v3, "sale"

    .line 90
    invoke-direct {v1, v2, p2, p3, v3}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v1, "payment":Lcom/paypal/android/sdk/payments/PayPalPayment;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 93
    const-class v3, Lcom/paypal/android/sdk/payments/PaymentActivity;

    .line 92
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.paypal.android.sdk.paypalConfiguration"

    iget-object v3, p0, Lcom/zkunity/paypal/PaypalUtils;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v2, "com.paypal.android.sdk.payment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method

.method public startPayPalPaymentRemote(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;
    .param p4, "g_role_id"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;
    .param p6, "isTest"    # Z

    .prologue
    .line 60
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 61
    .local v0, "event":Lcom/zkunity/json/MJsonObject;
    const-string v1, "type"

    const-string v2, "paypal"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "sid"

    invoke-virtual {v0, v1, p2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "uid"

    invoke-virtual {v0, v1, p5}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "gid"

    invoke-virtual {v0, v1, p3}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "g_role_id"

    invoke-virtual {v0, v1, p4}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "plat_url"

    const-string v2, "create_order_req"

    .line 67
    new-instance v3, Lcom/zkunity/paypal/PaypalUtils$1;

    invoke-direct {v3, p0, p6}, Lcom/zkunity/paypal/PaypalUtils$1;-><init>(Lcom/zkunity/paypal/PaypalUtils;Z)V

    .line 66
    invoke-static {v1, v2, v0, v3}, Lcom/zkunity/http/HTTPTools;->sendPost(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Lcom/zkunity/http/HTTPSyncResponse;)V

    .line 87
    return-void
.end method
