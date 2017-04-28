.class Lcom/zkunity/google/GooglePlayUtils$3;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/google/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/GooglePlayUtils;->initGooglePlay(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/google/GooglePlayUtils;


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/google/GooglePlayUtils$3;)Lcom/zkunity/google/GooglePlayUtils;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    return-object v0
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/zkunity/google/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/zkunity/google/IabResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    invoke-virtual {p1}, Lcom/zkunity/google/IabResult;->isSuccess()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zkunity/google/GooglePlayUtils;->access$4(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 65
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->isInitOk:Z
    invoke-static {v0}, Lcom/zkunity/google/GooglePlayUtils;->access$5(Lcom/zkunity/google/GooglePlayUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;
    invoke-static {v0}, Lcom/zkunity/google/GooglePlayUtils;->access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;

    move-result-object v0

    new-instance v1, Lcom/zkunity/google/GooglePlayUtils$3$1;

    invoke-direct {v1, p0}, Lcom/zkunity/google/GooglePlayUtils$3$1;-><init>(Lcom/zkunity/google/GooglePlayUtils$3;)V

    invoke-virtual {v0, v1}, Lcom/zkunity/google/IabHelper;->queryInventoryAsync(Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;)V

    .line 88
    :cond_0
    return-void
.end method
