.class Lcei;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcef;


# direct methods
.method constructor <init>(Lcef;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcei;->b:Lcef;

    iput-object p2, p0, Lcei;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcei;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 147
    check-cast p1, Lcee;

    .line 148
    invoke-virtual {p1}, Lcee;->g()Lcpa;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcpa;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iget-object v1, v0, Lcpa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 151
    iget-object v0, v0, Lcpa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoz;

    .line 152
    iget-object v3, p0, Lcei;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcoz;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-wide v4, v0, Lcoz;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v2, Lcej;

    iget-object v0, p0, Lcei;->b:Lcef;

    .line 156
    invoke-static {v0}, Lcef;->a(Lcef;)Lcom/twitter/library/provider/dm;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcei;->a:Ljava/util/Map;

    .line 157
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lcej;-><init>(Lcom/twitter/library/provider/dm;Ljava/util/List;Ljava/util/Set;)V

    .line 158
    iget-object v0, p0, Lcei;->b:Lcef;

    invoke-static {v0}, Lcef;->b(Lcef;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 160
    :cond_1
    iget-object v0, p0, Lcei;->b:Lcef;

    iget-object v1, p0, Lcei;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcef;->b(Lcef;Ljava/util/Map;)V

    .line 161
    return-void
.end method
