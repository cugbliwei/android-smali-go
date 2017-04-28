.class Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;
.super Ljava/lang/Object;
.source "FacebookUtils.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/facebook/FacebookUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookLoginCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/facebook/FacebookUtils;


# direct methods
.method private constructor <init>(Lcom/zkunity/facebook/FacebookUtils;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;->this$0:Lcom/zkunity/facebook/FacebookUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/facebook/FacebookUtils;Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;-><init>(Lcom/zkunity/facebook/FacebookUtils;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 102
    .local v0, "msg":Lcom/zkunity/json/MJsonObject;
    const-string v1, "uri"

    const-string v2, "sLoginCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "rs"

    const v2, -0xa02c

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 104
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 105
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->printStackTrace()V

    .line 110
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    .line 111
    .local v0, "msg":Lcom/zkunity/json/MJsonObject;
    const-string v1, "uri"

    const-string v2, "sLoginCall"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "rs"

    const v2, -0xa02d

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 113
    invoke-static {v0}, Lcom/zkunity/core/SDKManager;->sendMessageToClinet(Lcom/zkunity/json/MJsonObject;)V

    .line 114
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "result"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;->this$0:Lcom/zkunity/facebook/FacebookUtils;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/zkunity/facebook/FacebookUtils;->loginFacebookSucc(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zkunity/facebook/FacebookUtils;->access$0(Lcom/zkunity/facebook/FacebookUtils;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/zkunity/facebook/FacebookUtils$FacebookLoginCallback;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
