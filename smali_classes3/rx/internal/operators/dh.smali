.class final Lrx/internal/operators/dh;
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


# instance fields
.field private a:Z

.field private final b:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Ldma;

.field private final d:Lrx/internal/producers/a;

.field private final e:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/ao;Ldma;Lrx/internal/producers/a;Lrx/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;",
            "Ldma;",
            "Lrx/internal/producers/a;",
            "Lrx/o",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dh;->a:Z

    .line 56
    iput-object p1, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    .line 57
    iput-object p2, p0, Lrx/internal/operators/dh;->c:Ldma;

    .line 58
    iput-object p3, p0, Lrx/internal/operators/dh;->d:Lrx/internal/producers/a;

    .line 59
    iput-object p4, p0, Lrx/internal/operators/dh;->e:Lrx/o;

    .line 60
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lrx/internal/operators/dg;

    iget-object v1, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    iget-object v2, p0, Lrx/internal/operators/dh;->d:Lrx/internal/producers/a;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/dg;-><init>(Lrx/ao;Lrx/internal/producers/a;)V

    .line 78
    iget-object v1, p0, Lrx/internal/operators/dh;->c:Ldma;

    invoke-virtual {v1, v0}, Ldma;->a(Lrx/ap;)V

    .line 79
    iget-object v1, p0, Lrx/internal/operators/dh;->e:Lrx/o;

    invoke-virtual {v1, v0}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/internal/operators/dh;->d:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/s;)V

    .line 65
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/dh;->a:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lrx/internal/operators/dh;->d:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->b(J)V

    .line 92
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lrx/internal/operators/dh;->a:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/dh;->b:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lrx/internal/operators/dh;->d()V

    goto :goto_0
.end method
