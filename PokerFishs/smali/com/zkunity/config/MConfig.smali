.class public Lcom/zkunity/config/MConfig;
.super Ljava/lang/Object;
.source "MConfig.java"


# static fields
.field private static configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isLimit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zkunity/config/MConfig;->isLimit:Z

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zkunity/config/MConfig;->configs:Ljava/util/Map;

    .line 14
    sget-object v0, Lcom/zkunity/config/MConfig;->configs:Ljava/util/Map;

    const-string v1, "baseUrl"

    const-string v2, "http://dyq-zsdk.pokerfishs.com/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/zkunity/config/MConfig;->configs:Ljava/util/Map;

    const-string v1, "baseUrl_isLimit"

    const-string v2, "http://dyq-zsdk-test.pokerfishs.com/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cName"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lcom/zkunity/config/MConfig;->isLimit:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_isLimit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    :cond_0
    sget-object v0, Lcom/zkunity/config/MConfig;->configs:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zkunity/config/MConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method public static setIsLimit(Z)V
    .locals 0
    .param p0, "isLimit"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/zkunity/config/MConfig;->isLimit:Z

    .line 20
    return-void
.end method
