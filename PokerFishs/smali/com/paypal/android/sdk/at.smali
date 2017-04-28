.class public Lcom/paypal/android/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static a:Lcom/paypal/android/sdk/bc;

.field private static final b:Ljava/lang/String;

.field private static x:Lcom/paypal/android/sdk/ar;

.field private static final y:Ljava/lang/Object;

.field private static z:Lcom/paypal/android/sdk/at;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/paypal/android/sdk/ap;

.field private l:Lcom/paypal/android/sdk/as;

.field private m:Lcom/paypal/android/sdk/as;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;

.field private p:Landroid/location/Location;

.field private q:Ljava/util/Timer;

.field private r:Landroid/os/Handler;

.field private s:Lcom/paypal/android/sdk/ay;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/ar;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ar;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->x:Lcom/paypal/android/sdk/ar;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->y:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/at;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/at;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/at;->g:I

    return v0
.end method

.method private static a(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Lcom/paypal/android/sdk/at;
    .locals 2

    sget-object v1, Lcom/paypal/android/sdk/at;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/at;

    invoke-direct {v0}, Lcom/paypal/android/sdk/at;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "Known SecurityException on some devices"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->e()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PRD"

    const-string v3, "Using custom pairing id"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;
    .locals 8

    const/4 v3, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/high16 v1, -0x80000000

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v0, :cond_2

    move v2, v1

    move v4, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v5

    goto :goto_0
.end method

.method private a(Lcom/paypal/android/sdk/ap;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Configuration loaded"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ap;->e()J

    move-result-wide v4

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending logRiskMetadata every "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionTimeout set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compTimeout set to    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->e:J

    mul-long v0, v4, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->f:J

    mul-long v0, v2, v10

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ax;->a(J)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/paypal/android/sdk/at;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Starting LogRiskMetadataTask"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    new-instance v1, Lcom/paypal/android/sdk/au;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/au;-><init>(Lcom/paypal/android/sdk/at;)V

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/paypal/android/sdk/at;->e:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    iput-object v0, p1, Lcom/paypal/android/sdk/as;->ah:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/paypal/android/sdk/as;->a(Lcom/paypal/android/sdk/as;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appGuid"

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "libraryVersion"

    invoke-static {}, Lcom/paypal/android/sdk/at;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "additionalData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Dyson Risk Data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->h()Z

    move-result v5

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new LogRiskMetadataRequest to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "endpointIsStage: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (using SSL: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/be;

    iget-object v6, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    if-nez v5, :cond_4

    :goto_3
    invoke-direct {v0, v4, v3, v6, v1}, Lcom/paypal/android/sdk/be;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Z)V

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bi;->a(Lcom/paypal/android/sdk/bh;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/paypal/android/sdk/at;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/at;->g:I

    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/at;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/paypal/android/sdk/at;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/paypal/android/sdk/at;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/at;)J
    .locals 2

    iget-wide v0, p0, Lcom/paypal/android/sdk/at;->f:J

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Dyson/%S (%S %S)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "3.5.6.release"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/at;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/at;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " update not sent correctly, retrying..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "full"

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/ax;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    goto :goto_0

    :cond_3
    const-string v0, "incremental"

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    goto :goto_0
.end method

.method static synthetic g(Lcom/paypal/android/sdk/at;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/at;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/at;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "https://b.stats.paypal.com/counter.cgi?p="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    sget-object v1, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Beacon not recognize host app"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Beacon pairing id empty"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/paypal/android/sdk/bn;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v0, "emptyIp"

    invoke-static {v0}, Lcom/paypal/android/sdk/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon Request URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/ba;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ao;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bi;->a(Lcom/paypal/android/sdk/bh;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v3, "error reading property file"

    invoke-static {v2, v3, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic j(Lcom/paypal/android/sdk/at;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/paypal/android/sdk/at;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private l()Lcom/paypal/android/sdk/as;
    .locals 15

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v4, Lcom/paypal/android/sdk/as;

    invoke-direct {v4}, Lcom/paypal/android/sdk/as;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->i()Lcom/paypal/android/sdk/bl;

    move-result-object v11

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v7, v8}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    move-object v10, v7

    :goto_1
    iget-object v7, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v7, v8}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v9, v2

    :goto_2
    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v7}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v7}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_1
    move v8, v6

    :goto_3
    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "unknown ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v3

    :goto_4
    sget-object v2, Lcom/paypal/android/sdk/bm;->w:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/paypal/android/sdk/bm;->a:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/paypal/android/sdk/bm;->N:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->U:Ljava/lang/String;

    :cond_4
    sget-object v2, Lcom/paypal/android/sdk/bm;->L:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    if-nez v2, :cond_3f

    sget-object v2, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v2

    iput v2, v4, Lcom/paypal/android/sdk/as;->Q:I

    :cond_5
    :goto_5
    sget-object v2, Lcom/paypal/android/sdk/bm;->M:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->R:Ljava/lang/String;

    :cond_6
    sget-object v2, Lcom/paypal/android/sdk/bm;->u:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->w:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    :cond_7
    sget-object v2, Lcom/paypal/android/sdk/bm;->R:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v14, "android_id"

    invoke-static {v2, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;

    move-result-object v2

    sget-object v14, Lcom/paypal/android/sdk/bm;->b:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v14}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ao;->a()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    :cond_9
    sget-object v14, Lcom/paypal/android/sdk/bm;->c:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v14}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ao;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    :cond_a
    sget-object v2, Lcom/paypal/android/sdk/bm;->d:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v6, :cond_40

    move v2, v5

    :goto_6
    iput v2, v4, Lcom/paypal/android/sdk/as;->d:I

    :cond_b
    sget-object v2, Lcom/paypal/android/sdk/bm;->H:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v6, :cond_41

    move v2, v5

    :goto_7
    iput v2, v4, Lcom/paypal/android/sdk/as;->O:I

    :cond_c
    sget-object v2, Lcom/paypal/android/sdk/bm;->I:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v6, :cond_42

    move v2, v5

    :goto_8
    iput v2, v4, Lcom/paypal/android/sdk/as;->N:I

    :cond_d
    sget-object v2, Lcom/paypal/android/sdk/bm;->e:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v10, :cond_43

    move-object v2, v3

    :goto_9
    iput-object v2, v4, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    :cond_e
    sget-object v2, Lcom/paypal/android/sdk/bm;->Z:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v8, :cond_44

    invoke-static {v1}, Lcom/paypal/android/sdk/at;->a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_a
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->ag:Ljava/util/List;

    :cond_f
    sget-object v1, Lcom/paypal/android/sdk/bm;->f:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v7, :cond_45

    move v1, v5

    :goto_b
    iput v1, v4, Lcom/paypal/android/sdk/as;->f:I

    :cond_10
    sget-object v1, Lcom/paypal/android/sdk/bm;->G:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->P:Ljava/lang/String;

    :cond_11
    const-string v1, "3.5.6.release"

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-nez v1, :cond_46

    move-object v1, v3

    :goto_c
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/bm;->g:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v9, :cond_47

    move-object v1, v3

    :goto_d
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    :cond_12
    sget-object v1, Lcom/paypal/android/sdk/bm;->h:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v12, :cond_48

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    :cond_13
    sget-object v1, Lcom/paypal/android/sdk/bm;->i:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    :cond_14
    sget-object v1, Lcom/paypal/android/sdk/bm;->j:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    :cond_15
    sget-object v1, Lcom/paypal/android/sdk/bm;->k:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/paypal/android/sdk/as;->n:J

    :cond_16
    sget-object v1, Lcom/paypal/android/sdk/bm;->l:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/paypal/android/sdk/bn;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    :cond_17
    sget-object v1, Lcom/paypal/android/sdk/bm;->V:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/paypal/android/sdk/bn;->a(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    :cond_18
    sget-object v1, Lcom/paypal/android/sdk/bm;->n:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v12, :cond_49

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_f
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    :cond_19
    sget-object v1, Lcom/paypal/android/sdk/bm;->o:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/paypal/android/sdk/bn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    :cond_1a
    sget-object v1, Lcom/paypal/android/sdk/bm;->p:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    :cond_1b
    sget-object v1, Lcom/paypal/android/sdk/bm;->q:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->u:Ljava/lang/String;

    :cond_1c
    sget-object v1, Lcom/paypal/android/sdk/bm;->r:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    if-nez v1, :cond_4a

    move-object v1, v3

    :goto_10
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->v:Landroid/location/Location;

    :cond_1d
    sget-object v1, Lcom/paypal/android/sdk/bm;->s:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v7, :cond_4b

    move v1, v5

    :goto_11
    iput v1, v4, Lcom/paypal/android/sdk/as;->w:I

    :cond_1e
    sget-object v1, Lcom/paypal/android/sdk/bm;->t:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-nez v10, :cond_4c

    move-object v1, v3

    :goto_12
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    :cond_1f
    sget-object v1, Lcom/paypal/android/sdk/bm;->v:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    :cond_20
    sget-object v1, Lcom/paypal/android/sdk/bm;->x:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/paypal/android/sdk/ax;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->B:Ljava/lang/String;

    :cond_21
    sget-object v1, Lcom/paypal/android/sdk/bm;->y:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->C:Ljava/lang/Boolean;

    :cond_22
    sget-object v1, Lcom/paypal/android/sdk/bm;->z:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    :cond_23
    sget-object v1, Lcom/paypal/android/sdk/bm;->Q:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v12, :cond_4d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_13
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->E:Ljava/lang/String;

    :cond_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_25

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    :cond_25
    sget-object v1, Lcom/paypal/android/sdk/bm;->A:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/as;->F:Ljava/lang/Boolean;

    :cond_26
    sget-object v1, Lcom/paypal/android/sdk/bm;->B:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-nez v10, :cond_4e

    move-object v1, v3

    :goto_14
    iput-object v1, v4, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    :cond_27
    sget-object v1, Lcom/paypal/android/sdk/bm;->C:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v12, :cond_4f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_15
    iput-object v0, v4, Lcom/paypal/android/sdk/as;->H:Ljava/lang/String;

    :cond_28
    sget-object v0, Lcom/paypal/android/sdk/bm;->D:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/as;->I:J

    :cond_29
    sget-object v0, Lcom/paypal/android/sdk/bm;->E:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/paypal/android/sdk/bn;->c()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/as;->J:J

    :cond_2a
    sget-object v0, Lcom/paypal/android/sdk/bm;->F:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->K:Ljava/lang/String;

    :cond_2b
    sget-object v0, Lcom/paypal/android/sdk/bm;->W:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Boolean;

    :cond_2c
    sget-object v0, Lcom/paypal/android/sdk/bm;->X:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->M:Ljava/lang/Integer;

    :cond_2d
    sget-object v0, Lcom/paypal/android/sdk/bm;->J:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/paypal/android/sdk/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->S:Ljava/lang/Boolean;

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/bm;->K:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/paypal/android/sdk/az;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->T:Ljava/lang/Boolean;

    :cond_2f
    sget-object v0, Lcom/paypal/android/sdk/bm;->m:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->f()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "knownApps error"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_50

    :goto_17
    iput-object v3, v4, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    :cond_32
    sget-object v0, Lcom/paypal/android/sdk/bm;->O:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/as;->V:J

    :cond_33
    sget-object v0, Lcom/paypal/android/sdk/bm;->P:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/as;->W:J

    :cond_34
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->ah:Ljava/util/Map;

    sget-object v0, Lcom/paypal/android/sdk/bm;->S:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    :cond_35
    sget-object v0, Lcom/paypal/android/sdk/bm;->T:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/paypal/android/sdk/bn;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    :cond_36
    sget-object v0, Lcom/paypal/android/sdk/bm;->U:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/paypal/android/sdk/bn;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    :cond_37
    sget-object v0, Lcom/paypal/android/sdk/bm;->v:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    :cond_38
    sget-object v0, Lcom/paypal/android/sdk/bm;->Y:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, v4, Lcom/paypal/android/sdk/as;->Q:I

    sget-object v1, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->ad:Ljava/lang/String;

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v4, Lcom/paypal/android/sdk/as;->I:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/as;->af:Ljava/lang/String;

    :goto_18
    move-object v3, v4

    goto/16 :goto_0

    :cond_3a
    move-object v10, v3

    goto/16 :goto_1

    :cond_3b
    move-object v9, v3

    goto/16 :goto_2

    :cond_3c
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3

    :pswitch_0
    const-string v2, "none"

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :pswitch_1
    const-string v2, "gsm"

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v8, :cond_3d

    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-class v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_19
    move-object v6, v3

    move-object v7, v2

    goto/16 :goto_4

    :cond_3d
    move-object v2, v3

    goto :goto_19

    :catch_1
    move-exception v2

    :try_start_4
    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v7, "Known SecurityException on some devices: "

    invoke-static {v6, v7, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :pswitch_2
    const-string v2, "cdma"

    iput-object v2, v4, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v8, :cond_3e

    :try_start_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-class v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1a
    move-object v6, v2

    move-object v7, v3

    goto/16 :goto_4

    :cond_3e
    move-object v2, v3

    goto :goto_1a

    :catch_2
    move-exception v2

    :try_start_6
    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v7, "Known SecurityException on some devices: "

    invoke-static {v6, v7, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :cond_3f
    iget-object v2, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v2

    iput v2, v4, Lcom/paypal/android/sdk/as;->Q:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "Unknown error in RiskComponent"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_40
    :try_start_7
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    goto/16 :goto_6

    :cond_41
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    goto/16 :goto_7

    :cond_42
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    goto/16 :goto_8

    :cond_43
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    :cond_44
    move-object v1, v3

    goto/16 :goto_a

    :cond_45
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto/16 :goto_b

    :cond_46
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :cond_47
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    :cond_48
    move-object v1, v3

    goto/16 :goto_e

    :cond_49
    move-object v1, v3

    goto/16 :goto_f

    :cond_4a
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_10

    :cond_4b
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto/16 :goto_11

    :cond_4c
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_12

    :cond_4d
    move-object v1, v3

    goto/16 :goto_13

    :cond_4e
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    goto/16 :goto_14

    :cond_4f
    move-object v0, v3

    goto/16 :goto_15

    :cond_50
    move-object v3, v1

    goto/16 :goto_17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ay;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "RISK_MANAGER_CONF_URL"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "RISK_MANAGER_IS_START_ASYNC_SERVICE"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/at;->v:Z

    const-string v0, "RISK_MANAGER_PAIRING_ID"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "RISK_MANAGER_NOTIF_TOKEN"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->w:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/bc;

    const-string v3, "RISK_MANAGER_NETWORK_ADAPTER"

    new-instance v4, Lcom/paypal/android/sdk/bf;

    invoke-direct {v4}, Lcom/paypal/android/sdk/bf;-><init>()V

    invoke-static {p5, v0, v3, v4}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bc;

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bc;

    const-string v0, "RISK_MANAGER_IS_DISABLE_REMOTE_CONFIG"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p5, v0, v3}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v7

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/paypal/android/sdk/bn;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    if-nez p3, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    :goto_0
    iput-object p4, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    iput v6, p0, Lcom/paypal/android/sdk/at;->h:I

    iput v6, p0, Lcom/paypal/android/sdk/at;->g:I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_4

    :try_start_0
    const-string v0, "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json"

    :goto_2
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->f()V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/paypal/android/sdk/aw;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/aw;-><init>(Lcom/paypal/android/sdk/at;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/at;->onLocationChanged(Landroid/location/Location;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/ap;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v7, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/ap;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-object p3, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const-string v3, "PRD"

    const-string v4, "Using custom pairing id"

    invoke-static {v0, v3, v4}, Lcom/paypal/android/sdk/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_4
.end method

.method public final a(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Configuration URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dyson Async URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogRiskMetadataRequest Server returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v2, "responseEnvelope.ack"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    :try_start_3
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LogRiskMetadataRequest Success"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :sswitch_5
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LoadConfigurationRequest failed."

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "LogRiskMetadataRequest failed."

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "BeaconRequest failed "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0xa -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_8
        0x16 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/paypal/android/sdk/av;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/av;-><init>(Lcom/paypal/android/sdk/at;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Host activity detected"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->i:J

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/paypal/android/sdk/at;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
