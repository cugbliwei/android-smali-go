.class public Lcom/zkunity/sdk/ZKResEvent;
.super Ljava/lang/Object;
.source "ZKResEvent.java"


# instance fields
.field private jObject:Lcom/zkunity/model/MJSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewFromNull()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 24
    :cond_0
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    iput-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 25
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->createNewFromNull()V

    .line 26
    return-void
.end method

.method public invokeData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 16
    :cond_0
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    iput-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 17
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/zkunity/model/MJSONObject;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # D

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/model/MJSONObject;->putDouble(Ljava/lang/String;D)V

    .line 51
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/zkunity/model/MJSONObject;->putInt(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zkunity/model/MJSONObject;->putLong(Ljava/lang/String;J)V

    .line 46
    return-void
.end method

.method public putMJSONArray(Ljava/lang/String;Lcom/zkunity/model/MJSONArray;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "array"    # Lcom/zkunity/model/MJSONArray;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/zkunity/model/MJSONObject;->putMJSONArray(Ljava/lang/String;Lcom/zkunity/model/MJSONArray;)V

    .line 55
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/zkunity/model/MJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKResEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string v0, "ZKResEvent json null..."

    goto :goto_0
.end method
