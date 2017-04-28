.class Lcom/pay/PayDialog$5;
.super Ljava/lang/Object;
.source "PayDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/PayDialog;->closePayAni(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pay/PayDialog;

.field private final synthetic val$payUi:Landroid/widget/RelativeLayout;

.field private final synthetic val$pay_type:I


# direct methods
.method constructor <init>(Lcom/pay/PayDialog;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pay/PayDialog$5;->this$0:Lcom/pay/PayDialog;

    iput-object p2, p0, Lcom/pay/PayDialog$5;->val$payUi:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/pay/PayDialog$5;->val$pay_type:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pay/PayDialog$5;->val$payUi:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget v0, p0, Lcom/pay/PayDialog$5;->val$pay_type:I

    sput v0, Lcom/pay/PayUtils;->pay_select_type:I

    .line 156
    iget-object v0, p0, Lcom/pay/PayDialog$5;->this$0:Lcom/pay/PayDialog;

    invoke-virtual {v0}, Lcom/pay/PayDialog;->dismiss()V

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 150
    return-void
.end method
