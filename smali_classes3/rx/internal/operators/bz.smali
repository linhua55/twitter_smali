.class Lrx/internal/operators/bz;
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
.field final synthetic a:Lrx/internal/operators/by;


# direct methods
.method constructor <init>(Lrx/internal/operators/by;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lrx/internal/operators/bz;->a:Lrx/internal/operators/by;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lrx/internal/operators/bz;->a:Lrx/internal/operators/by;

    iget-object v0, v0, Lrx/internal/operators/by;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lrx/internal/operators/bz;->a:Lrx/internal/operators/by;

    iget-object v0, v0, Lrx/internal/operators/by;->c:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/s;)V

    .line 131
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
    .line 118
    iget-object v0, p0, Lrx/internal/operators/bz;->a:Lrx/internal/operators/by;

    iget-object v0, v0, Lrx/internal/operators/by;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lrx/internal/operators/bz;->a:Lrx/internal/operators/by;

    iget-object v0, v0, Lrx/internal/operators/by;->b:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 127
    return-void
.end method
