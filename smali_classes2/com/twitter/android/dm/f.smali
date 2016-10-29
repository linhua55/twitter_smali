.class final Lcom/twitter/android/dm/f;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/g;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/g;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/dm/f;->a:Lcom/twitter/android/dm/g;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/dm/f;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/twitter/library/service/z;->a(Lcom/twitter/library/service/x;)V

    .line 40
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lcom/twitter/library/api/dm/requests/l;

    .line 42
    iget-object v1, p1, Lcom/twitter/library/api/dm/requests/l;->a:Lcom/twitter/model/dms/ee;

    .line 43
    iget-object v0, v1, Lcom/twitter/model/dms/ee;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    iget-object v0, v1, Lcom/twitter/model/dms/ee;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 45
    iget-object v3, v1, Lcom/twitter/model/dms/ee;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/twitter/model/dms/ee;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ce;

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/dm/f;->a:Lcom/twitter/android/dm/g;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/twitter/model/dms/ce;->a:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/twitter/android/dm/g;->a(Lcom/twitter/model/core/TwitterUser;Z)V

    .line 54
    :cond_0
    :goto_2
    return-void

    .line 46
    :cond_1
    iget-object v1, v1, Lcom/twitter/model/dms/ee;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ce;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 48
    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/dm/f;->a:Lcom/twitter/android/dm/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/dm/g;->a(Lcom/twitter/model/core/TwitterUser;Z)V

    goto :goto_2
.end method
