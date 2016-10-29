.class public Lcom/twitter/android/smartfollow/ac;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/TwitterUser;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 86
    iput-object p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->k:Ljava/lang/String;

    .line 87
    iput p1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 88
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 56
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 57
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/twitter/android/smartfollow/ac;->a(Lcom/twitter/model/core/TwitterUser;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/smartfollow/ae;

    invoke-direct {v1, p1}, Lcom/twitter/android/smartfollow/ae;-><init>(Ljava/util/Set;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/smartfollow/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/smartfollow/ad;-><init>(Ljava/util/List;)V

    .line 71
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lrx/o;->p()Lrx/o;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lrx/o;->o()Ldkt;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ldkt;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    return-object v0
.end method

.method public static a(Lcom/twitter/model/search/TwitterUserMetadata;)Z
    .locals 1

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/twitter/model/search/TwitterUserMetadata;->b:Lcom/twitter/model/core/bb;

    .line 33
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/twitter/model/core/bb;->d:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/TwitterUser;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 93
    invoke-static {p0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 94
    new-instance v0, Lcom/twitter/model/timeline/an;

    invoke-direct {v0}, Lcom/twitter/model/timeline/an;-><init>()V

    invoke-virtual {v0, p2}, Lcom/twitter/model/timeline/an;->d(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/timeline/an;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 95
    iput p1, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 96
    return-object v1
.end method

.method public static b(Lcom/twitter/model/search/TwitterUserMetadata;)Z
    .locals 1

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/twitter/model/search/TwitterUserMetadata;->b:Lcom/twitter/model/core/bb;

    .line 46
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/twitter/model/core/bb;->e:Z

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
