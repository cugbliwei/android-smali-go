.class public Lcom/igexin/getuiext/ui/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;F)I
    .locals 4

    const-string v2, "======================== igexin/getuiext/ui/a.smali"
    const-string v3,  ".method public static a(Landroid/content/Context;F)I"
    invoke-static {v2,v3} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
