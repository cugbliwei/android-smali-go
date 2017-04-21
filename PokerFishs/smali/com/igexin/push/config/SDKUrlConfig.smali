.class public Lcom/igexin/push/config/SDKUrlConfig;
.super Ljava/lang/Object;


# static fields
.field public static AMP_ADDRESS_IPS:[Ljava/lang/String;

.field public static BI_ADDRESS_IPS:[Ljava/lang/String;

.field public static CONFIG_ADDRESS_IPS:[Ljava/lang/String;

.field public static INC_ADDRESS_IPS:[Ljava/lang/String;

.field public static LBS_ADDRESS_IPS:[Ljava/lang/String;

.field public static LOG_ADDRESS_IPS:[Ljava/lang/String;

.field public static STATE_ADDRESS_IPS:[Ljava/lang/String;

.field public static XFR_ADDRESS_IPS:[Ljava/lang/String;

.field public static XFR_ADDRESS_IPS_BAK:[Ljava/lang/String;

.field private static a:[Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v6,  ".method static constructor <clinit>()V"
    invoke-static {v5,v6} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "HZ"

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->b:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v3

    const-string v1, "socket://sdk.open.talk.getui.net:5224"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "socket://sdk.open.talk.gepush.com:5224"

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS_BAK:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.phone.igexin.com/api.php"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->BI_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.phone.igexin.com/api.php"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->CONFIG_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.phone.igexin.com/api.php"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->STATE_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.phone.igexin.com/api.php"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->LOG_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.amp.igexin.com/api.htm"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->AMP_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.lbs.igexin.com/api.htm"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->LBS_ADDRESS_IPS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://sdk.open.inc2.igexin.com/api.php"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/push/config/SDKUrlConfig;->INC_ADDRESS_IPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v1,  ".method public constructor <init>()V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmpServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getAmpServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->AMP_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBiUploadServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getBiUploadServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->BI_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCmAddress()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getCmAddress()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " get cm address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " get cm address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getConfigServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getConfigServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->CONFIG_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdcConfigUrl()[Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v2,  ".method public static getIdcConfigUrl()[Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static getIncreaseServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getIncreaseServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->INC_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLbsServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getLbsServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->LBS_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocation()Ljava/lang/String;
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v2,  ".method public static getLocation()Ljava/lang/String;"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getLogServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->LOG_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatServiceUrl()Ljava/lang/String;
    .locals 5

    const-string v3, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v4,  ".method public static getStatServiceUrl()Ljava/lang/String;"
    invoke-static {v3,v4} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->STATE_ADDRESS_IPS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCmAddress(Ljava/lang/String;)V
    .locals 4

    const-string v2, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v3,  ".method public static setCmAddress(Ljava/lang/String;)V"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set cm address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static setIdcConfigUrl([Ljava/lang/String;)V
    .locals 2

    const-string v0, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v1,  ".method public static setIdcConfigUrl([Ljava/lang/String;)V"
    invoke-static {v0,v1} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->a:[Ljava/lang/String;

    return-void
.end method

.method public static setLocation(Ljava/lang/String;)V
    .locals 3

    const-string v1, "======================== PokerFishs/smali/com/igexin/push/config/SDKUrlConfig.smali"
    const-string v2,  ".method public static setLocation(Ljava/lang/String;)V"
    invoke-static {v1,v2} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/igexin/push/core/g;->d:Ljava/lang/String;

    sput-object p0, Lcom/igexin/push/config/SDKUrlConfig;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
