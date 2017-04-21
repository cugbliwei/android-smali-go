.class public Lcom/zkunity/model/MJSONArray;
.super Ljava/lang/Object;
.source "MJSONArray.java"


# instance fields
.field private jsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    .line 27
    return-void
.end method

.method public createNewFromNull()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    .line 33
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    .line 34
    return-void
.end method

.method public getMJSONObject(I)Lcom/zkunity/model/MJSONObject;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 37
    new-instance v1, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v1}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 39
    .local v1, "mjsonObject":Lcom/zkunity/model/MJSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zkunity/model/MJSONObject;->bindData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public invokeData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;

    .line 16
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zkunity/model/MJSONArray;->jsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
