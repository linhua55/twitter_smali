.class public Lciz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/Tweet;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 155
    invoke-virtual {v0}, Lcom/twitter/model/core/av;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, v0, Lcom/twitter/model/core/av;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 158
    goto :goto_0

    .line 159
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bf;

    .line 197
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;J)Z
    .locals 3

    .prologue
    .line 113
    if-eqz p0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {p0, p1}, Lciz;->c(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 81
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 82
    invoke-virtual {v0}, Lcom/twitter/model/core/j;->b()I

    move-result v3

    .line 83
    invoke-virtual {v2}, Lcom/twitter/model/core/j;->b()I

    move-result v4

    .line 84
    if-ne v3, v4, :cond_3

    if-eqz v3, :cond_2

    .line 85
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 86
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 84
    goto :goto_0

    :cond_3
    move v0, v1

    .line 86
    goto :goto_1
.end method

.method public static a(Lcom/twitter/model/core/ay;)Z
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/twitter/model/core/ay;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->b:J

    iget-wide v2, p0, Lcom/twitter/model/core/ay;->r:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/ay;J)Z
    .locals 5

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/twitter/model/core/ay;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->b:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/Tweet;J)Z
    .locals 5

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->b:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->B:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lciz;->m(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1}, Lciz;->c(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v3

    .line 95
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/ay;)Z
    .locals 4

    .prologue
    .line 144
    invoke-static {p0}, Lciz;->a(Lcom/twitter/model/core/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-wide v2, p0, Lcom/twitter/model/core/ay;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bm;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Lcom/twitter/model/core/ay;)Lcom/twitter/model/core/av;
    .locals 4

    .prologue
    .line 183
    invoke-static {p0}, Lciz;->b(Lcom/twitter/model/core/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->b(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/core/ay;->b:J

    .line 186
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/aw;->a(J)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/twitter/model/core/aw;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-wide v2, p0, Lcom/twitter/model/core/ay;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bm;->b(J)Lcom/twitter/model/core/av;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/model/core/Tweet;J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v5

    .line 225
    const/4 v0, 0x0

    .line 228
    new-instance v1, Lcom/twitter/model/core/bf;

    iget-object v2, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 229
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 232
    :goto_0
    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->b:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_9

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->b:J

    iget-wide v6, p0, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_9

    .line 236
    new-instance v1, Lcom/twitter/model/core/bf;

    iget-object v2, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 243
    :cond_0
    :goto_1
    iget-object v0, v5, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 244
    iget-wide v6, v0, Lcom/twitter/model/core/av;->c:J

    cmp-long v3, v6, p1

    if-eqz v3, :cond_1

    .line 245
    invoke-static {v0}, Lcom/twitter/model/core/bf;->a(Lcom/twitter/model/core/av;)Lcom/twitter/model/core/bf;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    :cond_2
    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->b:J

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    invoke-virtual {v0}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_4

    .line 252
    new-instance v2, Lcom/twitter/model/core/bf;

    iget-object v3, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-wide v6, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_4
    iget-object v0, v5, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcuk;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    .line 259
    iget-wide v6, v0, Lcom/twitter/model/core/am;->b:J

    cmp-long v3, p1, v6

    if-eqz v3, :cond_5

    .line 260
    invoke-static {v0}, Lcom/twitter/model/core/bf;->a(Lcom/twitter/model/core/am;)Lcom/twitter/model/core/bf;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    invoke-virtual {v0, p1, p2, v4}, Lcom/twitter/model/core/ay;->a(JLjava/util/Set;)V

    .line 270
    :cond_7
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static c(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lciz;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lciz;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/Tweet;)Z
    .locals 4

    .prologue
    .line 105
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->q:J

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->q:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/twitter/model/core/Tweet;J)[J
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 288
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 289
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v3

    .line 292
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, v3, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 295
    iget v4, v0, Lcom/twitter/model/core/av;->g:I

    if-gtz v4, :cond_0

    iget-wide v4, v0, Lcom/twitter/model/core/av;->c:J

    iget-wide v6, p0, Lcom/twitter/model/core/Tweet;->A:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 296
    iget-wide v4, v0, Lcom/twitter/model/core/av;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    iget-object v0, v3, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 310
    iget-wide v6, v0, Lcom/twitter/model/core/av;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, v3, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcuk;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    .line 316
    iget-wide v4, v0, Lcom/twitter/model/core/am;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_4

    .line 322
    invoke-virtual {v0}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_4

    .line 324
    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 332
    const/16 v0, 0x32

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 333
    new-array v4, v3, [J

    .line 334
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 335
    :goto_2
    if-ge v1, v3, :cond_5

    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 335
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 338
    :cond_5
    return-object v4
.end method

.method public static e(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/twitter/model/core/Tweet;)Z
    .locals 2

    .prologue
    .line 57
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    iget v1, p0, Lcom/twitter/model/core/Tweet;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x23

    iget v1, p0, Lcom/twitter/model/core/Tweet;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x24

    iget v1, p0, Lcom/twitter/model/core/Tweet;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x25

    iget v1, p0, Lcom/twitter/model/core/Tweet;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1c

    iget v1, p0, Lcom/twitter/model/core/Tweet;->f:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 109
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lcom/twitter/model/core/Tweet;)Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->t()Z

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/twitter/model/core/Tweet;)Z
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->A:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Lcom/twitter/model/core/Tweet;)Z
    .locals 4

    .prologue
    .line 140
    invoke-static {p0}, Lciz;->j(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bm;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/core/av;
    .locals 4

    .prologue
    .line 167
    invoke-static {p0}, Lciz;->k(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->b(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 170
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/aw;->a(J)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/twitter/model/core/aw;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->A:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bm;->b(J)Lcom/twitter/model/core/av;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Lcom/twitter/model/core/Tweet;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    const-string/jumbo v2, "ad_formats_no_screen_name_ads_favorites_android_4822"

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "favorites_enabled"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 206
    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ab()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ab()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
