.class Lcom/zkunity/core/PaySelectDialog$2;
.super Ljava/lang/Object;
.source "PaySelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/PaySelectDialog;->initContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zkunity/core/PaySelectDialog;


# direct methods
.method constructor <init>(Lcom/zkunity/core/PaySelectDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zkunity/core/PaySelectDialog$2;->this$0:Lcom/zkunity/core/PaySelectDialog;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zkunity/core/PaySelectDialog$2;)Lcom/zkunity/core/PaySelectDialog;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zkunity/core/PaySelectDialog$2;->this$0:Lcom/zkunity/core/PaySelectDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zkunity/core/PaySelectDialog$2$1;

    invoke-direct {v1, p0}, Lcom/zkunity/core/PaySelectDialog$2$1;-><init>(Lcom/zkunity/core/PaySelectDialog$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method
