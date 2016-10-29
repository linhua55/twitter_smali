.class final Lrx/internal/operators/ch;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ldji;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ldji;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lrx/internal/operators/ch;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/ch;->b:Ldji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ch;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cj;

    .line 211
    if-nez v0, :cond_1

    .line 213
    new-instance v2, Lrx/internal/operators/cj;

    iget-object v3, p0, Lrx/internal/operators/ch;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/ch;->b:Ldji;

    invoke-interface {v1}, Ldji;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/ci;

    invoke-direct {v2, v3, v1}, Lrx/internal/operators/cj;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/ci;)V

    .line 215
    invoke-virtual {v2}, Lrx/internal/operators/cj;->d()V

    .line 217
    iget-object v1, p0, Lrx/internal/operators/ch;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 227
    :cond_1
    new-instance v1, Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;-><init>(Lrx/internal/operators/cj;Lrx/ao;)V

    .line 231
    invoke-virtual {v0, v1}, Lrx/internal/operators/cj;->a(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z

    .line 234
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 237
    iget-object v0, v0, Lrx/internal/operators/cj;->a:Lrx/internal/operators/ci;

    invoke-interface {v0, v1}, Lrx/internal/operators/ci;->a(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 241
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 244
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/ch;->a(Lrx/ao;)V

    return-void
.end method
