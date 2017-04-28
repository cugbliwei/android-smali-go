.class Lcom/pay/PayDialog$1;
.super Ljava/lang/Object;
.source "PayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/PayDialog;->addPaySelectOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pay/PayDialog;

.field private final synthetic val$option:Lcom/pay/PaySelectOption;


# direct methods
.method constructor <init>(Lcom/pay/PayDialog;Lcom/pay/PaySelectOption;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pay/PayDialog$1;->this$0:Lcom/pay/PayDialog;

    iput-object p2, p0, Lcom/pay/PayDialog$1;->val$option:Lcom/pay/PaySelectOption;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/pay/PayDialog$1;->this$0:Lcom/pay/PayDialog;

    iget-object v1, p0, Lcom/pay/PayDialog$1;->val$option:Lcom/pay/PaySelectOption;

    invoke-virtual {v1}, Lcom/pay/PaySelectOption;->getLang_type()I

    move-result v1

    # invokes: Lcom/pay/PayDialog;->closePayAni(I)V
    invoke-static {v0, v1}, Lcom/pay/PayDialog;->access$0(Lcom/pay/PayDialog;I)V

    .line 98
    return-void
.end method
