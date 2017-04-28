.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gdpv4_chrome_custom_tabs_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "appSettingsParams":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, ","

    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v5, p0, v5}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 201
    .local v1, "request":Lcom/facebook/GraphRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 202
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 94
    .local v0, "canStartLoading":Z
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v2, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 14
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "settingsJSON"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 162
    const-string v1, "android_sdk_error_categories"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 164
    .local v12, "errorClassificationJSON":Lorg/json/JSONArray;
    if-nez v12, :cond_0

    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v9

    .line 170
    .local v9, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    :goto_0
    const-string v1, "app_events_feature_bitmask"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 171
    .local v13, "featureBitmask":I
    and-int/lit8 v1, v13, 0x8

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .line 173
    .local v8, "automaticLoggingEnabled":Z
    :goto_1
    new-instance v0, Lcom/facebook/internal/FetchedAppSettings;

    const-string v1, "supports_implicit_sdk_logging"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "gdpv4_nux_content"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gdpv4_nux_enabled"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "gdpv4_chrome_custom_tabs_enabled"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "app_events_session_timeout"

    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "seamless_login"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v6

    const-string v7, "android_dialog_configs"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    const-string v10, "smart_login_bookmark_icon_url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "smart_login_menu_icon_url"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v0, "result":Lcom/facebook/internal/FetchedAppSettings;
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-object v0

    .line 164
    .end local v0    # "result":Lcom/facebook/internal/FetchedAppSettings;
    .end local v8    # "automaticLoggingEnabled":Z
    .end local v9    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .end local v13    # "featureBitmask":I
    :cond_0
    invoke-static {v12}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v9

    goto :goto_0

    .restart local v9    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    .restart local v13    # "featureBitmask":I
    :cond_1
    move v8, v4

    .line 171
    goto :goto_1
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "dialogConfigResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v2, "dialogConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;>;"
    if-eqz p0, :cond_2

    .line 213
    const-string v6, "data"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 214
    .local v1, "dialogConfigData":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 215
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 216
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v0

    .line 219
    .local v0, "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    if-nez v0, :cond_0

    .line 215
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "dialogName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 226
    .local v4, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    if-nez v4, :cond_1

    .line 227
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 228
    .restart local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 235
    .end local v0    # "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .end local v1    # "dialogConfigData":Lorg/json/JSONArray;
    .end local v3    # "dialogName":Ljava/lang/String;
    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;>;"
    .end local v5    # "i":I
    :cond_2
    return-object v2
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z

    .prologue
    .line 147
    if-nez p1, :cond_0

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/FetchedAppSettings;

    .line 156
    :goto_0
    return-object v1

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    .local v0, "response":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 153
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    goto :goto_0
.end method
