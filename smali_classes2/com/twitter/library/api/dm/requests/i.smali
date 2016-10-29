.class Lcom/twitter/library/api/dm/requests/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lbof;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/dms/g;

.field final synthetic b:Lcom/twitter/library/provider/dm;

.field final synthetic c:Lcom/twitter/library/api/dm/requests/g;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/dm/requests/g;Lcom/twitter/model/dms/g;Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/i;->c:Lcom/twitter/library/api/dm/requests/g;

    iput-object p2, p0, Lcom/twitter/library/api/dm/requests/i;->a:Lcom/twitter/model/dms/g;

    iput-object p3, p0, Lcom/twitter/library/api/dm/requests/i;->b:Lcom/twitter/library/provider/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbof;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/i;->a:Lcom/twitter/model/dms/g;

    check-cast v1, Lcom/twitter/model/dms/dp;

    .line 101
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 102
    invoke-virtual {v1}, Lcom/twitter/model/dms/dp;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/Participant;

    .line 103
    iget-wide v4, v1, Lcom/twitter/model/dms/Participant;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/i;->b:Lcom/twitter/library/provider/dm;

    .line 106
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/twitter/library/provider/dm;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Lbof;->a(Ljava/util/Collection;)V

    .line 108
    :cond_1
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/dm/requests/i;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
