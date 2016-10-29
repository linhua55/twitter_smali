.class Lceg;
.super Lcom/twitter/library/service/ac;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/ac",
        "<",
        "Ljava/lang/Void;",
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcpf;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/collection/r;

.field final synthetic b:Lcef;


# direct methods
.method constructor <init>(Lcef;Lcom/twitter/util/collection/r;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lceg;->b:Lcef;

    iput-object p2, p0, Lceg;->a:Lcom/twitter/util/collection/r;

    invoke-direct {p0}, Lcom/twitter/library/service/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcpf;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/AsyncOperation;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lceg;->b:Lcef;

    iget-object v0, p0, Lceg;->a:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v0, v2}, Lcef;->a(Lcef;Ljava/util/List;Ljava/util/Map;)V

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 85
    iget-object v3, p0, Lceg;->a:Lcom/twitter/util/collection/r;

    iget-wide v4, v0, Lcpf;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/util/collection/r;->d(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 86
    iget-wide v4, v0, Lcpf;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Lceg;->a:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v2, p0, Lceg;->b:Lcef;

    iget-object v0, p0, Lceg;->a:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcef;->a(Lcef;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lceg;->b:Lcef;

    invoke-static {v0, v1}, Lcef;->a(Lcef;Ljava/util/Map;)V

    goto :goto_0
.end method
