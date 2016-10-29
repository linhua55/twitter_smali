.class Lrx/internal/operators/h;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/g",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/g",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 343
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/e;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lrx/internal/operators/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lrx/internal/operators/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lrx/internal/operators/h;->a(Lrx/internal/operators/g;)V

    .line 350
    :cond_0
    return-void
.end method

.method public a(Lrx/internal/operators/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    .line 354
    if-eq v0, p1, :cond_0

    .line 355
    invoke-virtual {v0}, Lrx/internal/operators/g;->R_()V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 359
    return-void
.end method
