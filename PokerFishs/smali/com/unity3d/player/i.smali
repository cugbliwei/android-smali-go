.class public final Lcom/unity3d/player/i;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Z

.field static final e:Z

.field static final f:Lcom/unity3d/player/c;

.field static final g:Lcom/unity3d/player/d;

.field static final h:Lcom/unity3d/player/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/i;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unity3d/player/i;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/unity3d/player/i;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/unity3d/player/i;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_5

    :goto_4
    sput-boolean v1, Lcom/unity3d/player/i;->e:Z

    sget-boolean v0, Lcom/unity3d/player/i;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/unity3d/player/b;

    invoke-direct {v0}, Lcom/unity3d/player/b;-><init>()V

    :goto_5
    sput-object v0, Lcom/unity3d/player/i;->f:Lcom/unity3d/player/c;

    sget-boolean v0, Lcom/unity3d/player/i;->b:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/unity3d/player/f;

    invoke-direct {v0}, Lcom/unity3d/player/f;-><init>()V

    :goto_6
    sput-object v0, Lcom/unity3d/player/i;->g:Lcom/unity3d/player/d;

    sget-boolean v0, Lcom/unity3d/player/i;->e:Z

    if-eqz v0, :cond_0

    new-instance v3, Lcom/unity3d/player/h;

    invoke-direct {v3}, Lcom/unity3d/player/h;-><init>()V

    :cond_0
    sput-object v3, Lcom/unity3d/player/i;->h:Lcom/unity3d/player/e;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_5

    :cond_7
    move-object v0, v3

    goto :goto_6
.end method
