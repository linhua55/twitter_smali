.class final Laml;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/model/moments/viewmodels/a;",
        "Lrx/o",
        "<",
        "Ljava/util/List",
        "<",
        "Lamy;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Laml;->a(Lcom/twitter/model/moments/viewmodels/a;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/a;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lamy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    .line 110
    invoke-static {}, Lamj;->e()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 111
    invoke-static {}, Lamj;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lamx;

    invoke-direct {v1}, Lamx;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lrx/o;->p()Lrx/o;

    move-result-object v0

    .line 109
    return-object v0
.end method
