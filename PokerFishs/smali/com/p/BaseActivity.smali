.class public abstract Lcom/p/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final REQUEST_PREMISSIONS:I = 0xc006e


# instance fields
.field private request_pres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public checkSelfPermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pres"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 26
    iput-object p1, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v3, "need_reqquest_pres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 29
    array-length v1, p2

    .line 30
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 46
    .local v2, "n_pres":[Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    iput-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    .line 48
    const v4, 0xc006e

    invoke-virtual {p0, v2, v4}, Lcom/p/BaseActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 55
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "n_pres":[Ljava/lang/String;
    :goto_1
    return-void

    .line 31
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_0
    aget-object v4, p2, v0

    invoke-virtual {p0, v4}, Lcom/p/BaseActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 30
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :pswitch_1
    aget-object v4, p2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_1
    iget-object v4, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/p/BaseActivity;->onRequestPermissions(Ljava/lang/String;Z)V

    goto :goto_1

    .line 53
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v4, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/p/BaseActivity;->onRequestPermissions(Ljava/lang/String;Z)V

    goto :goto_1

    .line 31
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onRequestPermissions(Ljava/lang/String;Z)V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v5, 0x0

    .line 59
    const v3, 0xc006e

    if-ne p1, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 61
    .local v1, "n":I
    array-length v3, p2

    if-ne v3, v1, :cond_0

    array-length v3, p3

    if-ne v3, v1, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "permission":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 69
    iget-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 70
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    .line 71
    iget-object v3, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/p/BaseActivity;->onRequestPermissions(Ljava/lang/String;Z)V

    .line 77
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/p/BaseActivity;->onRequestPermissions(Ljava/lang/String;Z)V

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 79
    return-void

    .line 64
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_1
    aget-object v2, p2, v0

    .line 65
    iget-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, p3, v0

    if-nez v3, :cond_2

    .line 66
    iget-object v3, p0, Lcom/p/BaseActivity;->request_pres:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/p/BaseActivity;->request_type:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/p/BaseActivity;->onRequestPermissions(Ljava/lang/String;Z)V

    goto :goto_1
.end method
