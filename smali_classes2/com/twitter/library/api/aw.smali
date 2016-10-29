.class public Lcom/twitter/library/api/aw;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/twitter/library/api/aw;->a:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-static {p2, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/twitter/library/api/aw;->b:[J

    .line 41
    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/twitter/library/client/Session;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/library/client/Session;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 120
    if-le v0, v4, :cond_0

    .line 121
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Lookup users through API for more than one page is not supported in TwitterUsersLoader yet. Lookup requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Page limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    new-instance v0, Lbve;

    iget-object v1, p0, Lcom/twitter/library/api/aw;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lbve;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;)V

    .line 127
    invoke-virtual {v0}, Lbve;->P()Lcom/twitter/library/service/aa;

    .line 128
    invoke-virtual {v0}, Lbve;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/library/api/aw;->d:J

    .line 92
    iget-object v0, p0, Lcom/twitter/library/api/aw;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/library/api/aw;->d:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/twitter/library/api/aw;->b:[J

    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/dm;->a([J)Ljava/util/List;

    move-result-object v2

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/twitter/library/api/aw;->b:[J

    if-eqz v0, :cond_2

    .line 98
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 100
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/twitter/library/api/aw;->b:[J

    array-length v6, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    aget-wide v8, v5, v0

    .line 104
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 111
    invoke-direct {p0, v3, v1}, Lcom/twitter/library/api/aw;->a(Ljava/util/Collection;Lcom/twitter/library/client/Session;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_3
    return-object v2
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/twitter/library/api/aw;->c:Ljava/util/List;

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/aw;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->onStopLoading()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/api/aw;->c:Ljava/util/List;

    .line 85
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/library/api/aw;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/library/api/aw;->d:J

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->forceLoad()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/api/aw;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/library/api/aw;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/twitter/library/api/aw;->cancelLoad()Z

    .line 78
    return-void
.end method
