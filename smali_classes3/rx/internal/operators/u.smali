.class Lrx/internal/operators/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ldlx;

.field final synthetic b:Lrx/internal/operators/r;


# direct methods
.method constructor <init>(Lrx/internal/operators/r;Ldlx;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iput-object p2, p0, Lrx/internal/operators/u;->a:Ldlx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->a:Ldlx;

    iget-object v1, p0, Lrx/internal/operators/u;->a:Ldlx;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->a:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 159
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    new-instance v1, Ldlx;

    invoke-direct {v1}, Ldlx;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/r;->a:Ldlx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/u;->b:Lrx/internal/operators/r;

    iget-object v1, v1, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
