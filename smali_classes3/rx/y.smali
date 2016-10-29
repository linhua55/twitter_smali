.class Lrx/y;
.super Lrx/an;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/an",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/producers/SingleDelayedProducer;

.field final synthetic b:Lrx/ao;

.field final synthetic c:Lrx/x;


# direct methods
.method constructor <init>(Lrx/x;Lrx/internal/producers/SingleDelayedProducer;Lrx/ao;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lrx/y;->c:Lrx/x;

    iput-object p2, p0, Lrx/y;->a:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/y;->b:Lrx/ao;

    invoke-direct {p0}, Lrx/an;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lrx/y;->a:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;->a(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lrx/y;->b:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method
