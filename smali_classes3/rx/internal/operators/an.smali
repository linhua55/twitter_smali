.class Lrx/internal/operators/an;
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
.field a:Z

.field final synthetic b:Lrx/u;

.field final synthetic c:Lrx/ao;

.field final synthetic d:Lrx/internal/operators/am;


# direct methods
.method constructor <init>(Lrx/internal/operators/am;Lrx/ao;Lrx/u;Lrx/ao;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/an;->d:Lrx/internal/operators/am;

    iput-object p3, p0, Lrx/internal/operators/an;->b:Lrx/u;

    iput-object p4, p0, Lrx/internal/operators/an;->c:Lrx/ao;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lrx/internal/operators/an;->b:Lrx/u;

    new-instance v1, Lrx/internal/operators/ap;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/ap;-><init>(Lrx/internal/operators/an;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/u;->a(Ldje;)Lrx/ap;

    .line 79
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lrx/internal/operators/an;->b:Lrx/u;

    new-instance v1, Lrx/internal/operators/aq;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/aq;-><init>(Lrx/internal/operators/an;Ljava/lang/Object;)V

    iget-object v2, p0, Lrx/internal/operators/an;->d:Lrx/internal/operators/am;

    iget-wide v2, v2, Lrx/internal/operators/am;->a:J

    iget-object v4, p0, Lrx/internal/operators/an;->d:Lrx/internal/operators/am;

    iget-object v4, v4, Lrx/internal/operators/am;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/u;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    .line 93
    return-void
.end method

.method public bt_()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lrx/internal/operators/an;->b:Lrx/u;

    new-instance v1, Lrx/internal/operators/ao;

    invoke-direct {v1, p0}, Lrx/internal/operators/ao;-><init>(Lrx/internal/operators/an;)V

    iget-object v2, p0, Lrx/internal/operators/an;->d:Lrx/internal/operators/am;

    iget-wide v2, v2, Lrx/internal/operators/am;->a:J

    iget-object v4, p0, Lrx/internal/operators/an;->d:Lrx/internal/operators/am;

    iget-object v4, v4, Lrx/internal/operators/am;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/u;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    .line 65
    return-void
.end method
