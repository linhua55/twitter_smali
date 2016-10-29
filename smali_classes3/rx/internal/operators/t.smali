.class Lrx/internal/operators/t;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Ldlx;

.field final synthetic c:Lrx/internal/operators/r;


# direct methods
.method constructor <init>(Lrx/internal/operators/r;Lrx/ao;Lrx/ao;Ldlx;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iput-object p3, p0, Lrx/internal/operators/t;->a:Lrx/ao;

    iput-object p4, p0, Lrx/internal/operators/t;->b:Ldlx;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lrx/internal/operators/t;->d()V

    .line 120
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lrx/internal/operators/t;->d()V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/t;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 130
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->a:Ldlx;

    iget-object v1, p0, Lrx/internal/operators/t;->b:Ldlx;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->a:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    new-instance v1, Ldlx;

    invoke-direct {v1}, Ldlx;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/r;->a:Ldlx;

    .line 139
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/t;->c:Lrx/internal/operators/r;

    iget-object v1, v1, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
