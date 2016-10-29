.class Lrx/internal/operators/cu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lrx/u;

.field final synthetic c:Lrx/internal/operators/ct;


# direct methods
.method constructor <init>(Lrx/internal/operators/ct;Lrx/ao;Lrx/u;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lrx/internal/operators/cu;->c:Lrx/internal/operators/ct;

    iput-object p2, p0, Lrx/internal/operators/cu;->a:Lrx/ao;

    iput-object p3, p0, Lrx/internal/operators/cu;->b:Lrx/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lrx/internal/operators/cv;

    iget-object v2, p0, Lrx/internal/operators/cu;->a:Lrx/ao;

    invoke-direct {v1, p0, v2, v0}, Lrx/internal/operators/cv;-><init>(Lrx/internal/operators/cu;Lrx/ao;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lrx/internal/operators/cu;->c:Lrx/internal/operators/ct;

    iget-object v0, v0, Lrx/internal/operators/ct;->b:Lrx/o;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 95
    return-void
.end method
