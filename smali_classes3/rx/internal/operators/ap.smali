.class Lrx/internal/operators/ap;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lrx/internal/operators/an;


# direct methods
.method constructor <init>(Lrx/internal/operators/an;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lrx/internal/operators/ap;->b:Lrx/internal/operators/an;

    iput-object p2, p0, Lrx/internal/operators/ap;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/ap;->b:Lrx/internal/operators/an;

    iget-boolean v0, v0, Lrx/internal/operators/an;->a:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lrx/internal/operators/ap;->b:Lrx/internal/operators/an;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/an;->a:Z

    .line 74
    iget-object v0, p0, Lrx/internal/operators/ap;->b:Lrx/internal/operators/an;

    iget-object v0, v0, Lrx/internal/operators/an;->c:Lrx/ao;

    iget-object v1, p0, Lrx/internal/operators/ap;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lrx/internal/operators/ap;->b:Lrx/internal/operators/an;

    iget-object v0, v0, Lrx/internal/operators/an;->b:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    .line 77
    :cond_0
    return-void
.end method
