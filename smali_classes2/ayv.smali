.class Layv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Layt;


# direct methods
.method constructor <init>(Layt;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Layv;->a:Layt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Layv;->a:Layt;

    invoke-static {v0}, Layt;->a(Layt;)Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Layv;->a:Layt;

    invoke-static {v0}, Layt;->a(Layt;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Layv;->a:Layt;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 49
    :cond_0
    iget-object v0, p0, Layv;->a:Layt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layt;->a(Layt;Z)Z

    .line 50
    return-void
.end method
