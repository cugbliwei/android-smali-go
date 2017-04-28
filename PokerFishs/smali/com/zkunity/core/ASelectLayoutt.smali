.class public Lcom/zkunity/core/ASelectLayoutt;
.super Landroid/widget/RelativeLayout;
.source "ASelectLayoutt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "langType"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "aselectlayout_id":I
    const/4 v6, 0x4

    if-ne p2, v6, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout"

    const-string v8, "bselectlayout"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "pay_select_icon"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 28
    .local v3, "pay_select_icon_id":I
    invoke-virtual {p0, v3}, Lcom/zkunity/core/ASelectLayoutt;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 29
    .local v2, "pay_bus_name":Landroid/widget/ImageView;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "zk_alipay"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 31
    .local v1, "icon_id":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 43
    .end local v1    # "icon_id":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "pay_select_name"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 44
    .local v5, "pay_select_name_id":I
    invoke-virtual {p0, v5}, Lcom/zkunity/core/ASelectLayoutt;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "pay_select_name":Landroid/widget/TextView;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_7

    .line 46
    const/4 v6, 0x1

    if-ne p3, v6, :cond_6

    .line 47
    const-string v6, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_1
    :goto_2
    return-void

    .line 23
    .end local v2    # "pay_bus_name":Landroid/widget/ImageView;
    .end local v3    # "pay_select_icon_id":I
    .end local v4    # "pay_select_name":Landroid/widget/TextView;
    .end local v5    # "pay_select_name_id":I
    :cond_2
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout"

    const-string v8, "aselectlayout"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 32
    .restart local v2    # "pay_bus_name":Landroid/widget/ImageView;
    .restart local v3    # "pay_select_icon_id":I
    :cond_3
    const/4 v6, 0x2

    if-ne p2, v6, :cond_4

    .line 33
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "zk_we_pay"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    .restart local v1    # "icon_id":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 35
    .end local v1    # "icon_id":I
    :cond_4
    const/4 v6, 0x3

    if-ne p2, v6, :cond_5

    .line 36
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "zk_google_play"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    .restart local v1    # "icon_id":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 38
    .end local v1    # "icon_id":I
    :cond_5
    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/zkunity/core/ASelectLayoutt;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "zk_paypal"

    invoke-static {v6, v7, v8}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 40
    .restart local v1    # "icon_id":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 48
    .end local v1    # "icon_id":I
    .restart local v4    # "pay_select_name":Landroid/widget/TextView;
    .restart local v5    # "pay_select_name_id":I
    :cond_6
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 49
    const-string v6, "Alipay"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 50
    :cond_7
    const/4 v6, 0x2

    if-ne p2, v6, :cond_9

    .line 51
    const/4 v6, 0x1

    if-ne p3, v6, :cond_8

    .line 52
    const-string v6, "\u5fae\u4fe1"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :cond_8
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 54
    const-string v6, "WeChat Pay"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 55
    :cond_9
    const/4 v6, 0x3

    if-ne p2, v6, :cond_b

    .line 56
    const/4 v6, 0x1

    if-ne p3, v6, :cond_a

    .line 57
    const-string v6, "Google\u652f\u4ed8"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 58
    :cond_a
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 59
    const-string v6, "Google Play"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 60
    :cond_b
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 61
    const/4 v6, 0x1

    if-ne p3, v6, :cond_c

    .line 62
    const-string v6, "Paypal\u652f\u4ed8"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 63
    :cond_c
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 64
    const-string v6, "Pay"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
