.class Lcom/zkunity/network/SyncNetworkUtils$2;
.super Ljava/lang/Object;
.source "SyncNetworkUtils.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/network/SyncNetworkUtils;->postByHttp(Ljava/lang/String;Ljava/lang/String;Lcom/zkunity/network/SyncNetworkCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private final synthetic val$call:Lcom/zkunity/network/SyncNetworkCall;


# direct methods
.method constructor <init>(Lcom/zkunity/network/SyncNetworkCall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/network/SyncNetworkUtils$2;->val$call:Lcom/zkunity/network/SyncNetworkCall;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "e"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zkunity/network/SyncNetworkUtils$2;->val$call:Lcom/zkunity/network/SyncNetworkCall;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, p1}, Lcom/zkunity/network/SyncNetworkCall;->onFailure(ILcom/android/volley/VolleyError;)V

    .line 61
    return-void
.end method
