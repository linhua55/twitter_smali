.class final Lrx/internal/operators/m;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/ao",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/n",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method public constructor <init>(Lrx/internal/operators/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/n",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 324
    iput-object p1, p0, Lrx/internal/operators/m;->a:Lrx/internal/operators/n;

    .line 325
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lrx/internal/operators/m;->a:Lrx/internal/operators/n;

    iget-wide v2, p0, Lrx/internal/operators/m;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/n;->a(Ljava/lang/Throwable;J)V

    .line 341
    return-void
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lrx/internal/operators/m;->a:Lrx/internal/operators/n;

    iget-object v0, v0, Lrx/internal/operators/n;->d:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/s;)V

    .line 330
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 334
    iget-wide v0, p0, Lrx/internal/operators/m;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/m;->b:J

    .line 335
    iget-object v0, p0, Lrx/internal/operators/m;->a:Lrx/internal/operators/n;

    invoke-virtual {v0, p1}, Lrx/internal/operators/n;->b(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public bt_()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lrx/internal/operators/m;->a:Lrx/internal/operators/n;

    iget-wide v2, p0, Lrx/internal/operators/m;->b:J

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/n;->c(J)V

    .line 346
    return-void
.end method
