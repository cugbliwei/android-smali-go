.class Lcom/p/NativeTools$3$1;
.super Ljava/lang/Object;
.source "NativeTools.java"

# interfaces
.implements Lcom/p/Listen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/p/NativeTools$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/p/NativeTools$3;


# direct methods
.method constructor <init>(Lcom/p/NativeTools$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/p/NativeTools$3$1;->this$1:Lcom/p/NativeTools$3;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/p/NativeTools;->getPictureCallBack(Ljava/lang/String;)V

    .line 89
    return-void
.end method
