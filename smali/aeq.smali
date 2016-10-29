.class Laeq;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/core/Tweet;",
        ">;",
        "Lrx/o",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Laeo;


# direct methods
.method constructor <init>(Laeo;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Laeq;->b:Laeo;

    iput-object p2, p0, Laeq;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Laeq;->a(Ljava/util/Map;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Laeq;->a:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Laeq;->b:Laeo;

    invoke-static {v1}, Laeo;->a(Laeo;)Lazt;

    move-result-object v1

    invoke-interface {v1, v0}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    .line 90
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    invoke-static {}, Ldcg;->a()Ldjk;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/o;->a(Lrx/o;Ldjk;)Lrx/o;

    move-result-object v0

    goto :goto_0
.end method
