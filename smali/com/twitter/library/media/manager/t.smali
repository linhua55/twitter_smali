.class public abstract Lcom/twitter/library/media/manager/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQ:",
        "Lcom/twitter/media/request/g;",
        "RES:",
        "Ljava/lang/Object;",
        "RESP:",
        "Lcom/twitter/media/request/ResourceResponse",
        "<TREQ;TRES;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/twitter/util/collection/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/q",
            "<",
            "Ljava/lang/String;",
            "TRES;>;"
        }
    .end annotation
.end field

.field protected final c:Ldbd;

.field protected final d:Ldbd;

.field protected final e:Landroid/os/HandlerThread;

.field protected f:Lcom/twitter/library/media/manager/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/media/manager/v",
            "<TREQ;TRES;TRESP;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            "Laxu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/collection/q;Ldbd;Ldbd;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/HandlerThread;",
            "Lcom/twitter/util/collection/q",
            "<",
            "Ljava/lang/String;",
            "TRES;>;",
            "Ldbd;",
            "Ldbd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/library/media/manager/t;->a:Landroid/content/Context;

    .line 100
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    .line 101
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    .line 102
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    .line 103
    iput-object p3, p0, Lcom/twitter/library/media/manager/t;->e:Landroid/os/HandlerThread;

    .line 106
    invoke-static {}, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->values()[Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    move-result-object v9

    .line 107
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v9

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/twitter/library/media/manager/t;->g:Ljava/util/Map;

    .line 108
    invoke-static {}, Layj;->b()Layj;

    move-result-object v3

    .line 109
    array-length v10, v9

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v11, v9, v8

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "media:fetcher:source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    const-wide/16 v4, 0x0

    sget-object v6, Laxz;->n:Laye;

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Laxu;->a(Ljava/lang/String;Layj;JLaye;I)Laxu;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Laxu;->i()V

    .line 115
    iget-object v4, p0, Lcom/twitter/library/media/manager/t;->g:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/twitter/media/request/g;Ljava/lang/Object;Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/ResourceResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;TRES;",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            ")TRESP;"
        }
    .end annotation
.end method

.method public a()Lcom/twitter/util/collection/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/collection/q",
            "<",
            "Ljava/lang/String;",
            "TRES;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    return-object v0
.end method

.method public a(Lcom/twitter/media/request/g;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 329
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;",
            "Ljava/io/File;",
            ")TRES;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TRES;)TRES;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    .line 266
    invoke-interface {v0, p1, p2}, Lcom/twitter/util/collection/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Lcom/twitter/library/media/manager/ah;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/media/manager/ah;-><init>(Lcom/twitter/library/media/manager/t;Ljava/util/Collection;)V

    .line 222
    iget-object v1, p0, Lcom/twitter/library/media/manager/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxu;

    invoke-virtual {v0}, Laxu;->f()V

    .line 363
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    invoke-interface {v0}, Lcom/twitter/util/collection/q;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    invoke-interface {v2, v0}, Lcom/twitter/util/collection/q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    invoke-virtual {v0, p1, p2}, Ldbd;->a(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/media/request/g;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;TRES;)Z"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 335
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    if-eqz v0, :cond_0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/media/manager/u;

    invoke-direct {v2, p0, p1}, Lcom/twitter/library/media/manager/u;-><init>(Lcom/twitter/library/media/manager/t;Lcom/twitter/media/request/g;)V

    invoke-virtual {v0, v1, p2, v2}, Ldbd;->a(Ljava/lang/String;Ljava/lang/Object;Ldbg;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/request/g;Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;TRES;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;)Z"
        }
    .end annotation
.end method

.method protected declared-synchronized b()Lcom/twitter/library/media/manager/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/media/manager/v",
            "<TREQ;TRES;TRESP;>;"
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->f:Lcom/twitter/library/media/manager/v;

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/twitter/library/media/manager/v;

    iget-object v2, p0, Lcom/twitter/library/media/manager/t;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcom/twitter/library/media/manager/v;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/twitter/library/media/manager/t;)V

    iput-object v1, p0, Lcom/twitter/library/media/manager/t;->f:Lcom/twitter/library/media/manager/v;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->f:Lcom/twitter/library/media/manager/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/twitter/media/request/g;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 322
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;",
            "Ljava/io/File;",
            ")TRES;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method c(Lcom/twitter/media/request/g;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 283
    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/g;)Ljava/io/File;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->c:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/t;->b(Lcom/twitter/media/request/g;)Ljava/io/File;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_1

    .line 289
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->d:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/twitter/media/request/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->e:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/ap;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_3

    .line 298
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->e:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->f:Lcom/twitter/library/media/manager/v;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->f:Lcom/twitter/library/media/manager/v;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/v;->a()Ljava/util/concurrent/Future;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    invoke-virtual {v0}, Ldbd;->close()V

    .line 125
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    invoke-virtual {v0}, Ldbd;->close()V

    .line 128
    :cond_1
    return-void
.end method

.method public d(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)",
            "Lcom/twitter/util/concurrent/j",
            "<TRESP;>;"
        }
    .end annotation

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/t;->b()Lcom/twitter/library/media/manager/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Lcom/twitter/media/request/g;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)TRES;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    invoke-interface {v0, v1}, Lcom/twitter/util/collection/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, v0}, Lcom/twitter/library/media/manager/t;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    invoke-interface {v0, v1}, Lcom/twitter/util/collection/q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    const-string/jumbo v2, "Resource Request Key"

    .line 155
    invoke-virtual {v0, v2, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cached resource was unexpectedly invalidated by external code. For bitmaps, do not call Bitmap.recycle() on images returned by MediaManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(Lcom/twitter/media/request/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 307
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->d:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbd;->d(Ljava/lang/String;)Z

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->b:Lcom/twitter/util/collection/q;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/util/collection/q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbd;->d(Ljava/lang/String;)Z

    .line 316
    :cond_2
    return-void
.end method
