.class final Lrx/internal/operators/bo;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lrx/ao;Ldjj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TR;>;",
            "Ldjj",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/bo;->a:Lrx/ao;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/bo;->b:Ldjj;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lrx/internal/operators/bo;->c:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lrx/internal/util/r;->a(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bo;->c:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/bo;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lrx/internal/operators/bo;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Lrx/s;)V

    .line 100
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
    .line 66
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/bo;->b:Ldjj;

    invoke-interface {v0, p1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    iget-object v1, p0, Lrx/internal/operators/bo;->a:Lrx/ao;

    invoke-virtual {v1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/bo;->R_()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lrx/internal/operators/bo;->c:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/bo;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    goto :goto_0
.end method
