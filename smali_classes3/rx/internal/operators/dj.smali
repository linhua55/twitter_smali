.class Lrx/internal/operators/dj;
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
.field a:I

.field b:Z

.field final synthetic c:Lrx/ao;

.field final synthetic d:Lrx/internal/operators/di;


# direct methods
.method constructor <init>(Lrx/internal/operators/di;Lrx/ao;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/dj;->d:Lrx/internal/operators/di;

    iput-object p2, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lrx/internal/operators/dj;->b:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dj;->b:Z

    .line 66
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/dj;->R_()V

    .line 71
    :cond_0
    return-void

    .line 68
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/dj;->R_()V

    throw v0
.end method

.method public a(Lrx/s;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    new-instance v1, Lrx/internal/operators/dk;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/dk;-><init>(Lrx/internal/operators/dj;Lrx/s;)V

    invoke-virtual {v0, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 117
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/dj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lrx/internal/operators/dj;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lrx/internal/operators/dj;->a:I

    iget-object v2, p0, Lrx/internal/operators/dj;->d:Lrx/internal/operators/di;

    iget v2, v2, Lrx/internal/operators/di;->a:I

    if-ge v0, v2, :cond_0

    .line 76
    iget v0, p0, Lrx/internal/operators/dj;->a:I

    iget-object v2, p0, Lrx/internal/operators/dj;->d:Lrx/internal/operators/di;

    iget v2, v2, Lrx/internal/operators/di;->a:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 77
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    invoke-virtual {v2, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 78
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/dj;->b:Z

    if-nez v0, :cond_0

    .line 79
    iput-boolean v1, p0, Lrx/internal/operators/dj;->b:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p0}, Lrx/internal/operators/dj;->R_()V

    .line 87
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/dj;->R_()V

    throw v0
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lrx/internal/operators/dj;->b:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dj;->b:Z

    .line 57
    iget-object v0, p0, Lrx/internal/operators/dj;->c:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 59
    :cond_0
    return-void
.end method
