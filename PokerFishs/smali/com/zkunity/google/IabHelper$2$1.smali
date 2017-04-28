.class Lcom/zkunity/google/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/google/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zkunity/google/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/zkunity/google/Inventory;

.field private final synthetic val$listener:Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/zkunity/google/IabResult;


# direct methods
.method constructor <init>(Lcom/zkunity/google/IabHelper$2;Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;Lcom/zkunity/google/IabResult;Lcom/zkunity/google/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/google/IabHelper$2$1;->this$1:Lcom/zkunity/google/IabHelper$2;

    iput-object p2, p0, Lcom/zkunity/google/IabHelper$2$1;->val$listener:Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/zkunity/google/IabHelper$2$1;->val$result_f:Lcom/zkunity/google/IabResult;

    iput-object p4, p0, Lcom/zkunity/google/IabHelper$2$1;->val$inv_f:Lcom/zkunity/google/Inventory;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/zkunity/google/IabHelper$2$1;->val$listener:Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/zkunity/google/IabHelper$2$1;->val$result_f:Lcom/zkunity/google/IabResult;

    iget-object v2, p0, Lcom/zkunity/google/IabHelper$2$1;->val$inv_f:Lcom/zkunity/google/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/zkunity/google/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/zkunity/google/IabResult;Lcom/zkunity/google/Inventory;)V

    .line 631
    return-void
.end method
