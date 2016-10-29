.class Lrx/internal/operators/cv;
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
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/internal/operators/cu;


# direct methods
.method constructor <init>(Lrx/internal/operators/cu;Lrx/ao;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iput-object p3, p0, Lrx/internal/operators/cv;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->b:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v1, v1, Lrx/internal/operators/cu;->b:Lrx/u;

    invoke-virtual {v1}, Lrx/u;->R_()V

    throw v0
.end method

.method public a(Lrx/s;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->a:Lrx/ao;

    new-instance v1, Lrx/internal/operators/cw;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/cw;-><init>(Lrx/internal/operators/cv;Lrx/s;)V

    invoke-virtual {v0, v1}, Lrx/ao;->a(Lrx/s;)V

    .line 91
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public bt_()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v0, v0, Lrx/internal/operators/cu;->b:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/cv;->b:Lrx/internal/operators/cu;

    iget-object v1, v1, Lrx/internal/operators/cu;->b:Lrx/u;

    invoke-virtual {v1}, Lrx/u;->R_()V

    throw v0
.end method
