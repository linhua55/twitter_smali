.class Lrx/internal/operators/ce;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/internal/operators/cd;


# direct methods
.method constructor <init>(Lrx/internal/operators/cd;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lrx/internal/operators/ce;->a:Lrx/internal/operators/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lrx/internal/operators/ce;->a:Lrx/internal/operators/cd;

    iget-object v0, v0, Lrx/internal/operators/cd;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/cd;->f:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lrx/internal/operators/ce;->a:Lrx/internal/operators/cd;

    iget-object v0, v0, Lrx/internal/operators/cd;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/ce;->a:Lrx/internal/operators/cd;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    return-void
.end method
