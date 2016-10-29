.class Lrx/internal/operators/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/internal/operators/an;


# direct methods
.method constructor <init>(Lrx/internal/operators/an;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lrx/internal/operators/aq;->b:Lrx/internal/operators/an;

    iput-object p2, p0, Lrx/internal/operators/aq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lrx/internal/operators/aq;->b:Lrx/internal/operators/an;

    iget-boolean v0, v0, Lrx/internal/operators/an;->a:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lrx/internal/operators/aq;->b:Lrx/internal/operators/an;

    iget-object v0, v0, Lrx/internal/operators/an;->c:Lrx/ao;

    iget-object v1, p0, Lrx/internal/operators/aq;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method
