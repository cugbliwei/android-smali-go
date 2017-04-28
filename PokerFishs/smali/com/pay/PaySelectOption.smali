.class public Lcom/pay/PaySelectOption;
.super Landroid/widget/RelativeLayout;
.source "PaySelectOption.java"


# instance fields
.field private lang_type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "lay_Type"    # I
    .param p3, "lang_type"    # I
    .param p4, "isPad"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput p2, p0, Lcom/pay/PaySelectOption;->lang_type:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, "v_id":I
    if-ne p2, v7, :cond_7

    .line 20
    if-ne p3, v6, :cond_5

    .line 21
    if-eqz p4, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_b"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 41
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "zk_pay_select_icon"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/pay/PaySelectOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "zk_pay_select_name"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/pay/PaySelectOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "txt":Landroid/widget/TextView;
    if-ne p2, v6, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "zk_alipay"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 50
    if-ne p3, v6, :cond_b

    .line 51
    const-string v3, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    :goto_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "zk_we_pay"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 58
    if-ne p3, v6, :cond_c

    .line 59
    const-string v3, "\u5fae\u4fe1"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    :goto_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "zk_google_play"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    if-ne p3, v6, :cond_d

    .line 67
    const-string v3, "Google\u652f\u4ed8"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_2
    :goto_3
    if-ne p2, v7, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "zk_paypal"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    if-ne p3, v6, :cond_e

    .line 75
    const-string v3, "\u652f\u4ed8"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_3
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 81
    return-void

    .line 24
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "txt":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_b_phone"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 26
    :cond_5
    if-eqz p4, :cond_6

    .line 27
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_b_en"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_b_phone_en"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 31
    :cond_7
    if-ne p3, v6, :cond_9

    .line 32
    if-eqz p4, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_a"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 35
    :cond_8
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_a_phone"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 37
    :cond_9
    if-eqz p4, :cond_a

    .line 38
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_a_en"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 40
    :cond_a
    invoke-virtual {p0}, Lcom/pay/PaySelectOption;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "zk_pay_option_a_phone_en"

    invoke-static {v3, v4, v5}, Lcom/zkunity/system/ResUtils;->getResourseId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 53
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "txt":Landroid/widget/TextView;
    :cond_b
    const-string v3, "Alipay"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 61
    :cond_c
    const-string v3, "WeChat Pay"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 69
    :cond_d
    const-string v3, "Google Play"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 77
    :cond_e
    const-string v3, "Pay"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public getLang_type()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/pay/PaySelectOption;->lang_type:I

    return v0
.end method
