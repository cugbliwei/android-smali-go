.class Lcom/zkunity/google/GooglePlayUtils$3$1;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/GooglePlayUtils$3;->onIabSetupFinished(Lcom/zkunity/google/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zkunity/google/GooglePlayUtils$3;


# direct methods
.method constructor <init>(Lcom/zkunity/google/GooglePlayUtils$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/GooglePlayUtils$3$1;->this$1:Lcom/zkunity/google/GooglePlayUtils$3;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/zkunity/google/IabResult;Lcom/zkunity/google/Inventory;)V
    .locals 7
    .param p1, "result"    # Lcom/zkunity/google/IabResult;
    .param p2, "inv"    # Lcom/zkunity/google/Inventory;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/zkunity/google/IabResult;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string v3, "11111111111111"

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to query inventory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v4, "11111111111111"

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "succ to query inventory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p2}, Lcom/zkunity/google/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "pus":Ljava/util/List;, "Ljava/util/List<Lcom/zkunity/google/Purchase;>;"
    if-nez v2, :cond_2

    move v0, v3

    .line 79
    .local v0, "n":I
    :goto_1
    if-lez v0, :cond_0

    .line 80
    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils$3$1;->this$1:Lcom/zkunity/google/GooglePlayUtils$3;

    # getter for: Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;
    invoke-static {v4}, Lcom/zkunity/google/GooglePlayUtils$3;->access$0(Lcom/zkunity/google/GooglePlayUtils$3;)Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/zkunity/google/GooglePlayUtils;->access$1(Lcom/zkunity/google/GooglePlayUtils;Z)V

    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zkunity/google/Purchase;

    .line 82
    .local v1, "purchase":Lcom/zkunity/google/Purchase;
    iget-object v3, p0, Lcom/zkunity/google/GooglePlayUtils$3$1;->this$1:Lcom/zkunity/google/GooglePlayUtils$3;

    # getter for: Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;
    invoke-static {v3}, Lcom/zkunity/google/GooglePlayUtils$3;->access$0(Lcom/zkunity/google/GooglePlayUtils$3;)Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v3

    # getter for: Lcom/zkunity/google/GooglePlayUtils;->mHelper:Lcom/zkunity/google/IabHelper;
    invoke-static {v3}, Lcom/zkunity/google/GooglePlayUtils;->access$0(Lcom/zkunity/google/GooglePlayUtils;)Lcom/zkunity/google/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/zkunity/google/GooglePlayUtils$3$1;->this$1:Lcom/zkunity/google/GooglePlayUtils$3;

    # getter for: Lcom/zkunity/google/GooglePlayUtils$3;->this$0:Lcom/zkunity/google/GooglePlayUtils;
    invoke-static {v4}, Lcom/zkunity/google/GooglePlayUtils$3;->access$0(Lcom/zkunity/google/GooglePlayUtils$3;)Lcom/zkunity/google/GooglePlayUtils;

    move-result-object v4

    iget-object v4, v4, Lcom/zkunity/google/GooglePlayUtils;->mConsumeFinishedListener:Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, v1, v4}, Lcom/zkunity/google/IabHelper;->consumeAsync(Lcom/zkunity/google/Purchase;Lcom/zkunity/google/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 78
    .end local v0    # "n":I
    .end local v1    # "purchase":Lcom/zkunity/google/Purchase;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method
