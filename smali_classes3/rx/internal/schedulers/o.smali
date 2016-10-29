.class final Lrx/internal/schedulers/o;
.super Lrx/u;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ldlx;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/u;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/schedulers/o;->a:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    .line 59
    invoke-static {}, Lrx/internal/schedulers/r;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/o;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 180
    iget-object v0, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 181
    return-void
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lrx/internal/schedulers/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v1, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-direct {v0, p1, v1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Ldje;Ldlx;)V

    .line 68
    iget-object v1, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 69
    iget-object v1, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lrx/internal/schedulers/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lrx/internal/schedulers/o;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    iget-object v2, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v2, v0}, Ldlx;->b(Lrx/ap;)V

    .line 80
    iget-object v0, p0, Lrx/internal/schedulers/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0}, Ldlm;->b()Ldlj;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 84
    throw v1
.end method

.method public a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 6

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/o;->a(Ldje;)Lrx/ap;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Ldly;

    invoke-direct {v1}, Ldly;-><init>()V

    .line 123
    new-instance v2, Ldly;

    invoke-direct {v2}, Ldly;-><init>()V

    .line 124
    invoke-virtual {v2, v1}, Ldly;->a(Lrx/ap;)V

    .line 125
    iget-object v0, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v0, v2}, Ldlx;->a(Lrx/ap;)V

    .line 126
    new-instance v0, Lrx/internal/schedulers/p;

    invoke-direct {v0, p0, v2}, Lrx/internal/schedulers/p;-><init>(Lrx/internal/schedulers/o;Ldly;)V

    invoke-static {v0}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    .line 133
    new-instance v3, Lrx/internal/schedulers/ScheduledAction;

    new-instance v4, Lrx/internal/schedulers/q;

    invoke-direct {v4, p0, v2, p1, v0}, Lrx/internal/schedulers/q;-><init>(Lrx/internal/schedulers/o;Ldly;Ldje;Lrx/ap;)V

    invoke-direct {v3, v4}, Lrx/internal/schedulers/ScheduledAction;-><init>(Ldje;)V

    .line 152
    invoke-virtual {v1, v3}, Ldly;->a(Lrx/ap;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Lrx/internal/schedulers/o;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v3, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 158
    invoke-virtual {v3, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v1

    invoke-virtual {v1}, Ldlm;->b()Ldlj;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 162
    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 94
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v0}, Ldlx;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .line 99
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lrx/internal/schedulers/o;->b:Ldlx;

    invoke-virtual {v1}, Ldlx;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    .line 110
    :cond_3
    iget-object v0, p0, Lrx/internal/schedulers/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lrx/internal/schedulers/o;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method
