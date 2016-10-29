.class Ldjc;
.super Lrx/u;
.source "Twttr"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ldlx;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lrx/u;-><init>()V

    .line 50
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Ldjc;->b:Ldlx;

    .line 53
    iput-object p1, p0, Ldjc;->a:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic a(Ldjc;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ldjc;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public R_()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldjc;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 59
    return-void
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 3

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ldjc;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Ldjc;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Ldix;->a()Ldix;

    move-result-object v0

    invoke-virtual {v0}, Ldix;->b()Ldiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldiy;->a(Ldje;)Ldje;

    move-result-object v1

    .line 74
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Ldje;)V

    .line 75
    iget-object v1, p0, Ldjc;->b:Ldlx;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Ldlx;)V

    .line 76
    iget-object v1, p0, Ldjc;->b:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 78
    iget-object v1, p0, Ldjc;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance v1, Ldjd;

    invoke-direct {v1, p0, v0}, Ldjd;-><init>(Ldjc;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/ap;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ldjc;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    return v0
.end method
