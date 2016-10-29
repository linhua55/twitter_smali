.class Lrx/internal/operators/ae;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/af;

.field final synthetic b:Lrx/internal/operators/ac;


# direct methods
.method constructor <init>(Lrx/internal/operators/ac;Lrx/internal/operators/af;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lrx/internal/operators/ae;->b:Lrx/internal/operators/ac;

    iput-object p2, p0, Lrx/internal/operators/ae;->a:Lrx/internal/operators/af;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lrx/internal/operators/ae;->a:Lrx/internal/operators/af;

    invoke-virtual {v0, p1}, Lrx/internal/operators/af;->a(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lrx/internal/operators/ae;->a:Lrx/internal/operators/af;

    invoke-virtual {v0}, Lrx/internal/operators/af;->d()V

    .line 94
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lrx/internal/operators/ae;->a:Lrx/internal/operators/af;

    invoke-virtual {v0}, Lrx/internal/operators/af;->bt_()V

    .line 104
    return-void
.end method
