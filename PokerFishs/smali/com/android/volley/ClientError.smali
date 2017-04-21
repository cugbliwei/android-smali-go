.class public Lcom/android/volley/ClientError;
.super Lcom/android/volley/VolleyError;
.source "ClientError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 15
    return-void
.end method
