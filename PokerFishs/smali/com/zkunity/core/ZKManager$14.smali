.class Lcom/zkunity/core/ZKManager$14;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Lcom/zkunity/core/ImageSelectDialog$OnDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/ZKManager;->openSelect(Lcom/zkunity/sdk/ZKReqEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/ZKManager;


# direct methods
.method constructor <init>(Lcom/zkunity/core/ZKManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$14;->this$0:Lcom/zkunity/core/ZKManager;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$14;->this$0:Lcom/zkunity/core/ZKManager;

    invoke-static {v0, p1}, Lcom/zkunity/core/ZKManager;->access$1(Lcom/zkunity/core/ZKManager;Ljava/lang/String;)V

    .line 280
    return-void
.end method
