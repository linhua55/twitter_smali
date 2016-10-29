.class Lrx/internal/operators/du;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lrx/internal/operators/ds;


# direct methods
.method constructor <init>(Lrx/internal/operators/ds;Lrx/ao;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lrx/internal/operators/du;->b:Lrx/internal/operators/ds;

    iput-object p2, p0, Lrx/internal/operators/du;->a:Lrx/ao;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/du;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lrx/internal/operators/du;->bt_()V

    .line 85
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/operators/du;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 75
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 69
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/du;->a(J)V

    .line 70
    return-void
.end method
