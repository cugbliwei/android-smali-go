.class Lcom/zkunity/core/SDKOpt$2;
.super Ljava/lang/Object;
.source "SDKOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/SDKOpt;->shareContentToSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/SDKOpt;

.field private final synthetic val$contentDescription:Ljava/lang/String;

.field private final synthetic val$contentTitle:Ljava/lang/String;

.field private final synthetic val$contentURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zkunity/core/SDKOpt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/SDKOpt$2;->this$0:Lcom/zkunity/core/SDKOpt;

    iput-object p2, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentDescription:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/zkunity/facebook/FacebookUtils;->getObj()Lcom/zkunity/facebook/FacebookUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentURL:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/zkunity/core/SDKOpt$2;->val$contentDescription:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/zkunity/facebook/FacebookUtils;->shareContentToSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
