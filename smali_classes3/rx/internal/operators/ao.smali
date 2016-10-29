.class Lrx/internal/operators/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/internal/operators/an;


# direct methods
.method constructor <init>(Lrx/internal/operators/an;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lrx/internal/operators/ao;->a:Lrx/internal/operators/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/ao;->a:Lrx/internal/operators/an;

    iget-boolean v0, v0, Lrx/internal/operators/an;->a:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/ao;->a:Lrx/internal/operators/an;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/an;->a:Z

    .line 60
    iget-object v0, p0, Lrx/internal/operators/ao;->a:Lrx/internal/operators/an;

    iget-object v0, v0, Lrx/internal/operators/an;->c:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 62
    :cond_0
    return-void
.end method
