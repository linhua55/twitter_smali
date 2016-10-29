.class Laef;
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
        "Lcom/twitter/model/moments/maker/af;",
        "Lrx/w",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laec;


# direct methods
.method constructor <init>(Laec;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Laef;->a:Laec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lcom/twitter/model/moments/maker/af;

    invoke-virtual {p0, p1}, Laef;->a(Lcom/twitter/model/moments/maker/af;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/maker/af;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/maker/af;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Laef;->a:Laec;

    invoke-static {v0}, Laec;->d(Laec;)Laes;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/moments/maker/af;->b:Ljava/util/Map;

    .line 103
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Laes;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Laef;->a:Laec;

    .line 104
    invoke-static {v1, p1}, Laec;->a(Laec;Lcom/twitter/model/moments/maker/af;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 102
    return-object v0
.end method
