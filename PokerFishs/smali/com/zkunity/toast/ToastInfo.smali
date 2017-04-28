.class public Lcom/zkunity/toast/ToastInfo;
.super Ljava/lang/Object;
.source "ToastInfo.java"


# instance fields
.field private content:Ljava/lang/String;

.field private onCancel:Lcom/zkunity/toast/ToastCallback;

.field private onOK:Lcom/zkunity/toast/ToastCallback;

.field private titleName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/zkunity/toast/ToastInfo;->type:I

    .line 3
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zkunity/toast/ToastInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getOnCancel()Lcom/zkunity/toast/ToastCallback;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zkunity/toast/ToastInfo;->onCancel:Lcom/zkunity/toast/ToastCallback;

    return-object v0
.end method

.method public getOnOK()Lcom/zkunity/toast/ToastCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zkunity/toast/ToastInfo;->onOK:Lcom/zkunity/toast/ToastCallback;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zkunity/toast/ToastInfo;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/zkunity/toast/ToastInfo;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zkunity/toast/ToastInfo;->content:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOnCancel(Lcom/zkunity/toast/ToastCallback;)V
    .locals 0
    .param p1, "onCancel"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zkunity/toast/ToastInfo;->onCancel:Lcom/zkunity/toast/ToastCallback;

    .line 33
    return-void
.end method

.method public setOnOK(Lcom/zkunity/toast/ToastCallback;)V
    .locals 0
    .param p1, "onOK"    # Lcom/zkunity/toast/ToastCallback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zkunity/toast/ToastInfo;->onOK:Lcom/zkunity/toast/ToastCallback;

    .line 41
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zkunity/toast/ToastInfo;->titleName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/zkunity/toast/ToastInfo;->type:I

    .line 17
    return-void
.end method
