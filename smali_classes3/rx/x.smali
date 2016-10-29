.class Lrx/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/am;

.field final synthetic b:Lrx/w;


# direct methods
.method constructor <init>(Lrx/w;Lrx/am;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lrx/x;->b:Lrx/w;

    iput-object p2, p0, Lrx/x;->a:Lrx/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/ao;)V

    .line 79
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 80
    new-instance v1, Lrx/y;

    invoke-direct {v1, p0, v0, p1}, Lrx/y;-><init>(Lrx/x;Lrx/internal/producers/SingleDelayedProducer;Lrx/ao;)V

    .line 93
    invoke-virtual {p1, v1}, Lrx/ao;->a(Lrx/ap;)V

    .line 94
    iget-object v0, p0, Lrx/x;->a:Lrx/am;

    invoke-interface {v0, v1}, Lrx/am;->call(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/x;->a(Lrx/ao;)V

    return-void
.end method
