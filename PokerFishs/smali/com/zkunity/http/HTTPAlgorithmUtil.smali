.class public Lcom/zkunity/http/HTTPAlgorithmUtil;
.super Ljava/lang/Object;
.source "HTTPAlgorithmUtil.java"


# static fields
.field private static algorithm:Lcom/zkunity/algorithm/Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/zkunity/algorithm/Algorithm;

    const-string v1, "confValue"

    invoke-static {v1}, Lcom/zkunity/config/AppConfig;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zkunity/algorithm/Algorithm;-><init>(I)V

    sput-object v0, Lcom/zkunity/http/HTTPAlgorithmUtil;->algorithm:Lcom/zkunity/algorithm/Algorithm;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/zkunity/http/HTTPAlgorithmUtil;->algorithm:Lcom/zkunity/algorithm/Algorithm;

    invoke-virtual {v0, p0}, Lcom/zkunity/algorithm/Algorithm;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/zkunity/http/HTTPAlgorithmUtil;->algorithm:Lcom/zkunity/algorithm/Algorithm;

    invoke-virtual {v0, p0}, Lcom/zkunity/algorithm/Algorithm;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
