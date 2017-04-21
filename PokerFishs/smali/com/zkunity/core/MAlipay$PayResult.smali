.class public Lcom/zkunity/core/MAlipay$PayResult;
.super Ljava/lang/Object;
.source "MAlipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/MAlipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayResult"
.end annotation


# instance fields
.field private memo:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/zkunity/core/MAlipay;


# direct methods
.method public constructor <init>(Lcom/zkunity/core/MAlipay;Ljava/lang/String;)V
    .locals 5
    .param p2, "rawResult"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zkunity/core/MAlipay$PayResult;->this$0:Lcom/zkunity/core/MAlipay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 131
    :cond_1
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "resultParams":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 133
    .local v0, "resultParam":Ljava/lang/String;
    const-string v4, "resultStatus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    const-string v4, "resultStatus"

    invoke-direct {p0, v0, v4}, Lcom/zkunity/core/MAlipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zkunity/core/MAlipay$PayResult;->resultStatus:Ljava/lang/String;

    .line 136
    :cond_2
    const-string v4, "result"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    const-string v4, "result"

    invoke-direct {p0, v0, v4}, Lcom/zkunity/core/MAlipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zkunity/core/MAlipay$PayResult;->result:Ljava/lang/String;

    .line 139
    :cond_3
    const-string v4, "memo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    const-string v4, "memo"

    invoke-direct {p0, v0, v4}, Lcom/zkunity/core/MAlipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zkunity/core/MAlipay$PayResult;->memo:Ljava/lang/String;

    .line 132
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 153
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zkunity/core/MAlipay$PayResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zkunity/core/MAlipay$PayResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zkunity/core/MAlipay$PayResult;->resultStatus:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zkunity/core/MAlipay$PayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/MAlipay$PayResult;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string v1, "};result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/MAlipay$PayResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
