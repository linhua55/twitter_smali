.class public Lcom/twitter/library/provider/s;
.super Lbak;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/provider/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/twitter/database/schema/DraftsSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/provider/s;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "drafts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lbak;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->b()V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->c()V

    .line 84
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;
    .locals 5

    .prologue
    .line 71
    const-class v1, Lcom/twitter/library/provider/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/provider/s;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/s;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/twitter/library/provider/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/twitter/library/provider/s;-><init>(Landroid/content/Context;J)V

    .line 74
    sget-object v2, Lcom/twitter/library/provider/s;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Lrx/o",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/twitter/library/provider/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/provider/u;-><init>(Landroid/content/Context;J)V

    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    .line 212
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 200
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 185
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 187
    if-ne p1, v4, :cond_0

    .line 188
    const-string/jumbo v0, "sending_state=?"

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v2

    const-class v3, Lcom/twitter/database/schema/c;

    invoke-interface {v2, v3}, Lcom/twitter/database/schema/DraftsSchema;->b(Ljava/lang/Class;)Lcom/twitter/database/model/q;

    move-result-object v2

    .line 195
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v0, v3}, Lcom/twitter/database/model/q;->b(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 190
    const-string/jumbo v0, "sending_state!=?"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 192
    goto :goto_1
.end method

.method public a(Lcom/twitter/model/drafts/d;ILcom/twitter/library/provider/b;)J
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v0

    const-class v1, Lcom/twitter/database/schema/e;

    .line 129
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/DraftsSchema;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v2

    .line 130
    iget-object v0, v2, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/database/schema/f;

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Ljava/lang/String;)Lcom/twitter/database/schema/f;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/twitter/database/schema/f;->b(J)Lcom/twitter/database/schema/f;

    move-result-object v0

    .line 132
    invoke-interface {v0, p2}, Lcom/twitter/database/schema/f;->a(I)Lcom/twitter/database/schema/f;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    .line 134
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/twitter/database/schema/f;->a(Ljava/util/List;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->h:Lcss;

    .line 135
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Lcss;)Lcom/twitter/database/schema/f;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/twitter/model/drafts/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->b(Ljava/util/List;)Lcom/twitter/database/schema/f;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/twitter/model/drafts/d;->a()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/twitter/database/schema/f;->c(J)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    .line 138
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Lcom/twitter/model/geo/g;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->j:Ljava/lang/String;

    .line 139
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->b(Ljava/lang/String;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->k:Lclp;

    .line 140
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Lclp;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-boolean v1, p1, Lcom/twitter/model/drafts/d;->f:Z

    .line 141
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Z)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->l:Ljava/util/List;

    .line 142
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->c(Ljava/util/List;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->m:Lcom/twitter/model/timeline/cx;

    .line 143
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->n:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->c(Ljava/lang/String;)Lcom/twitter/database/schema/f;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    .line 145
    invoke-interface {v0, v1}, Lcom/twitter/database/schema/f;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/database/schema/f;

    .line 147
    iget-wide v0, p1, Lcom/twitter/model/drafts/d;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 148
    iget-wide v0, p1, Lcom/twitter/model/drafts/d;->b:J

    .line 149
    const-string/jumbo v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    iget-wide v6, p1, Lcom/twitter/model/drafts/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/twitter/database/model/k;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "failed to update draft tweet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 156
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 157
    new-array v2, v9, [Landroid/net/Uri;

    sget-object v3, Lcom/twitter/library/provider/cy;->a:Landroid/net/Uri;

    aput-object v3, v2, v8

    invoke-virtual {p3, v2}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 159
    :cond_1
    return-wide v0

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, v2, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/database/schema/f;

    iget-wide v4, p1, Lcom/twitter/model/drafts/d;->e:J

    invoke-interface {v0, v4, v5}, Lcom/twitter/database/schema/f;->a(J)Lcom/twitter/database/schema/f;

    .line 154
    invoke-virtual {v2}, Lcom/twitter/database/model/k;->b()J

    move-result-wide v0

    goto :goto_1
.end method

.method public a(J)Lcom/twitter/model/drafts/d;
    .locals 5

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/database/hydrator/f;->a(Lcom/twitter/database/model/l;)Lcom/twitter/database/hydrator/f;

    move-result-object v0

    const-class v1, Lcom/twitter/database/schema/a;

    new-instance v2, Lcom/twitter/database/model/i;

    invoke-direct {v2}, Lcom/twitter/database/model/i;-><init>()V

    const-string/jumbo v3, "_id"

    .line 121
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v2

    const-class v3, Lcom/twitter/model/drafts/d;

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/database/hydrator/f;->a(Ljava/lang/Class;Lcom/twitter/database/model/g;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    return-object v0
.end method

.method public a(JILcom/twitter/library/provider/b;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v0

    .line 243
    const-class v3, Lcom/twitter/database/schema/c;

    invoke-interface {v0, v3}, Lcom/twitter/database/model/l;->b(Ljava/lang/Class;)Lcom/twitter/database/model/q;

    move-result-object v3

    .line 244
    const-class v4, Lcom/twitter/database/schema/e;

    .line 245
    invoke-interface {v0, v4}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v4

    .line 246
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    :try_start_0
    const-string/jumbo v0, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v0, v6}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 251
    :try_start_1
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/database/schema/d;

    invoke-interface {v0}, Lcom/twitter/database/schema/d;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 253
    if-ne v0, p3, :cond_1

    move v0, v1

    .line 265
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 267
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    return v0

    .line 256
    :cond_1
    :try_start_3
    iget-object v0, v4, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/database/schema/f;

    invoke-interface {v0, p3}, Lcom/twitter/database/schema/f;->a(I)Lcom/twitter/database/schema/f;

    .line 257
    const-string/jumbo v0, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v0, v6}, Lcom/twitter/database/model/k;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 258
    if-lez v0, :cond_2

    move v0, v1

    .line 259
    :goto_1
    if-eqz p4, :cond_0

    .line 260
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v4, Lcom/twitter/library/provider/cy;->a:Landroid/net/Uri;

    aput-object v4, v1, v2

    invoke-virtual {p4, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move v0, v2

    .line 258
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public a(JLcom/twitter/library/provider/b;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 166
    new-array v0, v1, [Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/provider/s;->a(J)Lcom/twitter/model/drafts/d;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_3

    .line 169
    if-eqz p4, :cond_0

    .line 170
    invoke-virtual {v3}, Lcom/twitter/model/drafts/d;->c()V

    .line 172
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 173
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v3

    const-class v4, Lcom/twitter/database/schema/e;

    .line 174
    invoke-interface {v3, v4}, Lcom/twitter/database/schema/DraftsSchema;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v3

    .line 175
    const-string/jumbo v4, "_id=?"

    invoke-interface {v3, v4, v0}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 177
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 178
    new-array v1, v1, [Landroid/net/Uri;

    sget-object v3, Lcom/twitter/library/provider/cy;->a:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 180
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 175
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public synthetic bn_()Lcom/twitter/database/model/l;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/twitter/database/schema/DraftsSchema;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/library/provider/s;->b:Lcom/twitter/database/schema/DraftsSchema;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/twitter/library/provider/t;

    invoke-direct {v0, p0}, Lcom/twitter/library/provider/t;-><init>(Lcom/twitter/library/provider/s;)V

    invoke-static {v0}, Lcom/twitter/util/h;->a(Lcom/twitter/util/concurrent/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/DraftsSchema;

    iput-object v0, p0, Lcom/twitter/library/provider/s;->b:Lcom/twitter/database/schema/DraftsSchema;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/provider/s;->b:Lcom/twitter/database/schema/DraftsSchema;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/DraftsSchema;

    return-object v0
.end method

.method public e()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v1

    const-class v2, Lcom/twitter/database/schema/c;

    invoke-interface {v1, v2}, Lcom/twitter/database/schema/DraftsSchema;->b(Ljava/lang/Class;)Lcom/twitter/database/model/q;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "sending_state=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x2

    .line 222
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 221
    invoke-interface {v1, v2, v3}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->a()I

    move-result v1

    new-array v3, v1, [J

    move v1, v0

    .line 226
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/database/schema/d;

    invoke-interface {v0}, Lcom/twitter/database/schema/d;->a()J

    move-result-wide v4

    aput-wide v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    .line 233
    return-object v3

    .line 231
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 105
    const-class v0, Lcom/twitter/database/schema/DraftsSchema;

    new-instance v1, Lbaw;

    invoke-direct {v1, p1}, Lbaw;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v1}, Lcom/twitter/database/model/m;->a(Ljava/lang/Class;Lcom/twitter/database/model/b;)Lcom/twitter/database/model/l;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcom/twitter/database/model/l;->g()V

    .line 107
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 111
    const-class v0, Lcom/twitter/database/schema/DraftsSchema;

    new-instance v1, Lbaw;

    invoke-direct {v1, p1}, Lbaw;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v1}, Lcom/twitter/database/model/o;->a(Ljava/lang/Class;Lcom/twitter/database/model/b;)Lcom/twitter/database/model/n;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/twitter/library/provider/v;

    invoke-direct {v1, v0, p1}, Lcom/twitter/library/provider/v;-><init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/provider/v;->a(II)V

    .line 114
    return-void
.end method
