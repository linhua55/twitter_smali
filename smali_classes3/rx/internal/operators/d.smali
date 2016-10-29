.class public final Lrx/internal/operators/d;
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
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/o",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/o",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lrx/internal/operators/d;->a:Ljava/lang/Iterable;

    .line 369
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lrx/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/o",
            "<+TT;>;>;)",
            "Lrx/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lrx/internal/operators/d;

    invoke-direct {v0, p0}, Lrx/internal/operators/d;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static a(Lrx/o;Lrx/o;)Lrx/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;",
            "Lrx/o",
            "<+TT;>;)",
            "Lrx/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lrx/internal/operators/d;->a(Ljava/lang/Iterable;)Lrx/p;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/g",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/g;

    .line 450
    invoke-virtual {v0}, Lrx/internal/operators/g;->R_()V

    goto :goto_0

    .line 452
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 454
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v2, Lrx/internal/operators/h;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lrx/internal/operators/h;-><init>(Lrx/internal/operators/e;)V

    .line 374
    iget-object v3, v2, Lrx/internal/operators/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 377
    new-instance v0, Lrx/internal/operators/e;

    invoke-direct {v0, p0, v3, v2}, Lrx/internal/operators/e;-><init>(Lrx/internal/operators/d;Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/h;)V

    invoke-static {v0}, Ldmc;->a(Ldje;)Lrx/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 396
    iget-object v0, p0, Lrx/internal/operators/d;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    .line 397
    invoke-virtual {p1}, Lrx/ao;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    :cond_0
    invoke-virtual {p1}, Lrx/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, v2, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-static {v0}, Lrx/internal/operators/d;->a(Ljava/util/Collection;)V

    .line 418
    :cond_1
    new-instance v0, Lrx/internal/operators/f;

    invoke-direct {v0, p0, v3, v2}, Lrx/internal/operators/f;-><init>(Lrx/internal/operators/d;Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/h;)V

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 445
    :goto_1
    return-void

    .line 400
    :cond_2
    new-instance v5, Lrx/internal/operators/g;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7, p1, v2}, Lrx/internal/operators/g;-><init>(JLrx/ao;Lrx/internal/operators/h;)V

    .line 401
    iget-object v1, v2, Lrx/internal/operators/h;->b:Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/g;

    if-eqz v1, :cond_3

    .line 408
    invoke-virtual {v2, v1}, Lrx/internal/operators/h;->a(Lrx/internal/operators/g;)V

    goto :goto_1

    .line 411
    :cond_3
    invoke-virtual {v0, v5}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/operators/d;->a(Lrx/ao;)V

    return-void
.end method
