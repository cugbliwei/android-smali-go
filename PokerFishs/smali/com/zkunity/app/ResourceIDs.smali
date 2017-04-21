.class public Lcom/zkunity/app/ResourceIDs;
.super Ljava/lang/Object;
.source "ResourceIDs.java"


# static fields
.field public static final DRAWABLE_ID:Ljava/lang/String; = "drawable"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LAYOUT:Ljava/lang/String; = "layout"

.field public static final STRING_ID:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pVariableName"    # Ljava/lang/String;
    .param p2, "pResourcename"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 28
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
