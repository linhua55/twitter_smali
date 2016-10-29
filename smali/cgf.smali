.class public Lcgf;
.super Landroid/database/CursorWrapper;
.source "Twttr"


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:J

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:Landroid/database/Cursor;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbnt;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/library/provider/dm;

.field private final j:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;JLandroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 44
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcgf;->f:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcgf;->g:Ljava/util/Map;

    .line 46
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcgf;->h:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcgf;->a:Landroid/database/Cursor;

    .line 55
    iput-wide p2, p0, Lcgf;->b:J

    .line 56
    iput-object p4, p0, Lcgf;->c:Landroid/content/Context;

    .line 57
    iput-object p5, p0, Lcgf;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcgf;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcgf;->b:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lcgf;->i:Lcom/twitter/library/provider/dm;

    .line 59
    iput-boolean p6, p0, Lcgf;->j:Z

    .line 60
    invoke-direct {p0}, Lcgf;->p()V

    .line 61
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcgf;->i:Lcom/twitter/library/provider/dm;

    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->a([J)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 145
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 149
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v6

    .line 153
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v7

    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcgf;->b:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    .line 157
    const/4 v4, 0x1

    move v1, v4

    :goto_3
    move v4, v1

    .line 166
    goto :goto_2

    .line 159
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterUser;

    .line 160
    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v6, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move v1, v4

    goto :goto_3

    .line 163
    :cond_2
    invoke-virtual {v7, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move v1, v4

    goto :goto_3

    .line 168
    :cond_3
    iget-wide v8, p0, Lcgf;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 169
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {v6, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 174
    :cond_4
    :goto_4
    iget-object v1, p0, Lcgf;->f:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcgf;->g:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 171
    :cond_5
    if-nez v1, :cond_4

    .line 172
    iget-wide v8, p0, Lcgf;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_4

    .line 177
    :cond_6
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcgf;->s()V

    .line 84
    invoke-direct {p0}, Lcgf;->r()V

    .line 85
    iget-boolean v0, p0, Lcgf;->j:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcgf;->q()V

    .line 88
    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcgf;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lcgf;->i:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcgf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnt;

    .line 95
    iget-object v2, p0, Lcgf;->h:Ljava/util/Map;

    iget-object v3, v0, Lbnt;->a:Lcom/twitter/model/dms/b;

    iget-object v3, v3, Lcom/twitter/model/dms/b;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private r()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 100
    iget-object v0, p0, Lcgf;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    iget-object v0, p0, Lcgf;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v6

    .line 103
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v7

    .line 104
    sget-object v0, Lcom/twitter/library/provider/ct;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcgf;->b:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcgf;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcgf;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcht;->a:[Ljava/lang/String;

    const-string/jumbo v3, "conversation_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v8, p0, Lcgf;->d:Ljava/lang/String;

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    .line 116
    :goto_0
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 118
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcgf;->e:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 123
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcgf;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcgf;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcht;->a:[Ljava/lang/String;

    move-object v3, v5

    move-object v4, v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_3
    invoke-virtual {v6}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0, v7}, Lcgf;->a(Ljava/util/Set;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcgf;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/database/dm/d;
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 65
    new-instance v0, Lcom/twitter/library/database/dm/f;

    invoke-direct {v0}, Lcom/twitter/library/database/dm/f;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcgf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->a(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcgf;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/database/dm/f;->a(J)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcgf;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->b(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcgf;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->c(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcgf;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->d(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v1

    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v2, 0x4

    .line 71
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/database/dm/f;->a(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v2

    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    .line 72
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/database/dm/f;->b(J)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcgf;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->b(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcgf;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->a(Ljava/util/List;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcgf;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->c(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcgf;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->d(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcgf;->d()Lbnt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->a(Lbnt;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/twitter/library/database/dm/f;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/d;

    .line 65
    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    .line 73
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 2
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
    .line 181
    iget-object v0, p0, Lcgf;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcgf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 182
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcgf;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcgf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 278
    invoke-direct {p0}, Lcgf;->s()V

    .line 279
    return-void
.end method

.method public d()Lbnt;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcgf;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lcgf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnt;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    .prologue
    .line 208
    invoke-virtual {p0}, Lcgf;->f()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcgf;->c:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Lcgf;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcgf;->j()Z

    move-result v2

    iget-wide v4, p0, Lcgf;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lbnx;->a(Landroid/content/Context;Ljava/util/List;ZJ)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcgf;->b()Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcgf;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 230
    iget-object v1, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcgf;->b()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Lcom/twitter/model/dms/cu;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcgf;->a:Landroid/database/Cursor;

    const/16 v1, 0x9

    .line 253
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/dms/cu;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cu;

    .line 252
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcgf;->b()Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/database/CursorWrapper;->requery()Z

    move-result v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcgf;->p()V

    .line 272
    :cond_0
    return v0
.end method
