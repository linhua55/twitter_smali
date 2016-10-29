.class public Lcom/twitter/android/revenue/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavg",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field volatile a:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/android/revenue/c;

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/twitter/android/revenue/j;

.field private final i:F

.field private j:J

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/revenue/d;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/twitter/android/revenue/j;

    invoke-static {p1, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/revenue/j;-><init>(Lcom/twitter/library/provider/dm;)V

    invoke-direct {p0, v0}, Lcom/twitter/android/revenue/d;-><init>(Lcom/twitter/android/revenue/j;)V

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/twitter/android/revenue/j;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/d;->a:Z

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/d;->g:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/twitter/android/revenue/c;

    invoke-direct {v0}, Lcom/twitter/android/revenue/c;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/revenue/d;->f:Lcom/twitter/android/revenue/c;

    .line 104
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    .line 106
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/d;->d:Ljava/util/Set;

    .line 107
    iput-object p1, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "ad_formats_stale_ads_deduping_timeout"

    const-wide/16 v2, 0x78

    .line 109
    invoke-static {v1, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/twitter/android/revenue/d;->i:F

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/twitter/android/revenue/a;
    .locals 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 162
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 166
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->d()Z

    move-result v1

    move v3, v1

    .line 169
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PriorityQueue;

    .line 170
    iget-object v2, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    sget-object v4, Lcom/twitter/android/revenue/d;->e:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/PriorityQueue;

    .line 172
    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    move-object v1, v0

    .line 184
    :goto_2
    if-nez p2, :cond_2

    .line 186
    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/revenue/j;->a(J)Ljava/util/concurrent/Future;

    .line 191
    :cond_1
    invoke-virtual {v1, p1}, Lcom/twitter/android/revenue/a;->a(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/revenue/a;->a(J)V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/j;->a(Lcom/twitter/android/revenue/a;)Ljava/util/concurrent/Future;

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_0

    .line 166
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 174
    :cond_4
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 175
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/revenue/a;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/revenue/a;

    goto :goto_2

    .line 176
    :cond_6
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 177
    if-eqz p2, :cond_7

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/revenue/a;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/revenue/a;

    goto :goto_2

    .line 178
    :cond_8
    if-eqz v0, :cond_9

    move-object v1, v0

    .line 179
    goto :goto_2

    .line 181
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Iterable;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 277
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 278
    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_1
    iget-wide v4, v0, Lcom/twitter/android/revenue/a;->c:J

    cmp-long v1, v4, p2

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/twitter/android/revenue/a;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/twitter/android/revenue/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/util/PriorityQueue;

    invoke-direct {v4}, Ljava/util/PriorityQueue;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/twitter/android/revenue/a;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_3
    return-void
.end method

.method private b(Ljava/util/List;J)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/twitter/android/revenue/g;

    invoke-direct {v0, p2, p3}, Lcom/twitter/android/revenue/g;-><init>(J)V

    .line 257
    invoke-static {v0}, Lczo;->a(Ldau;)Ldau;

    move-result-object v1

    .line 258
    invoke-static {p1, v0}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    .line 259
    new-instance v2, Lcom/twitter/android/revenue/f;

    iget v3, p0, Lcom/twitter/android/revenue/d;->i:F

    invoke-direct {v2, v0, v3}, Lcom/twitter/android/revenue/f;-><init>(Ljava/lang/Iterable;F)V

    .line 261
    invoke-static {p1, v1}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    .line 262
    invoke-static {v0, v2}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v1, v0, p2, p3}, Lcom/twitter/android/revenue/j;->a(Ljava/util/List;J)Ljava/util/concurrent/Future;

    .line 266
    invoke-static {p1}, Lcom/twitter/util/collection/MutableSet;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 267
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 269
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/twitter/android/revenue/d;->k:I

    iget-object v1, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/revenue/a;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    return-object v0
.end method

.method a(Ljava/util/List;J)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 238
    iget-wide v4, v0, Lcom/twitter/android/revenue/a;->c:J

    cmp-long v3, v4, p2

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/twitter/android/revenue/a;->d:Ljava/lang/String;

    .line 240
    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/revenue/j;->b(J)Ljava/util/concurrent/Future;

    .line 246
    return-object v1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/twitter/android/revenue/d;->k:I

    .line 124
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/d;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/d;->a(Ljava/util/List;)V

    .line 208
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/provider/dm;Lavh;)V
    .locals 4

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/twitter/android/revenue/d;->a:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/revenue/j;->a(Lcom/twitter/library/provider/dm;Lavh;)Landroid/database/Cursor;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/revenue/d;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/twitter/android/revenue/d;->g:Landroid/os/Handler;

    new-instance v3, Lcom/twitter/android/revenue/e;

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/revenue/e;-><init>(Lcom/twitter/android/revenue/d;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {v1}, Ldbt;->a(Landroid/database/Cursor;)V

    .line 341
    :cond_0
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ldbt;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/d;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/twitter/android/revenue/d;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    const-wide/16 v0, -0x1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 216
    iget-wide v0, v0, Lcom/twitter/android/revenue/a;->c:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 217
    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Lcom/twitter/android/revenue/d;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/revenue/d;->b(Ljava/util/List;J)Ljava/lang/Iterable;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/revenue/d;->a(Ljava/lang/Iterable;J)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/revenue/d;->a:Z

    .line 227
    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/twitter/android/revenue/d;->j:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/revenue/d;->a(Ljava/lang/String;Z)Lcom/twitter/android/revenue/a;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->f:Lcom/twitter/android/revenue/c;

    invoke-virtual {v1, p1}, Lcom/twitter/android/revenue/c;->a(Landroid/database/Cursor;)Lcom/twitter/android/revenue/a;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    :cond_2
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/android/revenue/a;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/revenue/d;->a(Ljava/lang/String;Z)Lcom/twitter/android/revenue/a;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/d;->a:Z

    .line 313
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/revenue/d;->j:J

    .line 314
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/revenue/j;->a(J)Ljava/util/concurrent/Future;

    .line 349
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/twitter/android/revenue/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/a;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/revenue/a;->a(J)V

    .line 360
    iget-object v1, p0, Lcom/twitter/android/revenue/d;->h:Lcom/twitter/android/revenue/j;

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/j;->a(Lcom/twitter/android/revenue/a;)Ljava/util/concurrent/Future;

    .line 362
    :cond_0
    return-void
.end method
