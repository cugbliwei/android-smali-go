.class public Lcom/p/ResTools;
.super Ljava/lang/Object;
.source "ResTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pVariableName"    # Ljava/lang/String;
    .param p2, "pResourcename"    # Ljava/lang/String;

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 22
    :goto_0
    return v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v2, "string"

    invoke-static {p0, p1, v2}, Lcom/p/ResTools;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 32
    .end local v1    # "p":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 30
    .restart local v1    # "p":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 32
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method
