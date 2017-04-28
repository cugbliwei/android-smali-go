.class public Lcom/zkunity/json/MJsonArray;
.super Ljava/lang/Object;
.source "MJsonArray.java"


# instance fields
.field private jArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jArray"    # Lorg/json/JSONArray;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    .line 25
    return-void
.end method


# virtual methods
.method public getBool(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 97
    :goto_0
    return-wide v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMObj(I)Lcom/zkunity/json/MJsonObject;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 134
    :try_start_0
    new-instance v1, Lcom/zkunity/json/MJsonObject;

    iget-object v2, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zkunity/json/MJsonObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObj(I)Lorg/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0
.end method

.method public put(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public put(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Lcom/zkunity/json/MJsonObject;)V
    .locals 3
    .param p1, "value"    # Lcom/zkunity/json/MJsonObject;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/zkunity/json/MJsonObject;->getObj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/json/MJsonArray;->jArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
