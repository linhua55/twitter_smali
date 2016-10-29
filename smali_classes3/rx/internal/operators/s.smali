.class Lrx/internal/operators/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lrx/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/internal/operators/r;


# direct methods
.method constructor <init>(Lrx/internal/operators/r;Lrx/ao;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iput-object p2, p0, Lrx/internal/operators/s;->a:Lrx/ao;

    iput-object p3, p0, Lrx/internal/operators/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->a:Ldlx;

    invoke-virtual {v0, p1}, Ldlx;->a(Lrx/ap;)V

    .line 102
    iget-object v0, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iget-object v1, p0, Lrx/internal/operators/s;->a:Lrx/ao;

    iget-object v2, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iget-object v2, v2, Lrx/internal/operators/r;->a:Ldlx;

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/r;->a(Lrx/ao;Ldlx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iget-object v0, v0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    iget-object v0, p0, Lrx/internal/operators/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/s;->c:Lrx/internal/operators/r;

    iget-object v1, v1, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    iget-object v1, p0, Lrx/internal/operators/s;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lrx/ap;

    invoke-virtual {p0, p1}, Lrx/internal/operators/s;->a(Lrx/ap;)V

    return-void
.end method
