.class public Lcom/zkunity/algorithm/AlgorithmData;
.super Ljava/lang/Object;
.source "AlgorithmData.java"


# instance fields
.field private currIndex:I

.field private datas:[C


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/zkunity/algorithm/AlgorithmData;->currIndex:I

    .line 11
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    .line 12
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    iget v1, p0, Lcom/zkunity/algorithm/AlgorithmData;->currIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zkunity/algorithm/AlgorithmData;->currIndex:I

    aput-char p1, v0, v1

    .line 17
    return-void
.end method

.method public mix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    array-length v3, v4

    .line 23
    .local v3, "n":I
    const/4 v2, 0x0

    .line 24
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 25
    :cond_0
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_1

    .line 26
    iget-object v4, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 24
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v4, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    sub-int v5, v3, v2

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public reverseMix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 37
    iget-object v4, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    array-length v2, v4

    .line 38
    .local v2, "n":I
    new-array v3, v2, [C

    .line 39
    .local v3, "ndatas":[C
    const/4 v1, 0x0

    .line 40
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 48
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 41
    :cond_0
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    aget-char v4, v4, v0

    aput-char v4, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sub-int v4, v2, v1

    iget-object v5, p0, Lcom/zkunity/algorithm/AlgorithmData;->datas:[C

    aget-char v5, v5, v0

    aput-char v5, v3, v4

    goto :goto_1
.end method
