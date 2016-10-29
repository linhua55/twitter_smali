.class final Lrx/internal/operators/g;
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
.field private final a:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/internal/operators/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(JLrx/ao;Lrx/internal/operators/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/ao",
            "<-TT;>;",
            "Lrx/internal/operators/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 285
    iput-object p3, p0, Lrx/internal/operators/g;->a:Lrx/ao;

    .line 286
    iput-object p4, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/h;

    .line 288
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/g;->a(J)V

    .line 289
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/g;J)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/g;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/g;->a(J)V

    .line 293
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-boolean v1, p0, Lrx/internal/operators/g;->c:Z

    if-eqz v1, :cond_0

    .line 335
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/h;

    iget-object v1, v1, Lrx/internal/operators/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 325
    iput-boolean v0, p0, Lrx/internal/operators/g;->c:Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/h;

    iget-object v1, v1, Lrx/internal/operators/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/h;

    invoke-virtual {v1, p0}, Lrx/internal/operators/h;->a(Lrx/internal/operators/g;)V

    .line 330
    iput-boolean v0, p0, Lrx/internal/operators/g;->c:Z

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/g;->b:Lrx/internal/operators/h;

    invoke-virtual {v0}, Lrx/internal/operators/h;->a()V

    .line 335
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lrx/internal/operators/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/g;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

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
    .line 297
    invoke-direct {p0}, Lrx/internal/operators/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/g;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lrx/internal/operators/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/g;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    goto :goto_0
.end method
