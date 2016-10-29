.class Lrx/ab;
.super Lrx/an;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/an",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/r;

.field final synthetic b:Lrx/w;


# direct methods
.method constructor <init>(Lrx/w;Lrx/r;)V
    .locals 0

    .prologue
    .line 1745
    iput-object p1, p0, Lrx/ab;->b:Lrx/w;

    iput-object p2, p0, Lrx/ab;->a:Lrx/r;

    invoke-direct {p0}, Lrx/an;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1748
    iget-object v0, p0, Lrx/ab;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->b_(Ljava/lang/Object;)V

    .line 1749
    iget-object v0, p0, Lrx/ab;->a:Lrx/r;

    invoke-interface {v0}, Lrx/r;->bt_()V

    .line 1750
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lrx/ab;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->a(Ljava/lang/Throwable;)V

    .line 1754
    return-void
.end method
