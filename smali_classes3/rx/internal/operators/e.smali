.class Lrx/internal/operators/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/internal/operators/h;

.field final synthetic c:Lrx/internal/operators/d;


# direct methods
.method constructor <init>(Lrx/internal/operators/d;Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/h;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lrx/internal/operators/e;->c:Lrx/internal/operators/d;

    iput-object p2, p0, Lrx/internal/operators/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/e;->b:Lrx/internal/operators/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lrx/internal/operators/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lrx/internal/operators/g;->R_()V

    .line 390
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/e;->b:Lrx/internal/operators/h;

    iget-object v0, v0, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-static {v0}, Lrx/internal/operators/d;->a(Ljava/util/Collection;)V

    .line 391
    return-void
.end method
