.class final Lrx/internal/operators/br;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final f:I


# instance fields
.field final a:Lrx/internal/operators/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/bs",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field volatile c:Z

.field volatile d:Lrx/internal/util/s;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    sget v0, Lrx/internal/util/s;->c:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/br;->f:I

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/bs;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/bs",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 830
    iput-object p1, p0, Lrx/internal/operators/br;->a:Lrx/internal/operators/bs;

    .line 831
    iput-wide p2, p0, Lrx/internal/operators/br;->b:J

    .line 832
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/br;->c:Z

    .line 845
    iget-object v0, p0, Lrx/internal/operators/br;->a:Lrx/internal/operators/bs;

    invoke-virtual {v0}, Lrx/internal/operators/bs;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lrx/internal/operators/br;->a:Lrx/internal/operators/bs;

    invoke-virtual {v0}, Lrx/internal/operators/bs;->g()V

    .line 847
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 854
    iget v0, p0, Lrx/internal/operators/br;->e:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 855
    sget v1, Lrx/internal/operators/br;->f:I

    if-le v0, v1, :cond_1

    .line 856
    iput v0, p0, Lrx/internal/operators/br;->e:I

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget v1, Lrx/internal/util/s;->c:I

    iput v1, p0, Lrx/internal/operators/br;->e:I

    .line 860
    sget v1, Lrx/internal/util/s;->c:I

    sub-int v0, v1, v0

    .line 861
    if-lez v0, :cond_0

    .line 862
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/br;->a(J)V

    goto :goto_0
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lrx/internal/operators/br;->a:Lrx/internal/operators/bs;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/bs;->a(Lrx/internal/operators/br;Ljava/lang/Object;)V

    .line 841
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/br;->c:Z

    .line 851
    iget-object v0, p0, Lrx/internal/operators/br;->a:Lrx/internal/operators/bs;

    invoke-virtual {v0}, Lrx/internal/operators/bs;->g()V

    .line 852
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 835
    sget v0, Lrx/internal/util/s;->c:I

    iput v0, p0, Lrx/internal/operators/br;->e:I

    .line 836
    sget v0, Lrx/internal/util/s;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/br;->a(J)V

    .line 837
    return-void
.end method
