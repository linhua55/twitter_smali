.class final Lrx/internal/util/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<",
            "Ldje;",
            "Lrx/ap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ldjj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ldjj",
            "<",
            "Ldje;",
            "Lrx/ap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lrx/internal/util/ab;->a:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lrx/internal/util/ab;->b:Ldjj;

    .line 163
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    iget-object v1, p0, Lrx/internal/util/ab;->a:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/ab;->b:Ldjj;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Lrx/ao;Ljava/lang/Object;Ldjj;)V

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 168
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/util/ab;->a(Lrx/ao;)V

    return-void
.end method
