.class Lcom/zkunity/core/SDKOpt$1;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->sharePictureToSpace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;

.field private final synthetic val$tmp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$1;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$1;->val$tmp:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$1;->val$tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zkunity/facebook/FacebookUtils;->sharePictureToSpace(Ljava/lang/String;)V

    .line 91
    return-void
.end method
