.class Lrx/internal/operators/ay;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lrx/internal/operators/ax;

.field private c:Z


# direct methods
.method constructor <init>(Lrx/internal/operators/ax;Lrx/ao;Lrx/ao;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lrx/internal/operators/ay;->b:Lrx/internal/operators/ax;

    iput-object p3, p0, Lrx/internal/operators/ay;->a:Lrx/ao;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/ay;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-static {p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 61
    iget-boolean v0, p0, Lrx/internal/operators/ay;->c:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-boolean v5, p0, Lrx/internal/operators/ay;->c:Z

    .line 66
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ay;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v0, p0, Lrx/internal/operators/ay;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 69
    iget-object v1, p0, Lrx/internal/operators/ay;->a:Lrx/ao;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lrx/internal/operators/ay;->c:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ay;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->b_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v0, p0, Lrx/internal/operators/ay;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0, p0, p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/r;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lrx/internal/operators/ay;->c:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ay;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/r;

    invoke-interface {v0}, Lrx/r;->bt_()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ay;->c:Z

    .line 54
    iget-object v0, p0, Lrx/internal/operators/ay;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0, p0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/r;)V

    goto :goto_0
.end method
