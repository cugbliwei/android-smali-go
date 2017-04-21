.class public Lcom/zkunity/app/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static app:Lcom/zkunity/app/AppManager;


# instance fields
.field private zkActivity:Lcom/zkunity/app/ZKActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/zkunity/app/AppManager;

    invoke-direct {v0}, Lcom/zkunity/app/AppManager;-><init>()V

    sput-object v0, Lcom/zkunity/app/AppManager;->app:Lcom/zkunity/app/AppManager;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getManager()Lcom/zkunity/app/AppManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/zkunity/app/AppManager;->app:Lcom/zkunity/app/AppManager;

    return-object v0
.end method


# virtual methods
.method public getActivityString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 57
    invoke-static {v0, v1, p2}, Lcom/zkunity/app/MetaDataUtil;->getActivityString(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getActivityString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/app/ApkManager;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPremission()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/app/ApkManager;->getAppPremission(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/app/ApkManager;->getAppSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/zkunity/app/MetaDataUtil;->getAppString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getAppString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/app/ApkManager;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 99
    .line 100
    const-string v0, "drawable"

    .line 99
    invoke-static {p1, p2, v0}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrawableId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/zkunity/app/AppManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zkunity/app/ApkManager;->getIconId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "id"

    invoke-static {p1, p2, v0}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "layout"

    invoke-static {p1, p2, v0}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    return v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReceiverString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "keyName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lcom/zkunity/app/MetaDataUtil;->getServiceString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/zkunity/app/AppManager;->getServiceString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "keyName"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Lcom/zkunity/app/MetaDataUtil;->getServiceString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/zkunity/app/AppManager;->getServiceString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 89
    const-string v0, "string"

    .line 88
    invoke-static {p1, p2, v0}, Lcom/zkunity/app/ResourceIDs;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStringId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pVariableName"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    invoke-virtual {v0}, Lcom/zkunity/app/ZKActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zkunity/app/AppManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initAppManager(Landroid/app/Activity;)V
    .locals 1
    .param p1, "appActivity"    # Landroid/app/Activity;

    .prologue
    .line 27
    new-instance v0, Lcom/zkunity/app/ZKActivity;

    invoke-direct {v0, p1}, Lcom/zkunity/app/ZKActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zkunity/app/AppManager;->zkActivity:Lcom/zkunity/app/ZKActivity;

    .line 28
    return-void
.end method
