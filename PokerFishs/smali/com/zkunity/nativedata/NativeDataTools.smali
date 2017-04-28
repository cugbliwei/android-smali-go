.class public Lcom/zkunity/nativedata/NativeDataTools;
.super Ljava/lang/Object;
.source "NativeDataTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataWithContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zkunity/nativedata/ContextDataOpt;

    invoke-direct {v0}, Lcom/zkunity/nativedata/ContextDataOpt;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/zkunity/nativedata/ContextDataOpt;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDataWithPermanent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    new-instance v1, Lcom/zkunity/nativedata/ContextDataOpt;

    invoke-direct {v1}, Lcom/zkunity/nativedata/ContextDataOpt;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/zkunity/nativedata/ContextDataOpt;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 45
    new-instance v1, Lcom/zkunity/nativedata/SDFileDataOpt;

    invoke-direct {v1}, Lcom/zkunity/nativedata/SDFileDataOpt;-><init>()V

    invoke-static {p0}, Lcom/zkunity/system/SystemTools;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/zkunity/nativedata/SDFileDataOpt;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/zkunity/nativedata/ContextDataOpt;

    invoke-direct {v1}, Lcom/zkunity/nativedata/ContextDataOpt;-><init>()V

    invoke-virtual {v1, p0, p1, v0, p2}, Lcom/zkunity/nativedata/ContextDataOpt;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static getMJsonDataWithContext(Landroid/content/Context;Ljava/lang/String;)Lcom/zkunity/json/MJsonObject;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-static {p0, p1}, Lcom/zkunity/nativedata/NativeDataTools;->getDataWithContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zkunity/json/MJsonObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMJsonDataWithPermanent(Landroid/content/Context;Ljava/lang/String;Z)Lcom/zkunity/json/MJsonObject;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    .prologue
    .line 35
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-static {p0, p1, p2}, Lcom/zkunity/nativedata/NativeDataTools;->getDataWithPermanent(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zkunity/json/MJsonObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSdCardExist()Z
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/zkunity/nativedata/SDFileDataOpt;

    invoke-direct {v0}, Lcom/zkunity/nativedata/SDFileDataOpt;-><init>()V

    invoke-virtual {v0}, Lcom/zkunity/nativedata/SDFileDataOpt;->isSdCardExist()Z

    move-result v0

    return v0
.end method

.method public static saveDataByContext(Landroid/content/Context;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;
    .param p3, "isAppend"    # Z

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public static saveDataByContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "isAppend"    # Z

    .prologue
    .line 62
    new-instance v0, Lcom/zkunity/nativedata/ContextDataOpt;

    invoke-direct {v0}, Lcom/zkunity/nativedata/ContextDataOpt;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/zkunity/nativedata/ContextDataOpt;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    return-void
.end method

.method public static saveDataByPermanent(Landroid/content/Context;Ljava/lang/String;Lcom/zkunity/json/MJsonObject;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/zkunity/json/MJsonObject;
    .param p3, "isAppend"    # Z

    .prologue
    .line 19
    invoke-virtual {p2}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByPermanent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public static saveDataByPermanent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "isAppend"    # Z

    .prologue
    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v0, Lcom/zkunity/nativedata/SDFileDataOpt;

    invoke-direct {v0}, Lcom/zkunity/nativedata/SDFileDataOpt;-><init>()V

    invoke-static {p0}, Lcom/zkunity/system/SystemTools;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/zkunity/nativedata/SDFileDataOpt;->saveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    new-instance v0, Lcom/zkunity/nativedata/ContextDataOpt;

    invoke-direct {v0}, Lcom/zkunity/nativedata/ContextDataOpt;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/zkunity/nativedata/ContextDataOpt;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
