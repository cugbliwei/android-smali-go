.class public Lcom/zkunity/app/ZKActivity;
.super Ljava/lang/Object;
.source "ZKActivity.java"


# instance fields
.field private appActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "appActivity"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    .line 14
    return-void
.end method


# virtual methods
.method public getAppActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResource()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zkunity/app/ZKActivity;->appActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
