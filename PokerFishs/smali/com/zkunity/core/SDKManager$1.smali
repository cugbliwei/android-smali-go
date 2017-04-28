.class Lcom/zkunity/core/SDKManager$1;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKManager;->sendMessageToClinetBySafe(Lcom/zkunity/json/MJsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Lcom/zkunity/json/MJsonObject;


# direct methods
.method constructor <init>(Lcom/zkunity/json/MJsonObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKManager$1;->val$msg:Lcom/zkunity/json/MJsonObject;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "ZSDKCallbackObject"

    .line 59
    const-string v1, "ZSDKPlatformCallBack"

    iget-object v2, p0, Lcom/zkunity/core/SDKManager$1;->val$msg:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v2}, Lcom/zkunity/json/MJsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
