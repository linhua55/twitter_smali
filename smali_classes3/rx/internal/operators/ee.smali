.class Lrx/internal/operators/ee;
.super Lrx/an;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/an",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lrx/an;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic f:Lrx/internal/operators/ed;


# direct methods
.method constructor <init>(Lrx/internal/operators/ed;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/an;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lrx/internal/operators/ee;->f:Lrx/internal/operators/ed;

    iput-object p2, p0, Lrx/internal/operators/ee;->a:[Ljava/lang/Object;

    iput p3, p0, Lrx/internal/operators/ee;->b:I

    iput-object p4, p0, Lrx/internal/operators/ee;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/ee;->d:Lrx/an;

    iput-object p6, p0, Lrx/internal/operators/ee;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lrx/an;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lrx/internal/operators/ee;->a:[Ljava/lang/Object;

    iget v1, p0, Lrx/internal/operators/ee;->b:I

    aput-object p1, v0, v1

    .line 58
    iget-object v0, p0, Lrx/internal/operators/ee;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ee;->f:Lrx/internal/operators/ed;

    iget-object v0, v0, Lrx/internal/operators/ed;->b:Ldjl;

    iget-object v1, p0, Lrx/internal/operators/ee;->a:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Ldjl;->b([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    iget-object v1, p0, Lrx/internal/operators/ee;->d:Lrx/an;

    invoke-virtual {v1, v0}, Lrx/an;->a(Ljava/lang/Object;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0, v0}, Lrx/internal/operators/ee;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/operators/ee;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lrx/internal/operators/ee;->d:Lrx/an;

    invoke-virtual {v0, p1}, Lrx/an;->a(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0}, Ldlm;->b()Ldlj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldlj;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
