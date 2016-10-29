.class public final Lrx/internal/operators/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Ldlx;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Ldkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldkv",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldkv",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/r;->a:Ldlx;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/r;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p1, p0, Lrx/internal/operators/r;->d:Ldkv;

    .line 57
    return-void
.end method

.method private a(Lrx/ao;Ljava/util/concurrent/atomic/AtomicBoolean;)Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Ldjf",
            "<",
            "Lrx/ap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lrx/internal/operators/s;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/s;-><init>(Lrx/internal/operators/r;Lrx/ao;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method private a(Ldlx;)Lrx/ap;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lrx/internal/operators/u;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/u;-><init>(Lrx/internal/operators/r;Ldlx;)V

    invoke-static {v0}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    iget-object v0, p0, Lrx/internal/operators/r;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/r;->d:Ldkv;

    invoke-direct {p0, p1, v1}, Lrx/internal/operators/r;->a(Lrx/ao;Ljava/util/concurrent/atomic/AtomicBoolean;)Ldjf;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldkv;->d(Ldjf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0

    .line 84
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/r;->a:Ldlx;

    invoke-virtual {p0, p1, v0}, Lrx/internal/operators/r;->a(Lrx/ao;Ldlx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    iget-object v0, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/r;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method a(Lrx/ao;Ldlx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;",
            "Ldlx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p2}, Lrx/internal/operators/r;->a(Ldlx;)Lrx/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/r;->d:Ldkv;

    new-instance v1, Lrx/internal/operators/t;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/internal/operators/t;-><init>(Lrx/internal/operators/r;Lrx/ao;Lrx/ao;Ldlx;)V

    invoke-virtual {v0, v1}, Ldkv;->a(Lrx/ao;)Lrx/ap;

    .line 146
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/r;->a(Lrx/ao;)V

    return-void
.end method
