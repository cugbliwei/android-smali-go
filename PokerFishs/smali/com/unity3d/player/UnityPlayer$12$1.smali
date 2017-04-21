.class final Lcom/unity3d/player/UnityPlayer$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$12;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$12;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:Lcom/unity3d/player/UnityPlayer$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method
