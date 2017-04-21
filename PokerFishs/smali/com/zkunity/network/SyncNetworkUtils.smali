.class public Lcom/zkunity/network/SyncNetworkUtils;
.super Ljava/lang/Object;
.source "SyncNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zkunity/network/SyncNetworkUtils$UTFStringRequest;
    }
.end annotation


# static fields
.field private static rq:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)I
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lcom/zkunity/network/SyncNetworkUtils;->calcEncryptKey(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/zkunity/network/SyncNetworkUtils;->getEncryptString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/zkunity/network/SyncNetworkUtils;->getKey()I

    move-result v0

    return v0
.end method

.method private static calcEncryptKey(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 119
    rem-int/lit16 v0, p0, 0x277

    xor-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static checkTools()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/zkunity/network/SyncNetworkUtils;->rq:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/zkunity/app/AppManager;->getManager()Lcom/zkunity/app/AppManager;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/zkunity/app/AppManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/zkunity/network/SyncNetworkUtils;->rq:Lcom/android/volley/RequestQueue;

    .line 32
    :cond_0
    return-void
.end method

.method private static getEncryptString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ek"    # I
    .param p1, "resStr"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v3, "sBuffer":Ljava/lang/StringBuffer;
    const/high16 v0, 0xa00000

    .line 109
    .local v0, "amc":I
    rem-int v4, p0, v0

    mul-int/2addr v4, v0

    add-int p0, v4, v0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 111
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 112
    :cond_0
    rem-int v4, p0, v0

    mul-int/2addr v4, v0

    add-int p0, v4, v0

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shr-int/lit8 v5, p0, 0x14

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getKey()I
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x12c

    return v0
.end method

.method public static postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/zkunity/network/SyncNetworkCall;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-static {}, Lcom/zkunity/network/SyncNetworkUtils;->checkTools()V

    .line 37
    new-instance v0, Lcom/zkunity/network/SyncNetworkUtils$3;

    .line 38
    new-instance v3, Lcom/zkunity/network/SyncNetworkUtils$1;

    invoke-direct {v3, p2}, Lcom/zkunity/network/SyncNetworkUtils$1;-><init>(Lcom/zkunity/network/SyncNetworkCall;)V

    .line 57
    new-instance v4, Lcom/zkunity/network/SyncNetworkUtils$2;

    invoke-direct {v4, p2}, Lcom/zkunity/network/SyncNetworkUtils$2;-><init>(Lcom/zkunity/network/SyncNetworkCall;)V

    move-object v2, p0

    move-object v5, p1

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/zkunity/network/SyncNetworkUtils$3;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 82
    .local v0, "req":Lcom/zkunity/network/SyncNetworkUtils$UTFStringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v3, 0x1388

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/zkunity/network/SyncNetworkUtils$UTFStringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 83
    sget-object v1, Lcom/zkunity/network/SyncNetworkUtils;->rq:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 84
    return-void
.end method
