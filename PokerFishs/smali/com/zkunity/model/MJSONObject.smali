.class public Lcom/zkunity/model/MJSONObject;
.super Ljava/lang/Object;
.source "MJSONObject.java"


# instance fields
.field private jObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jObject"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    .line 27
    return-void
.end method

.method public createNewFromNull()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    .line 33
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 119
    :goto_0
    return-wide v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 100
    :goto_0
    return-wide v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getMJSONArray(Ljava/lang/String;)Lcom/zkunity/model/MJSONArray;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/zkunity/model/MJSONArray;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONArray;-><init>()V

    .line 134
    .local v0, "array":Lcom/zkunity/model/MJSONArray;
    :try_start_0
    iget-object v2, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zkunity/model/MJSONArray;->bindData(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMJSONObject(Ljava/lang/String;)Lcom/zkunity/model/MJSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v2, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v2}, Lcom/zkunity/model/MJSONObject;-><init>()V

    .line 152
    .local v2, "object":Lcom/zkunity/model/MJSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    .local v1, "jObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    const-string v1, ""

    goto :goto_0
.end method

.method public invokeData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    .line 16
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;
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

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # Z

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # D

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # I

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # J

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putMJSONArray(Ljava/lang/String;Lcom/zkunity/model/MJSONArray;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "array"    # Lcom/zkunity/model/MJSONArray;

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/model/MJSONObject;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
