.class Lrx/internal/operators/dw;
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

.field final synthetic b:Lrx/internal/operators/dv;

.field private c:J


# direct methods
.method constructor <init>(Lrx/internal/operators/dv;Lrx/ao;Lrx/ao;)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lrx/internal/operators/dw;->b:Lrx/internal/operators/dv;

    iput-object p3, p0, Lrx/internal/operators/dw;->a:Lrx/ao;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/dw;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/internal/operators/dw;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lrx/internal/operators/dw;->b:Lrx/internal/operators/dv;

    iget-object v0, v0, Lrx/internal/operators/dv;->b:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->b()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lrx/internal/operators/dw;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lrx/internal/operators/dw;->c:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lrx/internal/operators/dw;->b:Lrx/internal/operators/dv;

    iget-wide v4, v4, Lrx/internal/operators/dv;->a:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 52
    :cond_0
    iput-wide v0, p0, Lrx/internal/operators/dw;->c:J

    .line 53
    iget-object v0, p0, Lrx/internal/operators/dw;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 55
    :cond_1
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lrx/internal/operators/dw;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 60
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 45
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dw;->a(J)V

    .line 46
    return-void
.end method
