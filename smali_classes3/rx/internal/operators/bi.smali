.class public final Lrx/internal/operators/bi;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final i:Ljava/lang/Object;


# instance fields
.field final a:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<-",
            "Ldkx",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final b:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/bj",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldkx",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final h:Lrx/internal/operators/bh;

.field final j:Lrx/internal/producers/a;

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final l:Ljava/util/concurrent/atomic/AtomicLong;

.field final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field n:Ljava/lang/Throwable;

.field volatile o:Z

.field final p:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/bi;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/ao;Ldjj;Ldjj;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ldkx",
            "<TK;TV;>;>;",
            "Ldjj",
            "<-TT;+TK;>;",
            "Ldjj",
            "<-TT;+TV;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 121
    iput-object p1, p0, Lrx/internal/operators/bi;->a:Lrx/ao;

    .line 122
    iput-object p2, p0, Lrx/internal/operators/bi;->b:Ldjj;

    .line 123
    iput-object p3, p0, Lrx/internal/operators/bi;->c:Ldjj;

    .line 124
    iput p4, p0, Lrx/internal/operators/bi;->d:I

    .line 125
    iput-boolean p5, p0, Lrx/internal/operators/bi;->e:Z

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->g:Ljava/util/Queue;

    .line 128
    new-instance v0, Lrx/internal/producers/a;

    invoke-direct {v0}, Lrx/internal/producers/a;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->j:Lrx/internal/producers/a;

    .line 129
    iget-object v0, p0, Lrx/internal/operators/bi;->j:Lrx/internal/producers/a;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 130
    new-instance v0, Lrx/internal/operators/bh;

    invoke-direct {v0, p0}, Lrx/internal/operators/bh;-><init>(Lrx/internal/operators/bi;)V

    iput-object v0, p0, Lrx/internal/operators/bi;->h:Lrx/internal/operators/bh;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bi;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0}, Ldlm;->b()Ldlj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/bi;->n:Ljava/lang/Throwable;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    .line 204
    iget-object v0, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 205
    invoke-virtual {p0}, Lrx/internal/operators/bi;->e()V

    goto :goto_0
.end method

.method a(Lrx/ao;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ldkx",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    iget-object v1, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/bj;

    .line 313
    invoke-virtual {v0, p3}, Lrx/internal/operators/bj;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1, p3}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lrx/internal/operators/bi;->j:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/s;)V

    .line 140
    return-void
.end method

.method a(ZZLrx/ao;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/ao",
            "<-",
            "Ldkx",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 321
    if-eqz p1, :cond_1

    .line 322
    iget-object v1, p0, Lrx/internal/operators/bi;->n:Ljava/lang/Throwable;

    .line 323
    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0, p3, p4, v1}, Lrx/internal/operators/bi;->a(Lrx/ao;Ljava/util/Queue;Ljava/lang/Throwable;)V

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    if-eqz p2, :cond_1

    .line 328
    iget-object v1, p0, Lrx/internal/operators/bi;->a:Lrx/ao;

    invoke-virtual {v1}, Lrx/ao;->bt_()V

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/bi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 230
    invoke-virtual {p0}, Lrx/internal/operators/bi;->e()V

    .line 231
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p1, :cond_1

    .line 245
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/bi;->R_()V

    .line 250
    :cond_0
    return-void

    .line 244
    :cond_1
    sget-object p1, Lrx/internal/operators/bi;->i:Ljava/lang/Object;

    goto :goto_0
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/bi;->g:Ljava/util/Queue;

    .line 149
    iget-object v5, p0, Lrx/internal/operators/bi;->a:Lrx/ao;

    .line 153
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/bi;->b:Ldjj;

    invoke-interface {v0, p1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 160
    const/4 v3, 0x1

    .line 161
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 162
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/bj;

    .line 163
    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lrx/internal/operators/bi;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Lrx/internal/operators/bi;->d:I

    iget-boolean v3, p0, Lrx/internal/operators/bi;->e:Z

    invoke-static {v2, v0, p0, v3}, Lrx/internal/operators/bj;->a(Ljava/lang/Object;ILrx/internal/operators/bi;Z)Lrx/internal/operators/bj;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 172
    const/4 v1, 0x0

    .line 173
    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lrx/internal/operators/bi;->e()V

    .line 182
    :goto_2
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/bi;->c:Ldjj;

    invoke-interface {v2, p1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Lrx/internal/operators/bj;->a(Ljava/lang/Object;)V

    .line 191
    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lrx/internal/operators/bi;->j:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/bi;->R_()V

    .line 156
    invoke-virtual {p0, v5, v4, v0}, Lrx/internal/operators/bi;->a(Lrx/ao;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    :cond_2
    sget-object v0, Lrx/internal/operators/bi;->i:Ljava/lang/Object;

    move-object v1, v0

    goto :goto_1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/bi;->R_()V

    .line 185
    invoke-virtual {p0, v5, v4, v0}, Lrx/internal/operators/bi;->a(Lrx/ao;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public bt_()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/bj;

    .line 215
    invoke-virtual {v0}, Lrx/internal/operators/bj;->a()V

    goto :goto_1

    .line 217
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/bi;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    .line 220
    iget-object v0, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 221
    invoke-virtual {p0}, Lrx/internal/operators/bi;->e()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lrx/internal/operators/bi;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lrx/internal/operators/bi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lrx/internal/operators/bi;->R_()V

    .line 241
    :cond_0
    return-void
.end method

.method e()V
    .locals 12

    .prologue
    .line 253
    iget-object v0, p0, Lrx/internal/operators/bi;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x1

    .line 259
    iget-object v8, p0, Lrx/internal/operators/bi;->g:Ljava/util/Queue;

    .line 260
    iget-object v9, p0, Lrx/internal/operators/bi;->a:Lrx/ao;

    move v1, v0

    .line 264
    :goto_0
    iget-boolean v0, p0, Lrx/internal/operators/bi;->o:Z

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, v0, v2, v9, v8}, Lrx/internal/operators/bi;->a(ZZLrx/ao;Ljava/util/Queue;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lrx/internal/operators/bi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 269
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v6, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 270
    :goto_1
    const-wide/16 v4, 0x0

    .line 272
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    .line 273
    iget-boolean v10, p0, Lrx/internal/operators/bi;->o:Z

    .line 275
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkx;

    .line 277
    if-nez v0, :cond_6

    const/4 v3, 0x1

    .line 279
    :goto_3
    invoke-virtual {p0, v10, v3, v9, v8}, Lrx/internal/operators/bi;->a(ZZLrx/ao;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 283
    if-eqz v3, :cond_7

    .line 293
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 294
    if-nez v2, :cond_3

    .line 295
    iget-object v0, p0, Lrx/internal/operators/bi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 297
    :cond_3
    iget-object v0, p0, Lrx/internal/operators/bi;->j:Lrx/internal/producers/a;

    neg-long v2, v4

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 300
    :cond_4
    iget-object v0, p0, Lrx/internal/operators/bi;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 301
    if-eqz v0, :cond_0

    move v1, v0

    .line 304
    goto :goto_0

    .line 269
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 277
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 287
    :cond_7
    invoke-virtual {v9, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 289
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 290
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 291
    goto :goto_2
.end method
