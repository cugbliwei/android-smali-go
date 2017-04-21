.class public Lcom/zkunity/sdk/ZKReqEvent;
.super Ljava/lang/Object;
.source "ZKReqEvent.java"


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
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMJSONArray(Ljava/lang/String;)Lcom/zkunity/model/MJSONArray;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getMJSONArray(Ljava/lang/String;)Lcom/zkunity/model/MJSONArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMObjs()Lcom/zkunity/model/MJSONObject;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 16
    :cond_0
    new-instance v0, Lcom/zkunity/model/MJSONObject;

    invoke-direct {v0}, Lcom/zkunity/model/MJSONObject;-><init>()V

    iput-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 17
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0, p1}, Lcom/zkunity/model/MJSONObject;->invokeData(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public replaceData(Lcom/zkunity/model/MJSONObject;)V
    .locals 0
    .param p1, "jObject"    # Lcom/zkunity/model/MJSONObject;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/sdk/ZKReqEvent;->jObject:Lcom/zkunity/model/MJSONObject;

    invoke-virtual {v0}, Lcom/zkunity/model/MJSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 61
    :cond_0
    const-string v0, "ZKReqEvent json null..."

    goto :goto_0
.end method
