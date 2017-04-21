.class Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;
.super Ljava/lang/Object;
.source "MobileInfoManager.java"

# interfaces
.implements Lcom/zkunity/network/SyncNetworkCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/MobileInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/MobileInfoManager;


# direct methods
.method private constructor <init>(Lcom/zkunity/core/MobileInfoManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;->this$0:Lcom/zkunity/core/MobileInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/core/MobileInfoManager;Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;-><init>(Lcom/zkunity/core/MobileInfoManager;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 91
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "rs"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v1, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v1}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 76
    .local v1, "mObj":Lcom/zkunity/model/MJSONObject;
    invoke-virtual {v1, p2}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 77
    const-string v3, "rs"

    invoke-virtual {v1, v3}, Lcom/zkunity/model/MJSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x4e21

    if-ne v3, v4, :cond_1

    .line 78
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v3

    .line 79
    const-string v4, "mbinfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mi"

    const-string v4, "mi"

    invoke-virtual {v1, v4}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v3, "rs"

    invoke-virtual {v1, v3}, Lcom/zkunity/model/MJSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x2afc

    if-ne v3, v4, :cond_0

    .line 84
    iget-object v3, p0, Lcom/zkunity/core/MobileInfoManager$MobileInfoListener;->this$0:Lcom/zkunity/core/MobileInfoManager;

    invoke-virtual {v3}, Lcom/zkunity/core/MobileInfoManager;->pushMobileInfos()V

    goto :goto_0
.end method
