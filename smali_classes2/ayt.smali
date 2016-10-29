.class Layt;
.super Lays;
.source "Twttr"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private c:Landroid/view/Choreographer;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lays;-><init>()V

    return-void
.end method

.method static synthetic a(Layt;)Landroid/view/Choreographer;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Layt;->c:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic a(Layt;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Layt;->c:Landroid/view/Choreographer;

    return-object p1
.end method

.method static synthetic a(Layt;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Layt;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Layt;->a:Landroid/os/Handler;

    new-instance v1, Layu;

    invoke-direct {v1, p0}, Layu;-><init>(Layt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Layt;->a:Landroid/os/Handler;

    new-instance v1, Layv;

    invoke-direct {v1, p0}, Layv;-><init>(Layt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public doFrame(J)V
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Layt;->d:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Layt;->b:Layw;

    invoke-interface {v0, p1, p2}, Layw;->a(J)V

    .line 23
    iget-object v0, p0, Layt;->c:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 25
    :cond_0
    return-void
.end method
