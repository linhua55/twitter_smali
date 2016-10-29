.class Lrx/internal/util/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/am",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjj;

.field final synthetic b:Lrx/internal/util/ad;


# direct methods
.method constructor <init>(Lrx/internal/util/ad;Ldjj;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lrx/internal/util/af;->b:Lrx/internal/util/ad;

    iput-object p2, p0, Lrx/internal/util/af;->a:Ldjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/an;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lrx/internal/util/af;->a:Ldjj;

    iget-object v1, p0, Lrx/internal/util/af;->b:Lrx/internal/util/ad;

    iget-object v1, v1, Lrx/internal/util/ad;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/w;

    .line 133
    instance-of v1, v0, Lrx/internal/util/ad;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lrx/internal/util/ad;

    iget-object v0, v0, Lrx/internal/util/ad;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/an;->a(Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v1, Lrx/internal/util/ag;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ag;-><init>(Lrx/internal/util/af;Lrx/an;)V

    .line 151
    invoke-virtual {p1, v1}, Lrx/an;->a(Lrx/ap;)V

    .line 152
    invoke-virtual {v0, v1}, Lrx/w;->a(Lrx/ao;)Lrx/ap;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lrx/internal/util/af;->a(Lrx/an;)V

    return-void
.end method
