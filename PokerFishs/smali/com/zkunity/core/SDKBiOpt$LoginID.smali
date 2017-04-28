.class Lcom/zkunity/core/SDKBiOpt$LoginID;
.super Ljava/lang/Object;
.source "SDKBiOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zkunity/core/SDKBiOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginID"
.end annotation


# instance fields
.field private isSend:Z

.field private login_id:I

.field final synthetic this$0:Lcom/zkunity/core/SDKBiOpt;


# direct methods
.method private constructor <init>(Lcom/zkunity/core/SDKBiOpt;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zkunity/core/SDKBiOpt$LoginID;->this$0:Lcom/zkunity/core/SDKBiOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zkunity/core/SDKBiOpt;Lcom/zkunity/core/SDKBiOpt$LoginID;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/zkunity/core/SDKBiOpt$LoginID;-><init>(Lcom/zkunity/core/SDKBiOpt;)V

    return-void
.end method


# virtual methods
.method public getLogin_id()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/zkunity/core/SDKBiOpt$LoginID;->login_id:I

    return v0
.end method

.method public isSend()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/zkunity/core/SDKBiOpt$LoginID;->isSend:Z

    return v0
.end method

.method public setLogin_id(I)V
    .locals 0
    .param p1, "login_id"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/zkunity/core/SDKBiOpt$LoginID;->login_id:I

    .line 162
    return-void
.end method

.method public setSend(Z)V
    .locals 0
    .param p1, "isSend"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/zkunity/core/SDKBiOpt$LoginID;->isSend:Z

    .line 170
    return-void
.end method
