.class Lcom/zkunity/core/PaySelectUtils$3;
.super Ljava/lang/Object;
.source "PaySelectUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zkunity/core/PaySelectUtils;->onOrientation(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zkunity/core/PaySelectUtils;->access$0(Lcom/zkunity/core/PaySelectDialog;)V

    .line 96
    return-void
.end method