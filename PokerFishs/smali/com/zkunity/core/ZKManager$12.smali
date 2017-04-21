.class Lcom/zkunity/core/ZKManager$12;
.super Ljava/lang/Object;
.source "ZKManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/zkunity/core/ZKManager$12;->this$0:Lcom/zkunity/core/ZKManager;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zkunity/core/ZKManager$12;->this$0:Lcom/zkunity/core/ZKManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zkunity/core/ZKManager;->access$1(Lcom/zkunity/core/ZKManager;Ljava/lang/String;)V

    .line 251
    return-void
.end method
