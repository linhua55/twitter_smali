.class Lrx/internal/operators/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/s;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/internal/operators/h;

.field final synthetic c:Lrx/internal/operators/d;


# direct methods
.method constructor <init>(Lrx/internal/operators/d;Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/h;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lrx/internal/operators/f;->c:Lrx/internal/operators/d;

    iput-object p2, p0, Lrx/internal/operators/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/f;->b:Lrx/internal/operators/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lrx/internal/operators/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    if-eqz v0, :cond_1

    .line 425
    invoke-static {v0, p1, p2}, Lrx/internal/operators/g;->a(Lrx/internal/operators/g;J)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/f;->b:Lrx/internal/operators/h;

    iget-object v0, v0, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    .line 429
    invoke-virtual {v0}, Lrx/internal/operators/g;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 432
    iget-object v2, p0, Lrx/internal/operators/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 433
    invoke-static {v0, p1, p2}, Lrx/internal/operators/g;->a(Lrx/internal/operators/g;J)V

    goto :goto_0

    .line 438
    :cond_3
    invoke-static {v0, p1, p2}, Lrx/internal/operators/g;->a(Lrx/internal/operators/g;J)V

    goto :goto_1
.end method
