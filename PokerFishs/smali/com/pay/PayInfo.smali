.class public Lcom/pay/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"


# instance fields
.field private g_role_id:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private isTest:Z

.field private langType:I

.field private payPrice:Ljava/lang/String;

.field private shopName:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lcom/pay/PayInfo;->langType:I

    .line 5
    iput-object v0, p0, Lcom/pay/PayInfo;->shopName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/pay/PayInfo;->payPrice:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/pay/PayInfo;->sid:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/pay/PayInfo;->gid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/pay/PayInfo;->g_role_id:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/pay/PayInfo;->uid:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/pay/PayInfo;->isTest:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getG_role_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pay/PayInfo;->g_role_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pay/PayInfo;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getLangType()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/pay/PayInfo;->langType:I

    return v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pay/PayInfo;->payPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getShopName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pay/PayInfo;->shopName:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pay/PayInfo;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pay/PayInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/pay/PayInfo;->isTest:Z

    return v0
.end method

.method public setG_role_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "g_role_id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/pay/PayInfo;->g_role_id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pay/PayInfo;->gid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLangType(I)V
    .locals 0
    .param p1, "langType"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/pay/PayInfo;->langType:I

    .line 19
    return-void
.end method

.method public setPayPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "payPrice"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pay/PayInfo;->payPrice:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setShopName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shopName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/pay/PayInfo;->shopName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pay/PayInfo;->sid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/pay/PayInfo;->isTest:Z

    .line 75
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pay/PayInfo;->uid:Ljava/lang/String;

    .line 67
    return-void
.end method
