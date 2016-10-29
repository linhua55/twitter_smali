.class Lrx/internal/schedulers/ab;
.super Lrx/u;
.source "Twttr"

# interfaces
.implements Lrx/ap;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/internal/schedulers/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ldlv;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lrx/u;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ab;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ab;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Ldlv;

    invoke-direct {v0}, Ldlv;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ab;->c:Ldlv;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ab;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    return-void
.end method

.method private a(Ldje;J)Lrx/ap;
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lrx/internal/schedulers/ab;->c:Ldlv;

    invoke-virtual {v0}, Ldlv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lrx/internal/schedulers/ad;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lrx/internal/schedulers/ab;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/schedulers/ad;-><init>(Ldje;Ljava/lang/Long;I)V

    .line 70
    iget-object v1, p0, Lrx/internal/schedulers/ab;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lrx/internal/schedulers/ab;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    .line 74
    :cond_1
    iget-object v0, p0, Lrx/internal/schedulers/ab;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ad;

    .line 75
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, v0, Lrx/internal/schedulers/ad;->a:Ldje;

    invoke-interface {v0}, Ldje;->a()V

    .line 78
    :cond_2
    iget-object v0, p0, Lrx/internal/schedulers/ab;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 79
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_3
    new-instance v1, Lrx/internal/schedulers/ac;

    invoke-direct {v1, p0, v0}, Lrx/internal/schedulers/ac;-><init>(Lrx/internal/schedulers/ab;Lrx/internal/schedulers/ad;)V

    invoke-static {v1}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public R_()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lrx/internal/schedulers/ab;->c:Ldlv;

    invoke-virtual {v0}, Ldlv;->R_()V

    .line 96
    return-void
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lrx/internal/schedulers/ab;->c()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/schedulers/ab;->a(Ldje;J)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lrx/internal/schedulers/ab;->c()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 62
    new-instance v2, Lrx/internal/schedulers/z;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/internal/schedulers/z;-><init>(Ldje;Lrx/u;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/internal/schedulers/ab;->a(Ldje;J)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lrx/internal/schedulers/ab;->c:Ldlv;

    invoke-virtual {v0}, Ldlv;->b()Z

    move-result v0

    return v0
.end method
