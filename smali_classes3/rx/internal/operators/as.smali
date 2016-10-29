.class Lrx/internal/operators/as;
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
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TU;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/ao;

.field final synthetic c:Lrx/internal/operators/ar;


# direct methods
.method constructor <init>(Lrx/internal/operators/ar;Lrx/ao;Lrx/ao;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/as;->c:Lrx/internal/operators/ar;

    iput-object p3, p0, Lrx/internal/operators/as;->b:Lrx/ao;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/as;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/as;->a:Ljava/util/Set;

    .line 73
    iget-object v0, p0, Lrx/internal/operators/as;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lrx/internal/operators/as;->c:Lrx/internal/operators/ar;

    iget-object v0, v0, Lrx/internal/operators/ar;->a:Ldjj;

    invoke-interface {v0, p1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lrx/internal/operators/as;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lrx/internal/operators/as;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/as;->a(J)V

    goto :goto_0
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/as;->a:Ljava/util/Set;

    .line 79
    iget-object v0, p0, Lrx/internal/operators/as;->b:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 80
    return-void
.end method
