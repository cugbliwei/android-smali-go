.class public Lcom/zkunity/google/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x3012ac13b48bb1d3L


# instance fields
.field mResult:Lcom/zkunity/google/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/zkunity/google/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/zkunity/google/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zkunity/google/IabException;-><init>(Lcom/zkunity/google/IabResult;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 41
    new-instance v0, Lcom/zkunity/google/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/zkunity/google/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/zkunity/google/IabException;-><init>(Lcom/zkunity/google/IabResult;Ljava/lang/Exception;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/zkunity/google/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/zkunity/google/IabResult;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zkunity/google/IabException;-><init>(Lcom/zkunity/google/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/zkunity/google/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/zkunity/google/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/zkunity/google/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lcom/zkunity/google/IabException;->mResult:Lcom/zkunity/google/IabResult;

    .line 38
    return-void
.end method


# virtual methods
.method public getResult()Lcom/zkunity/google/IabResult;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zkunity/google/IabException;->mResult:Lcom/zkunity/google/IabResult;

    return-object v0
.end method
