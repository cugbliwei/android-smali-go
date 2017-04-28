.class Lcom/p/AlbumUtil$1;
.super Ljava/lang/Object;
.source "AlbumUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/p/AlbumUtil;->openImageSelect(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/p/AlbumUtil$1;->val$act:Landroid/app/Activity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    if-nez p2, :cond_1

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/p/AlbumUtil$1;->val$act:Landroid/app/Activity;

    const-class v2, Lcom/p/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/p/AlbumUtil$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/p/AlbumUtil$1;->val$act:Landroid/app/Activity;

    const-class v2, Lcom/p/PicSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/p/AlbumUtil$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
