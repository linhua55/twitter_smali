.class Lrx/internal/operators/bl;
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

.field final synthetic b:Lrx/internal/operators/bk;


# direct methods
.method constructor <init>(Lrx/internal/operators/bk;Lrx/ao;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lrx/internal/operators/bl;->b:Lrx/internal/operators/bk;

    iput-object p2, p0, Lrx/internal/operators/bl;->a:Lrx/ao;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lrx/internal/operators/bl;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lrx/internal/operators/bl;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 43
    return-void
.end method
