.class Lcom/p/NativeTools$6;
.super Ljava/lang/Object;
.source "NativeTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/p/NativeTools;->getAddressList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    new-instance v1, Lcom/p/PhoneContacts;

    invoke-direct {v1}, Lcom/p/PhoneContacts;-><init>()V

    invoke-virtual {v1}, Lcom/p/PhoneContacts;->loadAllContacts()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "contacts":Ljava/lang/String;
    const-string v1, "NativeTools"

    .line 153
    const-string v2, "RefreshAddressList"

    .line 152
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
