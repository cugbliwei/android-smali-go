.class Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;
.super Ljava/lang/Object;
.source "SDKBiOpt.java"

# interfaces
.implements Lcom/zkunity/http/HTTPSyncResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/SDKBiOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendLoginLogCall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKBiOpt;


# direct methods
.method private constructor <init>(Lcom/zkunity/core/SDKBiOpt;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;-><init>(Lcom/zkunity/core/SDKBiOpt;)V

    return-void
.end method


# virtual methods
.method public action(Lcom/zkunity/json/MJsonObject;)V
    .locals 8
    .param p1, "rs"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    const/4 v7, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 84
    const-string v4, "rs"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x4e21

    if-ne v4, v5, :cond_5

    .line 85
    const-string v4, "mid"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "mid"

    .line 88
    const-string v6, "mid"

    invoke-virtual {p1, v6}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {v4, v5, v6, v7}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zkunity/bi/MobileTools;->saveMobileInfo(Landroid/content/Context;)V

    .line 107
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    invoke-static {v4, v7}, Lcom/zkunity/core/SDKBiOpt;->access$1(Lcom/zkunity/core/SDKBiOpt;Z)V

    .line 126
    :cond_1
    :goto_1
    return-void

    .line 90
    :cond_2
    const-string v4, "login_id"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 92
    .local v3, "n":I
    const/4 v1, 0x0

    .line 93
    .local v1, "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v3, :cond_3

    .line 101
    :goto_3
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 103
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "login_ids_data"

    .line 104
    const-string v6, ""

    .line 102
    invoke-static {v4, v5, v6, v7}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    check-cast v1, Lcom/zkunity/core/SDKBiOpt$LoginID;

    .line 95
    .restart local v1    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1}, Lcom/zkunity/core/SDKBiOpt$LoginID;->getLogin_id()I

    move-result v4

    const-string v5, "login_id"

    invoke-virtual {p1, v5}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 97
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 93
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    .end local v0    # "i":I
    .end local v1    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    .end local v3    # "n":I
    :cond_5
    const-string v4, "rs"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const v5, -0x9c41

    if-ne v4, v5, :cond_1

    .line 109
    const-string v4, "login_id"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    new-instance v1, Lcom/zkunity/core/SDKBiOpt$LoginID;

    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/zkunity/core/SDKBiOpt$LoginID;-><init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$LoginID;)V

    .line 111
    .restart local v1    # "id":Lcom/zkunity/core/SDKBiOpt$LoginID;
    const-string v4, "login_id"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zkunity/core/SDKBiOpt$LoginID;->setLogin_id(I)V

    .line 112
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 115
    .restart local v3    # "n":I
    const-string v4, "login_id"

    invoke-virtual {p1, v4}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 114
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "login_ids_data":Ljava/lang/String;
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_4
    if-lt v0, v3, :cond_6

    .line 121
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "login_ids_data"

    .line 120
    invoke-static {v4, v5, v2, v7}, Lcom/zkunity/nativedata/NativeDataTools;->saveDataByContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    iget-object v4, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # invokes: Lcom/zkunity/core/SDKBiOpt;->sendAllCacheLoginlogs()V
    invoke-static {v4}, Lcom/zkunity/core/SDKBiOpt;->access$2(Lcom/zkunity/core/SDKBiOpt;)V

    goto/16 :goto_1

    .line 117
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zkunity/core/SDKBiOpt$SendLoginLogCall;->this$0:Lcom/zkunity/core/SDKBiOpt;

    # getter for: Lcom/zkunity/core/SDKBiOpt;->login_ids:Ljava/util/List;
    invoke-static {v5}, Lcom/zkunity/core/SDKBiOpt;->access$0(Lcom/zkunity/core/SDKBiOpt;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
