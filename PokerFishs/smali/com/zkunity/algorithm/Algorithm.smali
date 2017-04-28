.class public Lcom/zkunity/algorithm/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# instance fields
.field private confValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "confValue"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/zkunity/algorithm/Algorithm;->confValue:I

    .line 13
    return-void
.end method

.method private cryptoData(Ljava/lang/String;)Lcom/zkunity/algorithm/AlgorithmData;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v5, Lcom/zkunity/algorithm/AlgorithmData;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/zkunity/algorithm/AlgorithmData;-><init>(I)V

    .line 40
    .local v5, "nData":Lcom/zkunity/algorithm/AlgorithmData;
    const/high16 v0, 0x500000

    .line 41
    .local v0, "amc":I
    iget v6, p0, Lcom/zkunity/algorithm/Algorithm;->confValue:I

    rem-int/2addr v6, v0

    mul-int/2addr v6, v0

    add-int v2, v6, v0

    .line 42
    .local v2, "k":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 43
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 48
    return-object v5

    .line 44
    :cond_0
    rem-int v6, v2, v0

    mul-int/2addr v6, v0

    add-int v2, v6, v0

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/lit8 v7, v2, 0x14

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    int-to-char v4, v6

    .line 46
    .local v4, "nChar":C
    invoke-virtual {v5, v4}, Lcom/zkunity/algorithm/AlgorithmData;->append(C)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 30
    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 29
    invoke-direct {p0, v1}, Lcom/zkunity/algorithm/Algorithm;->cryptoData(Ljava/lang/String;)Lcom/zkunity/algorithm/AlgorithmData;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/zkunity/algorithm/AlgorithmData;->reverseMix()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zkunity/algorithm/Algorithm;->cryptoData(Ljava/lang/String;)Lcom/zkunity/algorithm/AlgorithmData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zkunity/algorithm/AlgorithmData;->mix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    const/4 v1, 0x0

    goto :goto_0
.end method
