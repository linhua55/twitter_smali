.class final Lrx/internal/schedulers/e;
.super Lrx/u;
.source "Twttr"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ldlx;

.field private final c:Lrx/internal/schedulers/b;

.field private final d:Lrx/internal/schedulers/g;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/b;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lrx/u;-><init>()V

    .line 177
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    .line 183
    iput-object p1, p0, Lrx/internal/schedulers/e;->c:Lrx/internal/schedulers/b;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    invoke-virtual {p1}, Lrx/internal/schedulers/b;->a()Lrx/internal/schedulers/g;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/e;->d:Lrx/internal/schedulers/g;

    .line 186
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lrx/internal/schedulers/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lrx/internal/schedulers/e;->c:Lrx/internal/schedulers/b;

    iget-object v1, p0, Lrx/internal/schedulers/e;->d:Lrx/internal/schedulers/g;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/b;->a(Lrx/internal/schedulers/g;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 195
    return-void
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 3

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/e;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/e;->d:Lrx/internal/schedulers/g;

    new-instance v1, Lrx/internal/schedulers/f;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/f;-><init>(Lrx/internal/schedulers/e;Ldje;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lrx/internal/schedulers/g;->b(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 224
    iget-object v1, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Ldlx;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lrx/internal/schedulers/e;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    return v0
.end method
