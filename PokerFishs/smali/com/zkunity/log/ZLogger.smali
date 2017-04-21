.class public Lcom/zkunity/log/ZLogger;
.super Ljava/lang/Object;
.source "ZLogger.java"


# static fields
.field private static logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "ZLogger-logInfo"

    sput-object v0, Lcom/zkunity/log/ZLogger;->logTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logInfo"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-object v0, Lcom/zkunity/log/ZLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
