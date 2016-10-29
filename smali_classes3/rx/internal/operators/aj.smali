.class Lrx/internal/operators/aj;
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
.field final a:Lrx/internal/operators/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/al",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic c:Ldma;

.field final synthetic d:Lrx/u;

.field final synthetic e:Ldle;

.field final synthetic f:Lrx/internal/operators/ai;


# direct methods
.method constructor <init>(Lrx/internal/operators/ai;Lrx/ao;Ldma;Lrx/u;Ldle;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/aj;->f:Lrx/internal/operators/ai;

    iput-object p3, p0, Lrx/internal/operators/aj;->c:Ldma;

    iput-object p4, p0, Lrx/internal/operators/aj;->d:Lrx/u;

    iput-object p5, p0, Lrx/internal/operators/aj;->e:Ldle;

    invoke-direct {p0, p2}, Lrx/ao;-><init>(Lrx/ao;)V

    .line 64
    new-instance v0, Lrx/internal/operators/al;

    invoke-direct {v0}, Lrx/internal/operators/al;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/aj;->a:Lrx/internal/operators/al;

    .line 65
    iput-object p0, p0, Lrx/internal/operators/aj;->b:Lrx/ao;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lrx/internal/operators/aj;->e:Ldle;

    invoke-virtual {v0, p1}, Ldle;->a(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Lrx/internal/operators/aj;->R_()V

    .line 88
    iget-object v0, p0, Lrx/internal/operators/aj;->a:Lrx/internal/operators/al;

    invoke-virtual {v0}, Lrx/internal/operators/al;->a()V

    .line 89
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
    .line 75
    iget-object v0, p0, Lrx/internal/operators/aj;->a:Lrx/internal/operators/al;

    invoke-virtual {v0, p1}, Lrx/internal/operators/al;->a(Ljava/lang/Object;)I

    move-result v0

    .line 76
    iget-object v1, p0, Lrx/internal/operators/aj;->c:Ldma;

    iget-object v2, p0, Lrx/internal/operators/aj;->d:Lrx/u;

    new-instance v3, Lrx/internal/operators/ak;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/ak;-><init>(Lrx/internal/operators/aj;I)V

    iget-object v0, p0, Lrx/internal/operators/aj;->f:Lrx/internal/operators/ai;

    iget-wide v4, v0, Lrx/internal/operators/ai;->a:J

    iget-object v0, p0, Lrx/internal/operators/aj;->f:Lrx/internal/operators/ai;

    iget-object v0, v0, Lrx/internal/operators/ai;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v0}, Lrx/u;->a(Ldje;JLjava/util/concurrent/TimeUnit;)Lrx/ap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldma;->a(Lrx/ap;)V

    .line 82
    return-void
.end method

.method public bt_()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lrx/internal/operators/aj;->a:Lrx/internal/operators/al;

    iget-object v1, p0, Lrx/internal/operators/aj;->e:Ldle;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/al;->a(Lrx/ao;Lrx/ao;)V

    .line 94
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 69
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/aj;->a(J)V

    .line 70
    return-void
.end method
