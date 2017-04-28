.class Lcom/pay/PayDialog$2;
.super Ljava/lang/Object;
.source "PayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/PayDialog;->initClickActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pay/PayDialog;


# direct methods
.method constructor <init>(Lcom/pay/PayDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pay/PayDialog$2;->this$0:Lcom/pay/PayDialog;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pay/PayDialog$2;->this$0:Lcom/pay/PayDialog;

    const/4 v1, 0x0

    # invokes: Lcom/pay/PayDialog;->closePayAni(I)V
    invoke-static {v0, v1}, Lcom/pay/PayDialog;->access$0(Lcom/pay/PayDialog;I)V

    .line 112
    return-void
.end method
